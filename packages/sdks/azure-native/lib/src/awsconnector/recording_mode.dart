// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recording_frequency_enum_value.dart';
import 'recording_mode_override.dart';

/// Definition of RecordingMode
class RecordingMode {
  /// <p>The default recording frequency that Config uses to record configuration changes.</p> <important> <p>Daily recording is not supported for the following resource types:</p> <ul> <li> <p> <code>AWS::Config::ResourceCompliance</code> </p> </li> <li> <p> <code>AWS::Config::ConformancePackCompliance</code> </p> </li> <li> <p> <code>AWS::Config::ConfigurationRecorder</code> </p> </li> </ul> <p>For the <b>allSupported</b> (<code>ALL_SUPPORTED_RESOURCE_TYPES</code>) recording strategy, these resource types will be set to Continuous recording.</p> </important>
  final pulumi.Input<RecordingFrequencyEnumValue>? recordingFrequency;
  /// <p>An array of <code>recordingModeOverride</code> objects for you to specify your overrides for the recording mode. The <code>recordingModeOverride</code> object in the <code>recordingModeOverrides</code> array consists of three fields: a <code>description</code>, the new <code>recordingFrequency</code>, and an array of <code>resourceTypes</code> to override.</p>
  final pulumi.Input<List<RecordingModeOverride>>? recordingModeOverrides;

  /// Creates a new [RecordingMode].
  /// [recordingFrequency] <p>The default recording frequency that Config uses to record configuration changes.</p> <important> <p>Daily recording is not supported for the following resource types:</p> <ul> <li> <p> <code>AWS::Config::ResourceCompliance</code> </p> </li> <li> <p> <code>AWS::Config::ConformancePackCompliance</code> </p> </li> <li> <p> <code>AWS::Config::ConfigurationRecorder</code> </p> </li> </ul> <p>For the <b>allSupported</b> (<code>ALL_SUPPORTED_RESOURCE_TYPES</code>) recording strategy, these resource types will be set to Continuous recording.</p> </important>
  /// [recordingModeOverrides] <p>An array of <code>recordingModeOverride</code> objects for you to specify your overrides for the recording mode. The <code>recordingModeOverride</code> object in the <code>recordingModeOverrides</code> array consists of three fields: a <code>description</code>, the new <code>recordingFrequency</code>, and an array of <code>resourceTypes</code> to override.</p>
  RecordingMode({
    this.recordingFrequency,
    this.recordingModeOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordingFrequency': ?pulumi.Input.mapOptionalInputValue<RecordingFrequencyEnumValue, Map<String, dynamic>>(recordingFrequency, (value) => value.toMap()),
      'recordingModeOverrides': ?pulumi.Input.mapOptionalInputValue<List<RecordingModeOverride>, List<Map<String, dynamic>>>(recordingModeOverrides, (value) => pulumi.Input.encodeList<RecordingModeOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RecordingMode.fromMap(Map<String, dynamic> map) {
    return RecordingMode(
      recordingFrequency: map['recordingFrequency'] == null ? null : (RecordingFrequencyEnumValue.fromMap((map['recordingFrequency'] as Map).cast<String, dynamic>())).input(),
      recordingModeOverrides: map['recordingModeOverrides'] == null ? null : (pulumi.Input.decodeList<RecordingModeOverride>(map['recordingModeOverrides'], (value) => RecordingModeOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

