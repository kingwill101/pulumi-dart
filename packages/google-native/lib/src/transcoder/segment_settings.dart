// ignore_for_file: unused_element, unnecessary_cast

/// Segment settings for `ts`, `fmp4` and `vtt`.
class SegmentSettings {
  /// Create an individual segment file. The default is `false`.
  final bool individualSegments;

  /// Duration of the segments in seconds. The default is `6.0s`. Note that `segmentDuration` must be greater than or equal to [`gopDuration`](#videostream), and `segmentDuration` must be divisible by [`gopDuration`](#videostream).
  final String? segmentDuration;

  /// Creates a new [SegmentSettings].
  /// [individualSegments] Create an individual segment file. The default is `false`.
  /// [segmentDuration] Duration of the segments in seconds. The default is `6.0s`. Note that `segmentDuration` must be greater than or equal to [`gopDuration`](#videostream), and `segmentDuration` must be divisible by [`gopDuration`](#videostream).
  SegmentSettings({required this.individualSegments, this.segmentDuration});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'individualSegments': individualSegments,
      'segmentDuration': ?segmentDuration,
    };
  }

  factory SegmentSettings.fromMap(Map<String, dynamic> map) {
    return SegmentSettings(
      individualSegments: map['individualSegments'] as bool,
      segmentDuration: map['segmentDuration'] == null
          ? null
          : map['segmentDuration'] as String,
    );
  }
}
