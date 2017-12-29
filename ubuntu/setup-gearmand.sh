#!/bin/sh

sudo apt-get update
sudo apt-get install -y uuid-dev libevent-dev gperf libboost-all-dev php7.0-dev

cd /tmp
wget https://github.com/gearman/gearmand/releases/download/1.1.18/gearmand-1.1.18.tar.gz
tar xfz gearmand-1.1.18.tar.gz
cd -

cd /tmp/gearmand-1.1.18/
./configure
make
sudo make install
cd -

cd /tmp
wget https://github.com/wcgallego/pecl-gearman/archive/master.zip
unzip master.zip
-

cd /tmp/pecl-gearman-master/
phpize
./configure
make
sudo make install
cd -

cd /tmp
rm gearmand-1.1.18.tar.gz
rm -rf gearmand-1.1.18
rm master.zip
rm -rf pecl-gearman-master
cd -

exit 0
