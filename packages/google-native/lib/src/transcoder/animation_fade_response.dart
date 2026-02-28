// ignore_for_file: unused_element, unnecessary_cast

import 'normalized_coordinate_response.dart';

/// Display overlay object with fade animation.
class AnimationFadeResponse {
  /// The time to end the fade animation, in seconds. Default: `start_time_offset` + 1s
  final String endTimeOffset;

  /// Type of fade animation: `FADE_IN` or `FADE_OUT`.
  final String fadeType;

  /// The time to start the fade animation, in seconds. Default: 0
  final String startTimeOffset;

  /// Normalized coordinates based on output video resolution. Valid values: `0.0`–`1.0`. `xy` is the upper-left coordinate of the overlay object. For example, use the x and y coordinates {0,0} to position the top-left corner of the overlay animation in the top-left corner of the output video.
  final NormalizedCoordinateResponse xy;

  /// Creates a new [AnimationFadeResponse].
  /// [endTimeOffset] The time to end the fade animation, in seconds. Default: `start_time_offset` + 1s
  /// [fadeType] Type of fade animation: `FADE_IN` or `FADE_OUT`.
  /// [startTimeOffset] The time to start the fade animation, in seconds. Default: 0
  /// [xy] Normalized coordinates based on output video resolution. Valid values: `0.0`–`1.0`. `xy` is the upper-left coordinate of the overlay object. For example, use the x and y coordinates {0,0} to position the top-left corner of the overlay animation in the top-left corner of the output video.
  AnimationFadeResponse({
    required this.endTimeOffset,
    required this.fadeType,
    required this.startTimeOffset,
    required this.xy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endTimeOffset'] = endTimeOffset;
    map['fadeType'] = fadeType;
    map['startTimeOffset'] = startTimeOffset;
    map['xy'] = xy.toMap();
    return map;
  }

  factory AnimationFadeResponse.fromMap(Map<String, dynamic> map) {
    return AnimationFadeResponse(
      endTimeOffset: map['endTimeOffset'] as String,
      fadeType: map['fadeType'] as String,
      startTimeOffset: map['startTimeOffset'] as String,
      xy: NormalizedCoordinateResponse.fromMap(
          (map['xy'] as Map).cast<String, dynamic>()),
    );
  }
}
