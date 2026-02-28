// ignore_for_file: unused_element, unnecessary_cast

import 'normalized_coordinate.dart';

/// Display static overlay object.
class AnimationStatic {
  /// The time to start displaying the overlay object, in seconds. Default: 0
  final String? startTimeOffset;
  /// Normalized coordinates based on output video resolution. Valid values: `0.0`–`1.0`. `xy` is the upper-left coordinate of the overlay object. For example, use the x and y coordinates {0,0} to position the top-left corner of the overlay animation in the top-left corner of the output video.
  final NormalizedCoordinate? xy;

  /// Creates a new [AnimationStatic].
  /// [startTimeOffset] The time to start displaying the overlay object, in seconds. Default: 0
  /// [xy] Normalized coordinates based on output video resolution. Valid values: `0.0`–`1.0`. `xy` is the upper-left coordinate of the overlay object. For example, use the x and y coordinates {0,0} to position the top-left corner of the overlay animation in the top-left corner of the output video.
  AnimationStatic({
    this.startTimeOffset,
    this.xy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startTimeOffset': ?startTimeOffset,
      'xy': ?xy == null ? null : xy!.toMap(),
    };
  }

  factory AnimationStatic.fromMap(Map<String, dynamic> map) {
    return AnimationStatic(
      startTimeOffset: map['startTimeOffset'] == null ? null : map['startTimeOffset'] as String,
      xy: map['xy'] == null ? null : NormalizedCoordinate.fromMap((map['xy'] as Map).cast<String, dynamic>()),
    );
  }
}

