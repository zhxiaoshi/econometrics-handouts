cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
cd "~/Desktop/Stata创建动态图表"
* cuselist
* 例如绘制中国M2供应量的动态图表
clear all
cuse moneysupply, c w
gen datenum = date
keep date M2num M2rt1
tw line M2num date, yaxis(1) || ///
	line M2rt1 date, yaxis(2) ||, ///
	leg(pos(6) row(1)) xlab(17532(400)21124) ///
	yti("M2供应量（亿元）", axis(1)) ///
	yti("M2供应量同比增速（%）", axis(2)) ///
	ylab(0(500000)2000000, axis(1)) ///
	ylab(0(5)30, axis(2))
gr export 20181025a1.png, width(600) height(400)
forval i = 1/`=_N'{
	cap restore
	preserve 
	keep in 1/`i'
	tw line M2num date, yaxis(1) || ///
		line M2rt1 date, yaxis(2) ||, ///
		leg(pos(6) row(1)) xlab(17532(400)21124) ///
		yti("M2供应量（亿元）", axis(1)) ///
		yti("M2供应量同比增速（%）", axis(2)) ///
		ylab(0(500000)2000000, axis(1)) ///
		ylab(0(5)30, axis(2))
	gr export `i'.png, width(600) height(400) replace
	restore
}

local pngname ""
forval i = 1/119{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a2.gif
! rm *.png

forval i = 1/100{
	clear all
	set obs 10000
	gen x = (_n - 5000)/(5000/3)
	gen y1 = tden(`i', x)
	gen y2 = normalden(x)
	tw function y2 = normalden(x), range(-3 3) || ///
		function y1 = tden(`i', x), range(-3 3)  || ///
		rarea y1 y2 x, xlab(-3(1)3) ylab(0(0.1)0.4, format(%6.1f)) ///
		leg(pos(6) row(1) order(1 "正态分布" 2 "t分布")) ///
		caption("t分布的自由度为`i'", pos(1) ring(0) size(*1.2)) ///
		title("图：t分布逼近正态分布", size(*1.5)) xti("")
	gr export `i'.png, width(600) height(400) replace
}

local pngname ""
forval i = 1/100{
	local pngname "`pngname' `i'.png"
}
!/opt/local/bin/convert -delay 0 -loop 0 `pngname' 20181025a3.gif
! rm *.png
