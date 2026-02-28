// ignore_for_file: unused_element, unnecessary_cast

import 'recorder_recording_mode_recording_mode_override.dart';

class RecorderRecordingMode {
  /// Default recording frequency. `CONTINUOUS` or `DAILY`.
  final String? recordingFrequency;

  /// Recording mode overrides. Detailed below.
  final RecorderRecordingModeRecordingModeOverride? recordingModeOverride;

  /// Creates a new [RecorderRecordingMode].
  /// [recordingFrequency] Default recording frequency. `CONTINUOUS` or `DAILY`.
  /// [recordingModeOverride] Recording mode overrides. Detailed below.
  RecorderRecordingMode({
    this.recordingFrequency,
    this.recordingModeOverride,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final recordingFrequencyValue = recordingFrequency;
    if (recordingFrequencyValue != null) {
      map['recordingFrequency'] = recordingFrequencyValue;
    }
    final recordingModeOverrideValue = recordingModeOverride;
    if (recordingModeOverrideValue != null) {
      map['recordingModeOverride'] = recordingModeOverrideValue.toMap();
    }
    return map;
  }

  factory RecorderRecordingMode.fromMap(Map<String, dynamic> map) {
    return RecorderRecordingMode(
      recordingFrequency: map['recordingFrequency'] == null
          ? null
          : map['recordingFrequency'] as String,
      recordingModeOverride: map['recordingModeOverride'] == null
          ? null
          : RecorderRecordingModeRecordingModeOverride.fromMap(
              (map['recordingModeOverride'] as Map).cast<String, dynamic>()),
    );
  }
}
