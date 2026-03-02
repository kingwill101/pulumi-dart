// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Instance view status.
class MachineExtensionInstanceViewResponseStatus {
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

  /// Creates a new [MachineExtensionInstanceViewResponseStatus].
  /// [code] The status code.
  /// [displayStatus] The short localizable label for the status.
  /// [level] The level code.
  /// [message] The detailed status message, including for alerts and error messages.
  /// [time] The time of the status.
  MachineExtensionInstanceViewResponseStatus({
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

  factory MachineExtensionInstanceViewResponseStatus.fromMap(Map<String, dynamic> map) {
    return MachineExtensionInstanceViewResponseStatus(
      code: map['code'] == null ? null : (map['code'] as String).input(),
      displayStatus: map['displayStatus'] == null ? null : (map['displayStatus'] as String).input(),
      level: map['level'] == null ? null : (map['level'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
      time: map['time'] == null ? null : (map['time'] as String).input(),
    );
  }
}

