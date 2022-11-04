/* Select Lines Ending with 'com' */ 

%option noyywrap
%{
	int count=0;
%}
%%

.*com\n {count++;ECHO;}
%%

main()
{
	yylex();
	printf("\ncount=%d\n",count);
	return 0;
}
