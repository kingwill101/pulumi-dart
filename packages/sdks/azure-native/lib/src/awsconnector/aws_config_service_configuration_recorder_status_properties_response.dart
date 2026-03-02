// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recorder_status_enum_value_response.dart';

/// Definition of awsConfigServiceConfigurationRecorderStatus
class AwsConfigServiceConfigurationRecorderStatusPropertiesResponse {
  /// <p>The latest error code from when the recorder last failed.</p>
  final pulumi.Input<String>? lastErrorCode;
  /// <p>The latest error message from when the recorder last failed.</p>
  final pulumi.Input<String>? lastErrorMessage;
  /// <p>The time the recorder was last started.</p>
  final pulumi.Input<String>? lastStartTime;
  /// <p>The status of the latest recording event processed by the recorder.</p>
  final pulumi.Input<RecorderStatusEnumValueResponse>? lastStatus;
  /// <p>The time of the latest change in status of an recording event processed by the recorder.</p>
  final pulumi.Input<String>? lastStatusChangeTime;
  /// <p>The time the recorder was last stopped.</p>
  final pulumi.Input<String>? lastStopTime;
  /// <p>The name of the configuration recorder.</p>
  final pulumi.Input<String>? name;
  /// <p>Specifies whether or not the recorder is currently recording.</p>
  final pulumi.Input<bool>? recording;

  /// Creates a new [AwsConfigServiceConfigurationRecorderStatusPropertiesResponse].
  /// [lastErrorCode] <p>The latest error code from when the recorder last failed.</p>
  /// [lastErrorMessage] <p>The latest error message from when the recorder last failed.</p>
  /// [lastStartTime] <p>The time the recorder was last started.</p>
  /// [lastStatus] <p>The status of the latest recording event processed by the recorder.</p>
  /// [lastStatusChangeTime] <p>The time of the latest change in status of an recording event processed by the recorder.</p>
  /// [lastStopTime] <p>The time the recorder was last stopped.</p>
  /// [name] <p>The name of the configuration recorder.</p>
  /// [recording] <p>Specifies whether or not the recorder is currently recording.</p>
  AwsConfigServiceConfigurationRecorderStatusPropertiesResponse({
    this.lastErrorCode,
    this.lastErrorMessage,
    this.lastStartTime,
    this.lastStatus,
    this.lastStatusChangeTime,
    this.lastStopTime,
    this.name,
    this.recording,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastErrorCode': ?lastErrorCode,
      'lastErrorMessage': ?lastErrorMessage,
      'lastStartTime': ?lastStartTime,
      'lastStatus': ?pulumi.Input.mapOptionalInputValue<RecorderStatusEnumValueResponse, Map<String, dynamic>>(lastStatus, (value) => value.toMap()),
      'lastStatusChangeTime': ?lastStatusChangeTime,
      'lastStopTime': ?lastStopTime,
      'name': ?name,
      'recording': ?recording,
    };
  }

  factory AwsConfigServiceConfigurationRecorderStatusPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsConfigServiceConfigurationRecorderStatusPropertiesResponse(
      lastErrorCode: map['lastErrorCode'] == null ? null : (map['lastErrorCode']! as String).input(),
      lastErrorMessage: map['lastErrorMessage'] == null ? null : (map['lastErrorMessage']! as String).input(),
      lastStartTime: map['lastStartTime'] == null ? null : (map['lastStartTime']! as String).input(),
      lastStatus: map['lastStatus'] == null ? null : (RecorderStatusEnumValueResponse.fromMap((map['lastStatus']! as Map).cast<String, dynamic>())).input(),
      lastStatusChangeTime: map['lastStatusChangeTime'] == null ? null : (map['lastStatusChangeTime']! as String).input(),
      lastStopTime: map['lastStopTime'] == null ? null : (map['lastStopTime']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      recording: map['recording'] == null ? null : (map['recording']! as bool).input(),
    );
  }
}

