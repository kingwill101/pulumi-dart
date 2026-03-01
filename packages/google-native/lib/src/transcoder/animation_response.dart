// ignore_for_file: unused_element, unnecessary_cast

import 'animation_end_response.dart';
import 'animation_fade_response.dart';
import 'animation_static_response.dart';

/// Animation types.
class AnimationResponse {
  /// End previous animation.
  final AnimationEndResponse animationEnd;

  /// Display overlay object with fade animation.
  final AnimationFadeResponse animationFade;

  /// Display static overlay object.
  final AnimationStaticResponse animationStatic;

  /// Creates a new [AnimationResponse].
  /// [animationEnd] End previous animation.
  /// [animationFade] Display overlay object with fade animation.
  /// [animationStatic] Display static overlay object.
  AnimationResponse({
    required this.animationEnd,
    required this.animationFade,
    required this.animationStatic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'animationEnd': animationEnd.toMap(),
      'animationFade': animationFade.toMap(),
      'animationStatic': animationStatic.toMap(),
    };
  }

  factory AnimationResponse.fromMap(Map<String, dynamic> map) {
    return AnimationResponse(
      animationEnd: AnimationEndResponse.fromMap(
        (map['animationEnd'] as Map).cast<String, dynamic>(),
      ),
      animationFade: AnimationFadeResponse.fromMap(
        (map['animationFade'] as Map).cast<String, dynamic>(),
      ),
      animationStatic: AnimationStaticResponse.fromMap(
        (map['animationStatic'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
