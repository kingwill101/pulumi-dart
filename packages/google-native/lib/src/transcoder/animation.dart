// ignore_for_file: unused_element, unnecessary_cast

import 'animation_end.dart';
import 'animation_fade.dart';
import 'animation_static.dart';

/// Animation types.
class Animation {
  /// End previous animation.
  final AnimationEnd? animationEnd;

  /// Display overlay object with fade animation.
  final AnimationFade? animationFade;

  /// Display static overlay object.
  final AnimationStatic? animationStatic;

  /// Creates a new [Animation].
  /// [animationEnd] End previous animation.
  /// [animationFade] Display overlay object with fade animation.
  /// [animationStatic] Display static overlay object.
  Animation({this.animationEnd, this.animationFade, this.animationStatic});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'animationEnd': ?animationEnd == null ? null : animationEnd!.toMap(),
      'animationFade': ?animationFade == null ? null : animationFade!.toMap(),
      'animationStatic': ?animationStatic == null
          ? null
          : animationStatic!.toMap(),
    };
  }

  factory Animation.fromMap(Map<String, dynamic> map) {
    return Animation(
      animationEnd: map['animationEnd'] == null
          ? null
          : AnimationEnd.fromMap(
              (map['animationEnd'] as Map).cast<String, dynamic>(),
            ),
      animationFade: map['animationFade'] == null
          ? null
          : AnimationFade.fromMap(
              (map['animationFade'] as Map).cast<String, dynamic>(),
            ),
      animationStatic: map['animationStatic'] == null
          ? null
          : AnimationStatic.fromMap(
              (map['animationStatic'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
