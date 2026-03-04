// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Instance view status.
class InstanceViewStatusResponse {
  /// The status code.
  final pulumi.Input<String>? code;

  /// The short localizable label for the status.
  final pulumi.Input<String>? displayStatus;

  /// The level code.
  final pulumi.Input<String>? level;

  /// The detailed status message, including for alerts and error messages.
  final pulumi.Input<String>? message;

  /// The time of the status.
  final pulumi.Input<String>? time;

  /// Creates a new [InstanceViewStatusResponse].
  /// [code] The status code.
  /// [displayStatus] The short localizable label for the status.
  /// [level] The level code.
  /// [message] The detailed status message, including for alerts and error messages.
  /// [time] The time of the status.
  InstanceViewStatusResponse({
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
      'level': ?level,
      'message': ?message,
      'time': ?time,
    };
  }

  factory InstanceViewStatusResponse.fromMap(Map<String, dynamic> map) {
    return InstanceViewStatusResponse(
      code: (() {
        final guardedValue = map['code'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayStatus: (() {
        final guardedValue = map['displayStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      level: (() {
        final guardedValue = map['level'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      time: (() {
        final guardedValue = map['time'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
