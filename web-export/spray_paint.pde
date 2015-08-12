
Maxim maxim;
// AudioPlayer sound;
 AudioPlayer spray;
 AudioPlayer shake;

void setup(){
  size(640, 400);
  background(255);
  maxim = new Maxim(this);
//  sound = maxim.loadFile("shake.wav");
//  sound.setLooping(true);
  spray = maxim.loadFile("spray.wav");
  spray.setLooping(true);
  shake = maxim.loadFile("shake.wav");
  shake.setLooping(true);
  shake.play();
}

void draw(){
//  sound.play();
  if (keyPressed) {
    if (key == BACKSPACE || key == DELETE)
      background(255);
    }
//  if (mousePressed == true) {
//    sound.cue(0);
//    sound = maxim.loadFile("spray.wav");
//  } else {
//    sound.cue(0);
//    sound = maxim.loadFile("shake.wav");
//  }
//  if (mousePressed == true) {
//     spray.play();
//     shake.pause();
//  } else {
//     shake.play();
//     spray.pause();
//  }
//  if (mousePressed == false) {
//    shake.play();
//    spray.pause();
  }

void mouseDragged(){
 stroke(random(256), random(256), random(256), random(256));  
 strokeWeight(random(10));
 point(mouseX, mouseY);
 strokeWeight(random(5)); 
 point(mouseX+random(20), mouseY+random(20));
 strokeWeight(random(5)); 
 point(mouseX-random(20), mouseY-random(20));
 strokeWeight(random(5)); 
 point(mouseX+random(20), mouseY+random(20));  
 strokeWeight(random(5)); 
 point(mouseX-random(20), mouseY-random(20));
 strokeWeight(random(5));  
 point(mouseX+random(20), mouseY+random(20));  
 strokeWeight(random(5)); 
 point(mouseX-random(20), mouseY-random(20)); 
}

void mousePressed() {
  shake.cue(0);
  spray.play();
}

void mouseReleased() {
  spray.cue(0);
  shake.play();
}

