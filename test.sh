#!/bin/bash
unzip $1.zip
if [ $? -ne 0 ]; then
    echo "[ERROR] ZIP File Error. Please fix it!"
    echo
    exit 1
fi
cd $1
if [ $? -ne 0 ]; then
    echo "[ERROR] The directory structure is not correct. Please fix it!"
    echo
    exit 1
fi
cd codebase
if [ $? -ne 0 ]; then
    echo "[ERROR] The directory structure is not correct. Please fix it!"
    echo
    exit 1
fi
cd rbf
if [ $? -ne 0 ]; then
    echo "[ERROR] The directory structure is not correct. Please fix it!"
    echo
    exit 1
fi
make clean
make
./rbftest1
./rbftest2
./rbftest3
./rbftest4
./rbftest5
./rbftest6
./rbftest7
./rbftest8
./rbftest8b
./rbftest9
./rbftest10
./rbftest11
./rbftest12
