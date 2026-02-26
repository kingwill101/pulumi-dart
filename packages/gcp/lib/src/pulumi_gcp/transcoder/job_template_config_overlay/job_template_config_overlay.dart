// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../job_template_config_overlay_animation/job_template_config_overlay_animation.dart';
import '../job_template_config_overlay_image/job_template_config_overlay_image.dart';

class JobTemplateConfigOverlay {
  /// List of animations. The list should be chronological, without any time overlap.
  /// Structure is documented below.
  final List<JobTemplateConfigOverlayAnimation>? animations;

  /// Image overlay.
  /// Structure is documented below.
  final JobTemplateConfigOverlayImage? image;

  JobTemplateConfigOverlay({
    this.animations,
    this.image,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final animationsValue = animations;
    if (animationsValue != null) {
      map['animations'] = Input.encodeList<JobTemplateConfigOverlayAnimation,
          Map<String, dynamic>>(animationsValue, (value) => value.toMap());
    }
    final imageValue = image;
    if (imageValue != null) {
      map['image'] = imageValue.toMap();
    }
    return map;
  }

  factory JobTemplateConfigOverlay.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigOverlay(
      animations: map['animations'] == null
          ? null
          : Input.decodeList<JobTemplateConfigOverlayAnimation>(
              map['animations'],
              (value) => JobTemplateConfigOverlayAnimation.fromMap(
                  (value as Map).cast<String, dynamic>())),
      image: map['image'] == null
          ? null
          : JobTemplateConfigOverlayImage.fromMap(
              (map['image'] as Map).cast<String, dynamic>()),
    );
  }
}
