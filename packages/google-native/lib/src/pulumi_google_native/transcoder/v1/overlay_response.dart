// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'animation_response.dart';
import 'image_response_transcoder_v1.dart';

/// Overlay configuration.
class OverlayResponse {
  /// List of animations. The list should be chronological, without any time overlap.
  final List<AnimationResponse> animations;

  /// Image overlay.
  final ImageResponseTranscoderV1 image;

  OverlayResponse({
    required this.animations,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['animations'] =
        pulumi.Input.encodeList<AnimationResponse, Map<String, dynamic>>(
            animations, (value) => value.toMap());
    map['image'] = image.toMap();
    return map;
  }

  factory OverlayResponse.fromMap(Map<String, dynamic> map) {
    return OverlayResponse(
      animations: pulumi.Input.decodeList<AnimationResponse>(
          map['animations'],
          (value) => AnimationResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      image: ImageResponseTranscoderV1.fromMap(
          (map['image'] as Map).cast<String, dynamic>()),
    );
  }
}
