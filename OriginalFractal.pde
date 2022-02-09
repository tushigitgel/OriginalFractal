public void setup(){
  size(500,500);
  rectMode(CENTER);
}
public void draw(){
  background(0);
  myFractal(250,250,480);
}
public void myFractal(int x, int y, int siz){
  noFill();
  strokeWeight(3);
  stroke((int)(Math.random()*200), (int)(Math.random()*200),(int)(Math.random()*200));
  rect(x, y, siz, siz);
  if(siz > 10){
    myFractal(x - siz/2, y - siz/2, siz/2);
    myFractal(x + siz/2, y + siz/2, siz/2);
  }
}
