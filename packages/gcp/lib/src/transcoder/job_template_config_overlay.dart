// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_config_overlay_animation.dart';
import 'job_template_config_overlay_image.dart';

class JobTemplateConfigOverlay {
  /// List of animations. The list should be chronological, without any time overlap.
  /// Structure is documented below.
  final List<JobTemplateConfigOverlayAnimation>? animations;

  /// Image overlay.
  /// Structure is documented below.
  final JobTemplateConfigOverlayImage? image;

  /// Creates a new [JobTemplateConfigOverlay].
  /// [animations] List of animations. The list should be chronological, without any time overlap.
  /// [image] Image overlay.
  JobTemplateConfigOverlay({this.animations, this.image});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'animations': ?animations == null
          ? null
          : pulumi.Input.encodeList<
              JobTemplateConfigOverlayAnimation,
              Map<String, dynamic>
            >(animations!, (value) => value.toMap()),
      'image': ?image == null ? null : image!.toMap(),
    };
  }

  factory JobTemplateConfigOverlay.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigOverlay(
      animations: map['animations'] == null
          ? null
          : pulumi.Input.decodeList<JobTemplateConfigOverlayAnimation>(
              map['animations'],
              (value) => JobTemplateConfigOverlayAnimation.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      image: map['image'] == null
          ? null
          : JobTemplateConfigOverlayImage.fromMap(
              (map['image'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
