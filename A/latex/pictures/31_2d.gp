
folder = 'pictures/data/'

set bmargin scr 0.1
set tmargin scr 0.90

set ylabel 'cluster size'
set xlabel 'occupation probability $p$'

set key left spacing 1.5

set multiplot 
#set yrange [0:1.05]
#set xrange [-0.1:2]
set lmargin scr 0.1
set rmargin scr 0.49
set title '\textbf{a)}'
set arrow from graph 0.5,0 to graph 0.5,1 nohead lt -1 lc rgb "#777777"
plot folder . '31_2d.dat' u 1:3 w lp pt 7 ps 0.5 t '\fs{$\mathrm{max}_C$}', \
     folder . '31_2d.dat' u 1:5 w lp pt 7 ps 0.5 t '\fs{$\langle s\rangle$}', \

set title '\textbf{b)}'
set key right
unset ylabel
set yrange [0:100]
set lmargin scr 0.56
set rmargin scr 0.95
plot folder . '31_2d.dat' u 1:4 w lp pt 7 ps 0.5 t '\fs{$\mathrm{max}_C^\mathrm{f}$}', \
     folder . '31_2d.dat' u 1:6 w lp pt 7 ps 0.5 t '\fs{$\langle s\rangle^\mathrm{f}}$', \
     #folder . '31_2d.dat' u 1:($7) w lp pt 7 ps 0.3 t '$\langle s\rangle^\mathrm{f}$', \
