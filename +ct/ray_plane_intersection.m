%--------------------------------------------------------------------------
%	计算射线与平面的交点以及射线的距离
%--------------------------------------------------------------------------
%	输入：
%	射线起始点[pX pY pZ]
%	射线方向矢量[Vx Vy Vz]
%	平面方程系数 ax+by+cz+d = 0
%	输出：
%	射线长度R
%	交点坐标[iX iY iZ]
function [R,iX,iY,iZ] = ray_plane_intersection(pX,pY,pZ,Vx,Vy,Vz,a,b,c,d)
k = -(a.*pX + b.*pY + c.*pZ + d)./(a.*Vx + b.*Vy + c.*Vz);
%--------------------------------------------------------------------------
%   交点
%--------------------------------------------------------------------------
iX = k*Vx;iY = k*Vy;iZ = k*Vz;
%--------------------------------------------------------------------------
%   射线长度
%--------------------------------------------------------------------------
R = norm(k.*[Vx Vy Vz]);
