// ignore_for_file: unused_element, unnecessary_cast

import 'job_template_config_overlay_animation_animation_fade.dart';

class JobTemplateConfigOverlayAnimation {
  /// Display overlay object with fade animation.
  /// Structure is documented below.
  final JobTemplateConfigOverlayAnimationAnimationFade? animationFade;

  /// Creates a new [JobTemplateConfigOverlayAnimation].
  /// [animationFade] Display overlay object with fade animation.
  JobTemplateConfigOverlayAnimation({
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

  factory JobTemplateConfigOverlayAnimation.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigOverlayAnimation(
      animationFade: map['animationFade'] == null
          ? null
          : JobTemplateConfigOverlayAnimationAnimationFade.fromMap(
              (map['animationFade'] as Map).cast<String, dynamic>()),
    );
  }
}
