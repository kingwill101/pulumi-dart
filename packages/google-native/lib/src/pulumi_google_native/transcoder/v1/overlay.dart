// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'animation.dart';
import 'image_transcoder_v1.dart';

/// Overlay configuration.
class Overlay {
  /// List of animations. The list should be chronological, without any time overlap.
  final List<Animation>? animations;

  /// Image overlay.
  final ImageTranscoderV1? image;

  Overlay({
    this.animations,
    this.image,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final animationsValue = animations;
    if (animationsValue != null) {
      map['animations'] =
          pulumi.Input.encodeList<Animation, Map<String, dynamic>>(
              animationsValue, (value) => value.toMap());
    }
    final imageValue = image;
    if (imageValue != null) {
      map['image'] = imageValue.toMap();
    }
    return map;
  }

  factory Overlay.fromMap(Map<String, dynamic> map) {
    return Overlay(
      animations: map['animations'] == null
          ? null
          : pulumi.Input.decodeList<Animation>(
              map['animations'],
              (value) =>
                  Animation.fromMap((value as Map).cast<String, dynamic>())),
      image: map['image'] == null
          ? null
          : ImageTranscoderV1.fromMap(
              (map['image'] as Map).cast<String, dynamic>()),
    );
  }
}
