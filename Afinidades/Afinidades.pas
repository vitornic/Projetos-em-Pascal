Program Afinidades ;
Uses crt;

var
 opc:char;
  msg:string='';

Procedure centralizar(texto:string;fila:integer);
var
 columna:integer;
	begin
  	columna:=(80-length(texto)) Div 2;
 	  gotoxy (columna,fila);
		write(texto);
	end;

Procedure Loading_screen(x,y,tempo_total_segundos:integer); //Loading
var aux,tempo_total_milissegundos, x_barras:integer;
Begin
  x_barras:=x+15;
  for aux:=1 to 100 do
  begin
    tempo_total_milissegundos:=tempo_total_segundos*200;
    delay(tempo_total_milissegundos DIV 100);
    Gotoxy(x,y);
    Write('Loading (',aux,'%) ');
    If (aux=2) or (aux=50) or (aux=58) or (aux=69) or (aux=72) or (aux=80) or (aux=100) then
    begin
      x_barras:=x_barras+2;
      Gotoxy(x_barras,y);
      Write(#219);
    end;
  End;
End;

Procedure mensagem; //Processo para iniciar o programa
var tecla : real;
begin
  writeln('Digite uma tecla para iniciar');
  ;
end;

Procedure Randol; //Processo da afinidade Randol
var afinidade, pontos, PF, itens : integer;
amplificador : char;
Begin
	textcolor(6);
  writeln('Digite quantos pontos voce tem nesta afinidade');
  readln(pontos);
  case pontos of
    7000000..20000000:
    begin
      textcolor(2);
      writeln('Esta afinidade tem o shop liberado !');
      readln;
    end;
  end;
  case pontos of
    0..6999999:
    begin
      PF := (7000000 - pontos);
      textcolor(12);
      writeln('Faltam ',PF,' pontos para liberar o shop !');
      writeln('Esta usando amplificador ? [s/n]');
      readln(amplificador);
      if amplificador = 's' then
      begin
        itens := (PF div 90);
        writeln('Faltam ',itens,' Dracus Minus para terminar !');
        readln;
      end
      else
      begin
        itens := (PF div 45);
        writeln('Faltam ',itens,' Dracus Minus para terminar !');
        readln;
      end;
    end;
  end;
end;

Procedure Sins; //Processo da afinidade Sins
var afinidade, pontos, PF, itens : integer;
amplificador : string;
Begin
  writeln('Digite quantos pontos voce tem nesta afinidade');
  readln(pontos);
  case pontos of
    10000000..20000000:
    begin
      textcolor(6);
      writeln('Esta afinidade tem o shop liberado !');
      readln;
    end;
  end;
  case pontos of
    0..9999999:
    begin
      PF := (10000000 - pontos);
      textcolor(12);
      writeln('Faltam ',PF,' pontos para liberar o shop !');
      writeln('Esta usando amplificador ? [s/n]');
      readln(amplificador);
      if amplificador = 's' then
      begin
        itens := (PF div 140);
        writeln('Faltam ',itens,' Orcs para terminar !');
        readln;
      end
      else
      begin
        itens := (PF div 70);
        writeln('Faltam ',itens,' Orcs para terminar !');
        readln;
      end;
    end;
  end;
end;

Procedure Burbank; //Processo da afinidade Burbank
var afinidade, pontos, PF, itens : integer;
amplificador : string;
Begin
  writeln('Digite quantos pontos voce tem nesta afinidade');
  readln(pontos);
  case pontos of
    7000000..20000000:
    begin
      textcolor(6);
      writeln('Esta afinidade tem o shop liberado !');
      readln;
    end;
  end;
  case pontos of
    0..6999999:
    begin
      PF := (7000000 - pontos);
      textcolor(12);
      writeln('Faltam ',PF,' pontos para liberar o shop !');
      writeln('Esta usando amplificador ? [s/n]');
      readln(amplificador);
      if amplificador = 's' then
      begin
        itens := (PF div 400);
        writeln('Faltam ',itens,' Nacil para terminar !');
        readln;
      end
      else
      begin
        itens := (PF div 200);
        writeln('Faltam ',itens,' Nacil para terminar !');
        readln;
      end;
    end;
  end;
end;

Procedure mazar; //Processo da afinidade Mazar
var afinidade, pontos, PF, itens : integer;
amplificador : string;
Begin
  writeln('Digite quantos pontos voce tem nesta afinidade');
  readln(pontos);
  case pontos of
    12000000..20000000:
    begin
      textcolor(6);
      writeln('Esta afinidade tem o shop liberado !');
      readln;
    end;
  end;
  case pontos of
    0..12999999:
    begin
      PF := (13000000 - pontos);
      textcolor(12);
      writeln('Faltam ',PF,' pontos para liberar o shop !');
      writeln('Esta usando amplificador ? [s/n]');
      readln(amplificador);
      if amplificador = 's' then
      begin
        itens := (PF div 600);
        writeln('Faltam ',itens,' C-Cristal de Fogo para terminar !');
        readln;
      end
      else
      begin
        itens := (PF div 300);
        writeln('Faltam ',itens,' C-Cristal de Fogo para terminar !');
        readln;
      end;
    end;
  end;
end;

Procedure Jinarr; //Processo da afinidade jinarr
var afinidade, pontos, PF, itens, itens_2 : integer;
amplificador : string;
Begin
  writeln('Digite quantos pontos voce tem nesta afinidade');
  readln(pontos);
  case pontos of
    13000000..20000000:
    begin
      textcolor(6);
      writeln('Esta afinidade tem o shop liberado !');
      readln;
    end;
  end;
  case pontos of
    0..12999999:
    begin
      PF := (13000000 - pontos);
      textcolor(12);
      writeln('Faltam ',PF,' pontos para liberar o shop !');
      writeln('Esta usando amplificador ? [s/n]');
      readln(amplificador);
      if amplificador = 's' then
      begin
        itens := (PF div 342);
        itens_2 := (PF div 280);
        writeln('Faltam ',itens,' Verins ou ',itens_2,' Ukos para terminar !');
        readln;
      end
      else
      begin
        itens := (PF div 171);
        itens_2 := (PF div 140);
        writeln('Faltam ',itens,' Verins ou ',itens_2,' Ukos para terminar !');
        readln;
      end;
    end;
  end;
end;

Procedure Oscar; //Processo da afinidade Oscar
var afinidade, pontos, PF, itens, itens_2 : integer;
amplificador : string;
Begin
  writeln('Digite quantos pontos voce tem nesta afinidade');
  readln(pontos);
  case pontos of
    13000000..25000000:
    begin
      textcolor(6);
      writeln('Esta afinidade tem o shop liberado !');
      readln;
    end;
  end;
  case pontos of
    0..12999999:
    begin
      PF := (13000000 - pontos);
      textcolor(12);
      writeln('Faltam ',PF,' pontos para liberar o shop !');
      writeln('Esta usando amplificador ? [s/n]');
      readln(amplificador);
      if amplificador = 's' then
      begin
        itens := (PF div 300);
        itens_2 := (PF div 200);
        writeln('Faltam ',itens,' Ouro e/ou ',itens_2,' Prata para terminar !');
        readln;
      end
      else
      begin
        itens := (PF div 150);
        itens_2 := (PF div 100);
        writeln('Faltam ',itens,' Ouro e/ou ',itens_2,' Prata para terminar !');
        readln;
      end;
    end;
  end;
end;

Procedure Keron; //Processo da afinidade Keron
var afinidade, pontos, PF, itens, itens_2 : integer;
amplificador : string;
Begin
  writeln('Digite quantos pontos voce tem nesta afinidade');
  readln(pontos);
  case pontos of
    7000000..25000000:
    begin
      textcolor(6);
      writeln('Esta afinidade tem o shop liberado !');
      readln;
    end;
  end;
  case pontos of
    0..6999999:
    begin
      PF := (7000000 - pontos);
      textcolor(12);
      writeln('Faltam ',PF,' pontos para liberar o shop !');
      writeln('Esta usando amplificador ? [s/n]');
      readln(amplificador);
      if amplificador = 's' then
      begin
        itens := (PF div 400);
        itens_2 := (PF div 200);
        writeln('Faltam ',itens,' Thor e/ou Shamans Azul para terminar !');
        readln;
      end
      else
      begin
        itens := (PF div 200);
        itens_2 := (PF div 100);
        writeln('Faltam ',itens,' Thor e/ou Shamans Azul para terminar !');
        readln;
      end;
    end;
  end;
end;

Procedure Owl; //Processo da afinidade Owl
var afinidade, pontos, PF, itens, itens_2 : integer;
amplificador : string;
Begin
  writeln('Digite quantos pontos voce tem nesta afinidade');
  readln(pontos);
  case pontos of
    12000000..20000000:
    begin
      textcolor(6);
      writeln('Esta afinidade tem o shop liberado !');
      readln;
    end;
  end;
  case pontos of
    0..11999999:
    begin
      PF := (12000000 - pontos);
      textcolor(12);
      writeln('Faltam ',PF,' pontos para liberar o shop !');
      writeln('Esta usando amplificador ? [s/n]');
      readln(amplificador);
      if amplificador = 's' then
      begin
        itens := (PF div 200);
        itens_2 := (PF div 200);
        writeln('Faltam ',itens,' Geleias para terminar !');
      writeln('Venda de Geleias com : ZeGeleia');
      readln;
    end
    else
    begin
      itens := (PF div 100);
      itens_2 := (PF div 100);
      writeln('Faltam ',itens,' Geleias para terminar !');
    writeln('Venda de Geleias com : ZeGeleia');
    readln;
  end;
end;
end;
end;

Procedure Aron; //Processo da afinidade Aron
var afinidade, pontos, PF, itens, itens_2 : integer;
amplificador : string;
Begin
  writeln('Digite quantos pontos voce tem nesta afinidade');
  readln(pontos);
  case pontos of
    13000000..30000000:
    begin
      textcolor(6);
      writeln('Esta afinidade tem o shop liberado !');
      readln;
    end;
  end;
  case pontos of
    0..12999999:
    begin
      PF := (13000000 - pontos);
      textcolor(12);
      writeln('Faltam ',PF,' pontos para liberar o shop !');
      writeln('Esta usando amplificador ? [s/n]');
      readln(amplificador);
      if amplificador = 's' then
      begin
        itens := (PF div 246);
        itens_2 := (PF div 200);
        writeln('Faltam ',itens,' Espectros para terminar !');
        readln;
      end
      else
      begin
        itens := (PF div 123);
        itens_2 := (PF div 100);
        writeln('Faltam ',itens,' Espectros para terminar !');
        readln;
      end;
    end;
  end;
end;

Procedure Blackfog; //Processo da afinidade Blackfog
var afinidade, pontos, PF, itens, itens_2 : integer;
amplificador : string;
Begin
  writeln('Digite quantos pontos voce tem nesta afinidade');
  readln(pontos);
  case pontos of
    15000000..30000000:
    begin
      textcolor(6);
      writeln('Esta afinidade tem o shop liberado !');
      readln;
    end;
  end;
  case pontos of
    0..14999999:
    begin
      PF := (15000000 - pontos);
      textcolor(12);
      writeln('Faltam ',PF,' pontos para liberar o shop !');
      writeln('Esta usando amplificador ? [s/n]');
      readln(amplificador);
      if amplificador = 's' then
      begin
        itens := (PF div 284);
        itens_2 := (PF div 200);
        writeln('Faltam ',itens,' Harpias Negras para terminar !');
        readln;
      end
      else
      begin
        itens := (PF div 142);
        itens_2 := (PF div 100);
        writeln('Faltam ',itens,' Harpias Negras para terminar !');
        readln;
      end;
    end;
  end;
end;

Procedure UniSio; //Processo da afinidade Uniao Sio
var afinidade, pontos, PF, itens, itens_2 : integer;
amplificador : string;
Begin
  writeln('Digite quantos pontos voce tem nesta afinidade');
  readln(pontos);
  case pontos of
    10000000..50000000:
    begin
      textcolor(6);
      writeln('Esta afinidade tem o shop liberado !');
      readln;
    end;
  end;
  case pontos of
    0..9999999:
    begin
      PF := (10000000 - pontos);
      textcolor(12);
      writeln('Faltam ',PF,' pontos para liberar o shop !');
      writeln('Esta usando amplificador ? [s/n]');
      readln(amplificador);
      if amplificador = 's' then
      begin
        itens := (PF div 200);
        itens_2 := (PF div 400);
        writeln('Faltam ',itens,' Charme de Sio e/ou ',itens_2,' Acessorio de Sio para terminar !');
        readln;
      end
      else
      begin
        itens := (PF div 100);
        itens_2 := (PF div 200);
        writeln('Faltam ',itens,' Charme de Sio e/ou ',itens_2,' Acessorio de Sio para terminar !');
        readln;
      end;
    end;
  end;
end;

Procedure Lakin; //Processo da afinidade Lakin
var afinidade, pontos, PF, itens : integer;
amplificador : string;
Begin
  writeln('Digite quantos pontos voce tem nesta afinidade');
  readln(pontos);
  case pontos of
    15000000..50000000:
    begin
      textcolor(6);
      writeln('Esta afinidade tem o shop liberado !');
      readln;
    end;
  end;
  case pontos of
    0..14999999:
    begin
      PF := (15000000 - pontos);
      textcolor(12);
      writeln('Faltam ',PF,' pontos para liberar o shop !');
      writeln('Esta usando amplificador ? [s/n]');
      readln(amplificador);
      if amplificador = 's' then
      begin
        itens := (PF div 1360);
        writeln('Faltam ',itens,' Sombras Negras para terminar !');
        readln;
      end
      else
      begin
        itens := (PF div 680);
        writeln('Faltam ',itens,' Sombras Negras para terminar !');
        readln;
      end;
    end;
  end;
end;

Procedure Ramslo; //Processo da afinidade Ramslo
var afinidade, pontos, PF, itens, itens_2 : integer;
amplificador : string;
Begin
  writeln('Digite quantos pontos voce tem nesta afinidade');
  readln(pontos);
  case pontos of
    197000..200000:
    begin
      textcolor(6);
      writeln('Voce ja recebeu o acessorio dessa afinidade !');
      readln;
    end;
  end;
  case pontos of
    0..196000:
    begin
      PF := (200000 - pontos);
      textcolor(12);
      writeln('Faltam ',PF,' pontos para ganhar o Acessorio de Ramslo !');
      writeln('Esta usando amplificador ? [s/n]');
      readln(amplificador);
      if amplificador = 's' then
      begin
        itens := (PF div 4000);
        itens_2 := (PF div 2000);
        writeln('Faltam ',itens,' Acessorios de Ramslo e/ou ',itens_2,' Acessorios de Palpit para terminar !');
        readln;
      end
      else
      begin
        itens := (PF div 2000);
        itens_2 := (PF div 1000);
        writeln('Faltam ',itens,' Acessorios de Ramslo e/ou ',itens_2,' Acessorios de palpit para terminar !');
        readln;
      end;
    end;
  end;
end;

//Come�o do Corpo Principal
var afinidade, pontos, tamanho_da_barra, contaux, j, PF, itens : real;
amplificador, letra, continuar : char;
Begin
centralizar;
  textcolor(12);
  continuar := 's';
while continuar = 's' do
	Loading_screen(2,2,10);
  clrscr; //Limpa a tela
  mensagem; //inicia a tela
  readln;

  textcolor(14);
  writeln('Programa desenvolvido por : MetalSpark ==== Beta Tester : Smeagol');
  writeln('Objetivo : Analisar seus pontos de afinidade e mostrar se essa afinidade tem o shop liberado ou quantos pontos ainda faltam');
  writeln('Versao Beta 2.0. Caso ocorra algum problema me contatar.');
  writeln('Sugestoes, reclamacoes, feedback : skayer123@outlook.com');
		textcolor(6);
    writeln('Digite qual afinidade deseja verificar');
    writeln('1 - Randol Knights');
    writeln('2 - Sin Killers');
    writeln('3 - Burbank');
    writeln('4 - Mazar');
    writeln('5 - Jinarr Force');
    writeln('6 - Oscar Merchants');
    writeln('7 - Keron Mage');
    writeln('8 - Owl Force');
    writeln('9 - Aaron Force');
    writeln('10 - Black Fog');
    writeln('11 - Union of Sio');
    writeln('12 - Lakin Guard');
    writeln('13 - Black Tyrant Ramslo Assassin');
    readln(afinidade);
		textcolor(3);
  if afinidade = 1	then
    Begin
      Randol;
    End
    else if afinidade = 2	then
    Begin
      Sins;
    End
    else if afinidade = 3 then
    Begin
      Burbank;
    End
    else if afinidade = 4 then
    Begin
      mazar;
    End
    else if afinidade = 5 then
    Begin
      Jinarr;
    End
    else if afinidade = 6 then
    Begin
      Oscar;
    End
    else if afinidade = 7 then
    Begin
      Keron;
    End
    else if afinidade = 8 then
    Begin
      Owl;
    End
    else if afinidade = 9 then
    Begin
      Aron;
    End
    else if afinidade = 10 then
    Begin
      Blackfog;
    End
    else if afinidade = 11 then
    Begin
      UniSio;
    End
    else if afinidade = 12 then
    Begin
      lakin;
    End
    else if afinidade = 13 then
    Begin
      Ramslo;
    End;
	writeln('Deseja verificar outra afinidade ? [s/n]');
	read(continuar);
   End.

