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

  AnimationResponse({
    required this.animationEnd,
    required this.animationFade,
    required this.animationStatic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['animationEnd'] = animationEnd.toMap();
    map['animationFade'] = animationFade.toMap();
    map['animationStatic'] = animationStatic.toMap();
    return map;
  }

  factory AnimationResponse.fromMap(Map<String, dynamic> map) {
    return AnimationResponse(
      animationEnd: AnimationEndResponse.fromMap(
          (map['animationEnd'] as Map).cast<String, dynamic>()),
      animationFade: AnimationFadeResponse.fromMap(
          (map['animationFade'] as Map).cast<String, dynamic>()),
      animationStatic: AnimationStaticResponse.fromMap(
          (map['animationStatic'] as Map).cast<String, dynamic>()),
    );
  }
}
