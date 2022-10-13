#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos6 -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd carlos5 -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd carlos4 -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd carlos3 -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd carlos2 -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd carlos1 -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

useradd joselina  -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC


echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim...."



