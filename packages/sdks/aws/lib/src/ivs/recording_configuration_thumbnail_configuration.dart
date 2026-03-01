// ignore_for_file: unused_element, unnecessary_cast


class RecordingConfigurationThumbnailConfiguration {
  /// Thumbnail recording mode. Valid values: `DISABLED`, `INTERVAL`.
  final String? recordingMode;
  /// The targeted thumbnail-generation interval in seconds.
  final int? targetIntervalSeconds;

  /// Creates a new [RecordingConfigurationThumbnailConfiguration].
  /// [recordingMode] Thumbnail recording mode. Valid values: `DISABLED`, `INTERVAL`.
  /// [targetIntervalSeconds] The targeted thumbnail-generation interval in seconds.
  RecordingConfigurationThumbnailConfiguration({
    this.recordingMode,
    this.targetIntervalSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordingMode': ?recordingMode,
      'targetIntervalSeconds': ?targetIntervalSeconds,
    };
  }

  factory RecordingConfigurationThumbnailConfiguration.fromMap(Map<String, dynamic> map) {
    return RecordingConfigurationThumbnailConfiguration(
      recordingMode: map['recordingMode'] == null ? null : map['recordingMode'] as String,
      targetIntervalSeconds: map['targetIntervalSeconds'] == null ? null : map['targetIntervalSeconds'] as int,
    );
  }
}

