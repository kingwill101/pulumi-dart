// ignore_for_file: unused_element, unnecessary_cast

import '../job_config_overlay_animation_animation_fade/job_config_overlay_animation_animation_fade.dart';

class JobConfigOverlayAnimation {
  /// Display overlay object with fade animation.
  /// Structure is documented below.
  final JobConfigOverlayAnimationAnimationFade? animationFade;

  JobConfigOverlayAnimation({
    this.animationFade,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final animationFadeValue = animationFade;
    if (animationFadeValue != null) {
      map['animationFade'] = animationFadeValue.toMap();
    }
    return map;
  }

  factory JobConfigOverlayAnimation.fromMap(Map<String, dynamic> map) {
    return JobConfigOverlayAnimation(
      animationFade: map['animationFade'] == null
          ? null
          : JobConfigOverlayAnimationAnimationFade.fromMap(
              (map['animationFade'] as Map).cast<String, dynamic>()),
    );
  }
}
