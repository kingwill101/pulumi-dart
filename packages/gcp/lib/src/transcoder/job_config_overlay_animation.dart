// ignore_for_file: unused_element, unnecessary_cast

import 'job_config_overlay_animation_animation_fade.dart';

class JobConfigOverlayAnimation {
  /// Display overlay object with fade animation.
  /// Structure is documented below.
  final JobConfigOverlayAnimationAnimationFade? animationFade;

  /// Creates a new [JobConfigOverlayAnimation].
  /// [animationFade] Display overlay object with fade animation.
  JobConfigOverlayAnimation({this.animationFade});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'animationFade': ?animationFade == null ? null : animationFade!.toMap(),
    };
  }

  factory JobConfigOverlayAnimation.fromMap(Map<String, dynamic> map) {
    return JobConfigOverlayAnimation(
      animationFade: map['animationFade'] == null
          ? null
          : JobConfigOverlayAnimationAnimationFade.fromMap(
              (map['animationFade'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
