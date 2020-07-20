#!/bin/bash 
echo "DESCOMPRIMIENDO"
        # Para saber si existe el fichero .zip
        if [ "$(ls -A | grep -i \\.zip\$)" ];
        then
                echo "Existe fichero ZIP!";
                # Descomprime ZIP sin hacer verbose (-q) - sin mostrar mensajes
                unzip -q '*.zip';
                # Después de extraer el ZIP, lo borramos.
                rm -rf *.zip;
        else
                echo "No existe fichero .zip";
        fi