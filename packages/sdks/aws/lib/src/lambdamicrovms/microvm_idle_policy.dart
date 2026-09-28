// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MicrovmIdlePolicy {
  /// Whether to automatically resume the MicroVM when it receives a request while suspended.
  final pulumi.Input<bool> autoResumeEnabled;
  /// Number of seconds without traffic after which the MicroVM is suspended.
  final pulumi.Input<int> maxIdleDurationSeconds;
  /// Number of seconds a MicroVM remains suspended before it is automatically terminated.
  final pulumi.Input<int> suspendedDurationSeconds;

  /// Creates a new [MicrovmIdlePolicy].
  /// [autoResumeEnabled] Whether to automatically resume the MicroVM when it receives a request while suspended.
  /// [maxIdleDurationSeconds] Number of seconds without traffic after which the MicroVM is suspended.
  /// [suspendedDurationSeconds] Number of seconds a MicroVM remains suspended before it is automatically terminated.
  const MicrovmIdlePolicy({
    required this.autoResumeEnabled,
    required this.maxIdleDurationSeconds,
    required this.suspendedDurationSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoResumeEnabled': autoResumeEnabled,
      'maxIdleDurationSeconds': maxIdleDurationSeconds,
      'suspendedDurationSeconds': suspendedDurationSeconds,
    };
  }

  factory MicrovmIdlePolicy.fromMap(Map<String, dynamic> map) {
    return MicrovmIdlePolicy(
      autoResumeEnabled: pulumi.Input.fromValue(map['autoResumeEnabled'] as bool),
      maxIdleDurationSeconds: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxIdleDurationSeconds'])),
      suspendedDurationSeconds: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['suspendedDurationSeconds'])),
    );
  }
}
