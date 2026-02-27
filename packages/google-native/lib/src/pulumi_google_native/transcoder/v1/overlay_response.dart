// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'animation_response.dart';
import 'image_response3.dart';

/// Overlay configuration.
class OverlayResponse {
  /// List of animations. The list should be chronological, without any time overlap.
  final List<AnimationResponse> animations;

  /// Image overlay.
  final ImageResponse3 image;

  OverlayResponse({
    required this.animations,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['animations'] =
        Input.encodeList<AnimationResponse, Map<String, dynamic>>(
            animations, (value) => value.toMap());
    map['image'] = image.toMap();
    return map;
  }

  factory OverlayResponse.fromMap(Map<String, dynamic> map) {
    return OverlayResponse(
      animations: Input.decodeList<AnimationResponse>(
          map['animations'],
          (value) => AnimationResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      image:
          ImageResponse3.fromMap((map['image'] as Map).cast<String, dynamic>()),
    );
  }
}
