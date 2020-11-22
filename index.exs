IO.puts("\nBem Vindo a Calculadora Em Elixir\n");
IO.puts("Escolha uma opcao abaixo no menu para realizar a operacao: \n");
IO.puts("1 - Soma");
IO.puts("2 - Subtracao");
IO.puts("3 - Multiplicacao");
IO.puts("4 - Divisao");
IO.puts("5 - Calcular Idade\n");

opt = IO.gets("Digite uma opcao: ");
opcaoConvertida = Integer.parse(opt);
opcao = elem(opcaoConvertida,0);

if(opcao == 1 || opcao == 2 || opcao == 3 || opcao == 4) do
  a = IO.gets("Digite o primeiro numero: ");
  b = IO.gets("Digite o segundo numero: ");
  tupleA = Integer.parse(a);
  tupleB = Integer.parse(b);
  num1 = elem(tupleA,0);
  num2 = elem(tupleB,0);
  if (opcao == 1) do
    res = num1 + num2;
    IO.puts("\nO Resultado da operacao e:  #{res}");
  end
  if (opcao == 2) do
    res = num1 - num2;
    IO.puts("\nO Resultado da operacao e:  #{res}");
  end
  if (opcao == 3) do
    res = num1 * num2;
    IO.puts("\nO Resultado da operacao e:  #{res}");
  end
  if (opcao == 4) do
    res = num1 / num2;
    IO.puts("\nO Resultado da operacao e:  #{res}");
  end
end

if (opcao == 5) do
  input = IO.gets("Digite a ano de seu nascimento: ");
  year = Integer.parse(input);
  age = 2020 - elem(year, 0);
  IO.puts("Voce tem #{age} anos.");
end

if(opcao != 1 && opcao != 2 && opcao != 3 && opcao != 4 && opcao != 5) do
  IO.puts("Opção Inválida!");
end

IO.puts("\nObrigado por usar a calculadora!\n");
