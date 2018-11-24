real unit = 0.5inch;
real radius = 6*unit;

real steps = 6;
int degrees = 720;

guide arm;
for (int i = 0; i <= steps; ++i) {
  arm = arm..((i*radius/steps)*dir(i*degrees/steps));
}

path circ = circle((0,0), radius);
path arms = buildcycle(circ, arm, rotate(-45)*arm);
fill(circ, black);
fill(arms, red);
fill(rotate(180)*arms, red);
