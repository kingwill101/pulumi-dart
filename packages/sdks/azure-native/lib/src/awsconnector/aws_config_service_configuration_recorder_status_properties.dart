// ignore_for_file: unused_element, unnecessary_cast

import 'recorder_status_enum_value.dart';

/// Definition of awsConfigServiceConfigurationRecorderStatus
class AwsConfigServiceConfigurationRecorderStatusProperties {
  /// <p>The latest error code from when the recorder last failed.</p>
  final String? lastErrorCode;
  /// <p>The latest error message from when the recorder last failed.</p>
  final String? lastErrorMessage;
  /// <p>The time the recorder was last started.</p>
  final String? lastStartTime;
  /// <p>The status of the latest recording event processed by the recorder.</p>
  final RecorderStatusEnumValue? lastStatus;
  /// <p>The time of the latest change in status of an recording event processed by the recorder.</p>
  final String? lastStatusChangeTime;
  /// <p>The time the recorder was last stopped.</p>
  final String? lastStopTime;
  /// <p>The name of the configuration recorder.</p>
  final String? name;
  /// <p>Specifies whether or not the recorder is currently recording.</p>
  final bool? recording;

  /// Creates a new [AwsConfigServiceConfigurationRecorderStatusProperties].
  /// [lastErrorCode] <p>The latest error code from when the recorder last failed.</p>
  /// [lastErrorMessage] <p>The latest error message from when the recorder last failed.</p>
  /// [lastStartTime] <p>The time the recorder was last started.</p>
  /// [lastStatus] <p>The status of the latest recording event processed by the recorder.</p>
  /// [lastStatusChangeTime] <p>The time of the latest change in status of an recording event processed by the recorder.</p>
  /// [lastStopTime] <p>The time the recorder was last stopped.</p>
  /// [name] <p>The name of the configuration recorder.</p>
  /// [recording] <p>Specifies whether or not the recorder is currently recording.</p>
  AwsConfigServiceConfigurationRecorderStatusProperties({
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
      'lastStatus': ?lastStatus == null ? null : lastStatus!.toMap(),
      'lastStatusChangeTime': ?lastStatusChangeTime,
      'lastStopTime': ?lastStopTime,
      'name': ?name,
      'recording': ?recording,
    };
  }

  factory AwsConfigServiceConfigurationRecorderStatusProperties.fromMap(Map<String, dynamic> map) {
    return AwsConfigServiceConfigurationRecorderStatusProperties(
      lastErrorCode: map['lastErrorCode'] == null ? null : map['lastErrorCode'] as String,
      lastErrorMessage: map['lastErrorMessage'] == null ? null : map['lastErrorMessage'] as String,
      lastStartTime: map['lastStartTime'] == null ? null : map['lastStartTime'] as String,
      lastStatus: map['lastStatus'] == null ? null : RecorderStatusEnumValue.fromMap((map['lastStatus'] as Map).cast<String, dynamic>()),
      lastStatusChangeTime: map['lastStatusChangeTime'] == null ? null : map['lastStatusChangeTime'] as String,
      lastStopTime: map['lastStopTime'] == null ? null : map['lastStopTime'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      recording: map['recording'] == null ? null : map['recording'] as bool,
    );
  }
}

