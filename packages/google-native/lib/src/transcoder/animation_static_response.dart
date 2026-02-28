// ignore_for_file: unused_element, unnecessary_cast

import 'normalized_coordinate_response.dart';

/// Display static overlay object.
class AnimationStaticResponse {
  /// The time to start displaying the overlay object, in seconds. Default: 0
  final String startTimeOffset;

  /// Normalized coordinates based on output video resolution. Valid values: `0.0`–`1.0`. `xy` is the upper-left coordinate of the overlay object. For example, use the x and y coordinates {0,0} to position the top-left corner of the overlay animation in the top-left corner of the output video.
  final NormalizedCoordinateResponse xy;

  /// Creates a new [AnimationStaticResponse].
  /// [startTimeOffset] The time to start displaying the overlay object, in seconds. Default: 0
  /// [xy] Normalized coordinates based on output video resolution. Valid values: `0.0`–`1.0`. `xy` is the upper-left coordinate of the overlay object. For example, use the x and y coordinates {0,0} to position the top-left corner of the overlay animation in the top-left corner of the output video.
  AnimationStaticResponse({
    required this.startTimeOffset,
    required this.xy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['startTimeOffset'] = startTimeOffset;
    map['xy'] = xy.toMap();
    return map;
  }

  factory AnimationStaticResponse.fromMap(Map<String, dynamic> map) {
    return AnimationStaticResponse(
      startTimeOffset: map['startTimeOffset'] as String,
      xy: NormalizedCoordinateResponse.fromMap(
          (map['xy'] as Map).cast<String, dynamic>()),
    );
  }
}
