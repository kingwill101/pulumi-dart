// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recording_frequency_enum_value_response.dart';
import 'recording_mode_override_response.dart';

/// Definition of RecordingMode
class RecordingModeResponse {
  /// <p>The default recording frequency that Config uses to record configuration changes.</p> <important> <p>Daily recording is not supported for the following resource types:</p> <ul> <li> <p> <code>AWS::Config::ResourceCompliance</code> </p> </li> <li> <p> <code>AWS::Config::ConformancePackCompliance</code> </p> </li> <li> <p> <code>AWS::Config::ConfigurationRecorder</code> </p> </li> </ul> <p>For the <b>allSupported</b> (<code>ALL_SUPPORTED_RESOURCE_TYPES</code>) recording strategy, these resource types will be set to Continuous recording.</p> </important>
  final pulumi.Input<RecordingFrequencyEnumValueResponse>? recordingFrequency;
  /// <p>An array of <code>recordingModeOverride</code> objects for you to specify your overrides for the recording mode. The <code>recordingModeOverride</code> object in the <code>recordingModeOverrides</code> array consists of three fields: a <code>description</code>, the new <code>recordingFrequency</code>, and an array of <code>resourceTypes</code> to override.</p>
  final pulumi.Input<List<RecordingModeOverrideResponse>>? recordingModeOverrides;

  /// Creates a new [RecordingModeResponse].
  /// [recordingFrequency] <p>The default recording frequency that Config uses to record configuration changes.</p> <important> <p>Daily recording is not supported for the following resource types:</p> <ul> <li> <p> <code>AWS::Config::ResourceCompliance</code> </p> </li> <li> <p> <code>AWS::Config::ConformancePackCompliance</code> </p> </li> <li> <p> <code>AWS::Config::ConfigurationRecorder</code> </p> </li> </ul> <p>For the <b>allSupported</b> (<code>ALL_SUPPORTED_RESOURCE_TYPES</code>) recording strategy, these resource types will be set to Continuous recording.</p> </important>
  /// [recordingModeOverrides] <p>An array of <code>recordingModeOverride</code> objects for you to specify your overrides for the recording mode. The <code>recordingModeOverride</code> object in the <code>recordingModeOverrides</code> array consists of three fields: a <code>description</code>, the new <code>recordingFrequency</code>, and an array of <code>resourceTypes</code> to override.</p>
  RecordingModeResponse({
    this.recordingFrequency,
    this.recordingModeOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordingFrequency': ?pulumi.Input.mapOptionalInputValue<RecordingFrequencyEnumValueResponse, Map<String, dynamic>>(recordingFrequency, (value) => value.toMap()),
      'recordingModeOverrides': ?pulumi.Input.mapOptionalInputValue<List<RecordingModeOverrideResponse>, List<Map<String, dynamic>>>(recordingModeOverrides, (value) => pulumi.Input.encodeList<RecordingModeOverrideResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RecordingModeResponse.fromMap(Map<String, dynamic> map) {
    return RecordingModeResponse(
      recordingFrequency: map['recordingFrequency'] == null ? null : (RecordingFrequencyEnumValueResponse.fromMap((map['recordingFrequency']! as Map).cast<String, dynamic>())).input(),
      recordingModeOverrides: map['recordingModeOverrides'] == null ? null : (pulumi.Input.decodeList<RecordingModeOverrideResponse>(map['recordingModeOverrides']!, (value) => RecordingModeOverrideResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

