// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecretRotationRotationRules {
  /// Number of days between automatic scheduled rotations of the secret. Either `automaticallyAfterDays` or `scheduleExpression` must be specified.
  final pulumi.Input<int>? automaticallyAfterDays;
  /// The length of the rotation window in hours. For example, `3h` for a three hour window.
  final pulumi.Input<String>? duration;
  /// `cron()` or `rate()` expression that defines the schedule for rotating your secret. Either `automaticallyAfterDays` or `scheduleExpression` must be specified.
  final pulumi.Input<String>? scheduleExpression;

  /// Creates a new [SecretRotationRotationRules].
  /// [automaticallyAfterDays] Number of days between automatic scheduled rotations of the secret. Either `automaticallyAfterDays` or `scheduleExpression` must be specified.
  /// [duration] The length of the rotation window in hours. For example, `3h` for a three hour window.
  /// [scheduleExpression] `cron()` or `rate()` expression that defines the schedule for rotating your secret. Either `automaticallyAfterDays` or `scheduleExpression` must be specified.
  const SecretRotationRotationRules({
    this.automaticallyAfterDays,
    this.duration,
    this.scheduleExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticallyAfterDays': ?automaticallyAfterDays,
      'duration': ?duration,
      'scheduleExpression': ?scheduleExpression,
    };
  }

  factory SecretRotationRotationRules.fromMap(Map<String, dynamic> map) {
    return SecretRotationRotationRules(
      automaticallyAfterDays: (() { final guardedValue = map['automaticallyAfterDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleExpression: (() { final guardedValue = map['scheduleExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
