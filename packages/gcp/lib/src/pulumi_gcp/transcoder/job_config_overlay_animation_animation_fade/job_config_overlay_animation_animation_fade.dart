// ignore_for_file: unused_element, unnecessary_cast

import '../job_config_overlay_animation_animation_fade_xy/job_config_overlay_animation_animation_fade_xy.dart';

class JobConfigOverlayAnimationAnimationFade {
  /// The time to end the fade animation, in seconds.
  final String? endTimeOffset;

  /// Required. Type of fade animation: `FADE_IN` or `FADE_OUT`.
  /// The possible values are:
  /// * `FADE_TYPE_UNSPECIFIED`: The fade type is not specified.
  /// * `FADE_IN`: Fade the overlay object into view.
  /// * `FADE_OUT`: Fade the overlay object out of view.
  /// Possible values are: `FADE_TYPE_UNSPECIFIED`, `FADE_IN`, `FADE_OUT`.
  final String fadeType;

  /// The time to start the fade animation, in seconds.
  final String? startTimeOffset;

  /// Normalized coordinates based on output video resolution.
  /// Structure is documented below.
  final JobConfigOverlayAnimationAnimationFadeXy? xy;

  JobConfigOverlayAnimationAnimationFade({
    this.endTimeOffset,
    required this.fadeType,
    this.startTimeOffset,
    this.xy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endTimeOffsetValue = endTimeOffset;
    if (endTimeOffsetValue != null) {
      map['endTimeOffset'] = endTimeOffsetValue;
    }
    map['fadeType'] = fadeType;
    final startTimeOffsetValue = startTimeOffset;
    if (startTimeOffsetValue != null) {
      map['startTimeOffset'] = startTimeOffsetValue;
    }
    final xyValue = xy;
    if (xyValue != null) {
      map['xy'] = xyValue.toMap();
    }
    return map;
  }

  factory JobConfigOverlayAnimationAnimationFade.fromMap(
      Map<String, dynamic> map) {
    return JobConfigOverlayAnimationAnimationFade(
      endTimeOffset:
          map['endTimeOffset'] == null ? null : map['endTimeOffset'] as String,
      fadeType: map['fadeType'] as String,
      startTimeOffset: map['startTimeOffset'] == null
          ? null
          : map['startTimeOffset'] as String,
      xy: map['xy'] == null
          ? null
          : JobConfigOverlayAnimationAnimationFadeXy.fromMap(
              (map['xy'] as Map).cast<String, dynamic>()),
    );
  }
}
