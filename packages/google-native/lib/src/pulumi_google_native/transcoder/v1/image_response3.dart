// ignore_for_file: unused_element, unnecessary_cast

import 'normalized_coordinate_response.dart';

/// Overlaid image.
class ImageResponse3 {
  /// Target image opacity. Valid values are from `1.0` (solid, default) to `0.0` (transparent), exclusive. Set this to a value greater than `0.0`.
  final double alpha;

  /// Normalized image resolution, based on output video resolution. Valid values: `0.0`–`1.0`. To respect the original image aspect ratio, set either `x` or `y` to `0.0`. To use the original image resolution, set both `x` and `y` to `0.0`.
  final NormalizedCoordinateResponse resolution;

  /// URI of the image in Cloud Storage. For example, `gs://bucket/inputs/image.png`. Only PNG and JPEG images are supported.
  final String uri;

  ImageResponse3({
    required this.alpha,
    required this.resolution,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alpha'] = alpha;
    map['resolution'] = resolution.toMap();
    map['uri'] = uri;
    return map;
  }

  factory ImageResponse3.fromMap(Map<String, dynamic> map) {
    return ImageResponse3(
      alpha: map['alpha'] as double,
      resolution: NormalizedCoordinateResponse.fromMap(
          (map['resolution'] as Map).cast<String, dynamic>()),
      uri: map['uri'] as String,
    );
  }
}
