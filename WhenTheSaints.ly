\version "2.20"

\header {
  title = 	"When The Saints Go Marching In"
  composer =	"Traditional"
  maintainer = 	"Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
}

righthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "treble"
  \tempo 4 = 140
  \relative c' {
  r4 c-1 e-3 f-4 | g1-5~ | g4 c, e f | g1~ | \break
  g4 c, e f | g2 e2 | c2 e2 | d1~ | \break
  d4 r4 e d | c2 c2 | e2 g2 | g4 f2.~ | \break
  f2 e4 f4 | g2 e2 | d2 d2 | c1~ | c4
   \bar "||"
  }
}

lefthand =  {
  \key c \major
  \numericTimeSignature \time 4/4
  \clef "bass"
  \relative c {
  r4 r4 r2 | r4 <c e g>4 <c e g>4 <c e g>4 | <c e g>4 r4 r2 | r4 <c e g>4 <c e g>4 <c e g>4 | \break
  <c e g>4 r4 r2 | r4 <c e g>4 r4 <c e g>4 | r4 <c e g>4 r4 <c e g>4 | r4 <b f' g>4 <b f' g>4 <b f' g>4 | \break  
  <b f' g>4 r4 r2 | r4 <c e g>4 r4 <c e g>4 | r4 <c e g>4 r4 <c e g>4 | r2 <c f a>4 <c f a>4 | \break
  <c f a>2 r2 | r4 <c e g>4 r4 <c e g>4 | r4 <b f' g>4 r4 <b f' g>4 | r4 <c e g>4 <c e g>4 <c e g>4 | <c e g>4  
  \bar "||"
  }
}

\score {
   \context PianoStaff << 
    \context Staff = "one" <<
      \righthand
    >>
    \context Staff = "two" <<
      \lefthand
    >>
  >>
  \layout { }
  \midi { }
}
   
