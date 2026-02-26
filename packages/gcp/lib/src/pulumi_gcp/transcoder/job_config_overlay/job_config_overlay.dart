// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../job_config_overlay_animation/job_config_overlay_animation.dart';
import '../job_config_overlay_image/job_config_overlay_image.dart';

class JobConfigOverlay {
  /// List of animations. The list should be chronological, without any time overlap.
  /// Structure is documented below.
  final List<JobConfigOverlayAnimation>? animations;

  /// Image overlay.
  /// Structure is documented below.
  final JobConfigOverlayImage? image;

  JobConfigOverlay({
    this.animations,
    this.image,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final animationsValue = animations;
    if (animationsValue != null) {
      map['animations'] =
          Input.encodeList<JobConfigOverlayAnimation, Map<String, dynamic>>(
              animationsValue, (value) => value.toMap());
    }
    final imageValue = image;
    if (imageValue != null) {
      map['image'] = imageValue.toMap();
    }
    return map;
  }

  factory JobConfigOverlay.fromMap(Map<String, dynamic> map) {
    return JobConfigOverlay(
      animations: map['animations'] == null
          ? null
          : Input.decodeList<JobConfigOverlayAnimation>(
              map['animations'],
              (value) => JobConfigOverlayAnimation.fromMap(
                  (value as Map).cast<String, dynamic>())),
      image: map['image'] == null
          ? null
          : JobConfigOverlayImage.fromMap(
              (map['image'] as Map).cast<String, dynamic>()),
    );
  }
}
