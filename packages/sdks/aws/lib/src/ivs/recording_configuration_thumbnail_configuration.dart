// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecordingConfigurationThumbnailConfiguration {
  /// Thumbnail recording mode. Valid values: `DISABLED`, `INTERVAL`.
  final pulumi.Input<String>? recordingMode;
  /// The targeted thumbnail-generation interval in seconds.
  final pulumi.Input<int>? targetIntervalSeconds;

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
      recordingMode: map['recordingMode'] == null ? null : ((map['recordingMode'] as String).input()).input(),
      targetIntervalSeconds: map['targetIntervalSeconds'] == null ? null : ((map['targetIntervalSeconds'] as int).input()).input(),
    );
  }
}

