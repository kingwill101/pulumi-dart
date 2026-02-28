// ignore_for_file: unused_element, unnecessary_cast

class JobConfigMuxStreamSegmentSettings {
  /// Duration of the segments in seconds. The default is `6.0s`.
  final String? segmentDuration;

  /// Creates a new [JobConfigMuxStreamSegmentSettings].
  /// [segmentDuration] Duration of the segments in seconds. The default is `6.0s`.
  JobConfigMuxStreamSegmentSettings({
    this.segmentDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final segmentDurationValue = segmentDuration;
    if (segmentDurationValue != null) {
      map['segmentDuration'] = segmentDurationValue;
    }
    return map;
  }

  factory JobConfigMuxStreamSegmentSettings.fromMap(Map<String, dynamic> map) {
    return JobConfigMuxStreamSegmentSettings(
      segmentDuration: map['segmentDuration'] == null
          ? null
          : map['segmentDuration'] as String,
    );
  }
}
