// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_level_types.dart';

/// Instance view status.
class InstanceViewStatus {
  /// The status code.
  final pulumi.Input<String>? code;
  /// The short localizable label for the status.
  final pulumi.Input<String>? displayStatus;
  /// The level code.
  final pulumi.Input<StatusLevelTypes>? level;
  /// The detailed status message, including for alerts and error messages.
  final pulumi.Input<String>? message;
  /// The time of the status.
  final pulumi.Input<String>? time;

  /// Creates a new [InstanceViewStatus].
  /// [code] The status code.
  /// [displayStatus] The short localizable label for the status.
  /// [level] The level code.
  /// [message] The detailed status message, including for alerts and error messages.
  /// [time] The time of the status.
  const InstanceViewStatus({
    this.code,
    this.displayStatus,
    this.level,
    this.message,
    this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'displayStatus': ?displayStatus,
      'level': ?pulumi.Input.mapOptionalInputValue<StatusLevelTypes, String>(level, (value) => value.wireValue),
      'message': ?message,
      'time': ?time,
    };
  }

  factory InstanceViewStatus.fromMap(Map<String, dynamic> map) {
    return InstanceViewStatus(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayStatus: (() { final guardedValue = map['displayStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatusLevelTypes.fromValue(guardedValue as String)); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      time: (() { final guardedValue = map['time']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
