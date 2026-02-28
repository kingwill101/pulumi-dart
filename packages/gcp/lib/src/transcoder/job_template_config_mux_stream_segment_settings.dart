// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateConfigMuxStreamSegmentSettings {
  /// Duration of the segments in seconds. The default is `6.0s`.
  final String? segmentDuration;

  /// Creates a new [JobTemplateConfigMuxStreamSegmentSettings].
  /// [segmentDuration] Duration of the segments in seconds. The default is `6.0s`.
  JobTemplateConfigMuxStreamSegmentSettings({
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

  factory JobTemplateConfigMuxStreamSegmentSettings.fromMap(
      Map<String, dynamic> map) {
    return JobTemplateConfigMuxStreamSegmentSettings(
      segmentDuration: map['segmentDuration'] == null
          ? null
          : map['segmentDuration'] as String,
    );
  }
}
