#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y git vim vim-nox
sudo apt-get install -y bind9-host binutils ca-certificates initramfs-tools libbind9-90 libc-bin libc-dev-bin libc6 libc6-dbg libc6-dev libdns-export100 libdns100 libgcrypt20 libgnutls-deb0-28 libgnutls-openssl27 libicu52 libirs-export91 libisc-export95 libisc95 libisccc90 libisccfg-export90 libisccfg90 libldap-2.4-2 liblwres90 libraspberrypi-bin libraspberrypi-dev libraspberrypi-doc libraspberrypi0 librtmp1 libsystemd0 libtasn1-6 libtirpc1 libudev1 libwbclient0 locales login multiarch-support passwd raspi-config rpcbind samba-common sudo systemd systemd-sysv tar tzdata udev unzip

mkdir .vim
cd .vim
mkdir backup tmp
cd ~
wget -O .vimrc https://wormtooth.com/files/vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

sudo apt-get install -y python-dev libxml2-dev libxslt1-dev zlib1g-dev
curl -O https://bootstrap.pypa.io/get-pip.py
sudo python ~/get-pip.py
sudo pip install requests lxml beautifulsoup4 autopep8
git clone git://github.com/kennethreitz/autoenv.git ~/.autoenv
echo 'source ~/.autoenv/activate.sh' >> ~/.bashrc

git clone https://github.com/andreafabrizi/Dropbox-Uploader.git ~/Dropbox-Uploader
cd ~/Dropbox-Uploader
chmod +x dropbox_uploader.sh
cd ~
echo 'alias dbx=/home/pi/Dropbox-Uploader/dropbox_uploader.sh' >> ~/.bashrc

rm pisetup.sh get-pip.py
