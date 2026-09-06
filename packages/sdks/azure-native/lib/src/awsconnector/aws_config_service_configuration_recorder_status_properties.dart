// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recorder_status_enum_value.dart';

/// Definition of awsConfigServiceConfigurationRecorderStatus
class AwsConfigServiceConfigurationRecorderStatusProperties {
  /// &lt;p&gt;The latest error code from when the recorder last failed.&lt;/p&gt;
  final pulumi.Input<String?>? lastErrorCode;
  /// &lt;p&gt;The latest error message from when the recorder last failed.&lt;/p&gt;
  final pulumi.Input<String?>? lastErrorMessage;
  /// &lt;p&gt;The time the recorder was last started.&lt;/p&gt;
  final pulumi.Input<String?>? lastStartTime;
  /// &lt;p&gt;The status of the latest recording event processed by the recorder.&lt;/p&gt;
  final pulumi.Input<RecorderStatusEnumValue?>? lastStatus;
  /// &lt;p&gt;The time of the latest change in status of an recording event processed by the recorder.&lt;/p&gt;
  final pulumi.Input<String?>? lastStatusChangeTime;
  /// &lt;p&gt;The time the recorder was last stopped.&lt;/p&gt;
  final pulumi.Input<String?>? lastStopTime;
  /// &lt;p&gt;The name of the configuration recorder.&lt;/p&gt;
  final pulumi.Input<String?>? name;
  /// &lt;p&gt;Specifies whether or not the recorder is currently recording.&lt;/p&gt;
  final pulumi.Input<bool?>? recording;

  /// Creates a new [AwsConfigServiceConfigurationRecorderStatusProperties].
  /// [lastErrorCode] &lt;p&gt;The latest error code from when the recorder last failed.&lt;/p&gt;
  /// [lastErrorMessage] &lt;p&gt;The latest error message from when the recorder last failed.&lt;/p&gt;
  /// [lastStartTime] &lt;p&gt;The time the recorder was last started.&lt;/p&gt;
  /// [lastStatus] &lt;p&gt;The status of the latest recording event processed by the recorder.&lt;/p&gt;
  /// [lastStatusChangeTime] &lt;p&gt;The time of the latest change in status of an recording event processed by the recorder.&lt;/p&gt;
  /// [lastStopTime] &lt;p&gt;The time the recorder was last stopped.&lt;/p&gt;
  /// [name] &lt;p&gt;The name of the configuration recorder.&lt;/p&gt;
  /// [recording] &lt;p&gt;Specifies whether or not the recorder is currently recording.&lt;/p&gt;
  const AwsConfigServiceConfigurationRecorderStatusProperties({
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
      'lastStatus': ?pulumi.Input.mapOptionalInputValue<RecorderStatusEnumValue, Map<String, dynamic>>(lastStatus, (value) => value.toMap()),
      'lastStatusChangeTime': ?lastStatusChangeTime,
      'lastStopTime': ?lastStopTime,
      'name': ?name,
      'recording': ?recording,
    };
  }

  factory AwsConfigServiceConfigurationRecorderStatusProperties.fromMap(Map<String, dynamic> map) {
    return AwsConfigServiceConfigurationRecorderStatusProperties(
      lastErrorCode: (() { final guardedValue = map['lastErrorCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastErrorMessage: (() { final guardedValue = map['lastErrorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastStartTime: (() { final guardedValue = map['lastStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastStatus: (() { final guardedValue = map['lastStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecorderStatusEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastStatusChangeTime: (() { final guardedValue = map['lastStatusChangeTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastStopTime: (() { final guardedValue = map['lastStopTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recording: (() { final guardedValue = map['recording']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
