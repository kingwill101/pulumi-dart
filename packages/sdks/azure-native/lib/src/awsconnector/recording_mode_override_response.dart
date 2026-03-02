// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recording_frequency_enum_value_response.dart';

/// Definition of RecordingModeOverride
class RecordingModeOverrideResponse {
  /// <p>A description that you provide for the override.</p>
  final pulumi.Input<String>? description;
  /// <p>The recording frequency that will be applied to all the resource types specified in the override.</p> <ul> <li> <p>Continuous recording allows you to record configuration changes continuously whenever a change occurs.</p> </li> <li> <p>Daily recording allows you to receive a configuration item (CI) representing the most recent state of your resources over the last 24-hour period, only if it’s different from the previous CI recorded. </p> </li> </ul> <note> <p>Firewall Manager depends on continuous recording to monitor your resources. If you are using Firewall Manager, it is recommended that you set the recording frequency to Continuous.</p> </note>
  final pulumi.Input<RecordingFrequencyEnumValueResponse>? recordingFrequency;
  /// <p>A comma-separated list that specifies which resource types Config includes in the override.</p> <important> <p>Daily recording is not supported for the following resource types:</p> <ul> <li> <p> <code>AWS::Config::ResourceCompliance</code> </p> </li> <li> <p> <code>AWS::Config::ConformancePackCompliance</code> </p> </li> <li> <p> <code>AWS::Config::ConfigurationRecorder</code> </p> </li> </ul> </important>
  final pulumi.Input<List<String>>? resourceTypes;

  /// Creates a new [RecordingModeOverrideResponse].
  /// [description] <p>A description that you provide for the override.</p>
  /// [recordingFrequency] <p>The recording frequency that will be applied to all the resource types specified in the override.</p> <ul> <li> <p>Continuous recording allows you to record configuration changes continuously whenever a change occurs.</p> </li> <li> <p>Daily recording allows you to receive a configuration item (CI) representing the most recent state of your resources over the last 24-hour period, only if it’s different from the previous CI recorded. </p> </li> </ul> <note> <p>Firewall Manager depends on continuous recording to monitor your resources. If you are using Firewall Manager, it is recommended that you set the recording frequency to Continuous.</p> </note>
  /// [resourceTypes] <p>A comma-separated list that specifies which resource types Config includes in the override.</p> <important> <p>Daily recording is not supported for the following resource types:</p> <ul> <li> <p> <code>AWS::Config::ResourceCompliance</code> </p> </li> <li> <p> <code>AWS::Config::ConformancePackCompliance</code> </p> </li> <li> <p> <code>AWS::Config::ConfigurationRecorder</code> </p> </li> </ul> </important>
  RecordingModeOverrideResponse({
    this.description,
    this.recordingFrequency,
    this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'recordingFrequency': ?pulumi.Input.mapOptionalInputValue<RecordingFrequencyEnumValueResponse, Map<String, dynamic>>(recordingFrequency, (value) => value.toMap()),
      'resourceTypes': ?resourceTypes,
    };
  }

  factory RecordingModeOverrideResponse.fromMap(Map<String, dynamic> map) {
    return RecordingModeOverrideResponse(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      recordingFrequency: map['recordingFrequency'] == null ? null : (RecordingFrequencyEnumValueResponse.fromMap((map['recordingFrequency']! as Map).cast<String, dynamic>())).input(),
      resourceTypes: map['resourceTypes'] == null ? null : ((map['resourceTypes']! as List).cast<String>()).input(),
    );
  }
}

