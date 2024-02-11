" COBOLMORPH
" cobolmorph.vim - Plugin de resaltado y funcionalidad para COBOL en Vim / NeoVim
" Autor: Pablo Huguet (Voodoo) https://linktr.ee/VoodooPablo
" Versi�n: 1.0.0
" Fecha de Creaci�n: 2024


" Copyright 2024 Pablo Huguet (Voodoo)

" Licenciado bajo la Licencia Apache, Versi�n 2.0 (la "Licencia");
" no puedes utilizar este archivo excepto en cumplimiento con la Licencia.
" Puedes obtener una copia de la Licencia en

"      http://www.apache.org/licenses/LICENSE-2.0

" A menos que sea requerido por la ley aplicable o acordado por escrito, el software
" se distribuye "TAL CUAL", SIN GARANT�AS NI CONDICIONES DE NING�N TIPO,
" ya sea expresa o impl�cita. Consulta la Licencia para el idioma espec�fico que rige
" los permisos y limitaciones bajo la Licencia.

" Puedes encontrar m�s informaci�n sobre el creador del plugin en el siguiente enlace:
" https://linktr.ee/VoodooPablo


"--------------------------------------------------------------------------------------


" Comando para iniciar el plugin
command! Morphstart :call Morphstart()

" Comando para detener el plugin
command! Morphstop :call Morphstop()

" Funci�n para iniciar el plugin
function! Morphstart()

  echo "COBOLMorph Enabled."
  " Activa el n�mero de l�nea
  set number

  " Crea l�neas verticales en las columnas 6, 7, 12 y 72
  highlight VimCOBOLLine1 ctermbg=NONE cterm=NONE ctermfg=NONE guibg=NONE gui=NONE
  highlight VimCOBOLLine2 ctermbg=NONE cterm=NONE ctermfg=NONE guibg=NONE gui=NONE
  highlight VimCOBOLLine3 ctermbg=NONE cterm=NONE ctermfg=NONE guibg=NONE gui=NONE
  highlight VimCOBOLLine4 ctermbg=NONE cterm=NONE ctermfg=NONE guibg=NONE gui=NONE

  match VimCOBOLLine1 /\%6v.\%6v/
  match VimCOBOLLine2 /\%7v.\%7v/
  match VimCOBOLLine3 /\%12v.\%12v/
  match VimCOBOLLine4 /\%72v.\%72v/
endfunction

" Funci�n para detener el plugin
function! Morphstop()
  " Elimina los resaltados y desactiva el n�mero de l�nea
  match none
  highlight clear VimCOBOLLine1
  highlight clear VimCOBOLLine2
  highlight clear VimCOBOLLine3
  highlight clear VimCOBOLLine4
  set nonumber
  echo "COBOLMorph Disabled."
endfunction

