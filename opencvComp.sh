#!/bin/bash
echo "Compilando el archivo $1"
if [[ $1 == *.c ]]
then
    gcc -ggdb `pkg-config --cflags opencv` -o `basename $1 .c` $1 `pkg-config --libs opencv`;
elif [[ $1 == *.cpp ]]
then
    g++ -ggdb `pkg-config --cflags opencv` -o `basename $1 .cpp` $1 `pkg-config --libs opencv`;
else
    echo "Error, sólo se pueden compilar arhivos .c o .cpp"
    exit;
fi
echo "Archivo de salida => ${1%.*}"