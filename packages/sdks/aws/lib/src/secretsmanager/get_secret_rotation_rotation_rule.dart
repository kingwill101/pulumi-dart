// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecretRotationRotationRule {
  /// Number of days between automatic scheduled rotations of the secret.
  final pulumi.Input<int> automaticallyAfterDays;
  /// Length of the rotation window in hours.
  final pulumi.Input<String> duration;
  /// `cron()` or `rate()` expression that defines the schedule for rotating the secret.
  final pulumi.Input<String> scheduleExpression;

  /// Creates a new [GetSecretRotationRotationRule].
  /// [automaticallyAfterDays] Number of days between automatic scheduled rotations of the secret.
  /// [duration] Length of the rotation window in hours.
  /// [scheduleExpression] `cron()` or `rate()` expression that defines the schedule for rotating the secret.
  const GetSecretRotationRotationRule({
    required this.automaticallyAfterDays,
    required this.duration,
    required this.scheduleExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticallyAfterDays': automaticallyAfterDays,
      'duration': duration,
      'scheduleExpression': scheduleExpression,
    };
  }

  factory GetSecretRotationRotationRule.fromMap(Map<String, dynamic> map) {
    return GetSecretRotationRotationRule(
      automaticallyAfterDays: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['automaticallyAfterDays'])),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      scheduleExpression: pulumi.Input.fromValue(map['scheduleExpression'] as String),
    );
  }
}
