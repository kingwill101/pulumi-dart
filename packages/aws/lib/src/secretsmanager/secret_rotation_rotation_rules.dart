// ignore_for_file: unused_element, unnecessary_cast

class SecretRotationRotationRules {
  /// Specifies the number of days between automatic scheduled rotations of the secret. Either `automatically_after_days` or `schedule_expression` must be specified.
  final int? automaticallyAfterDays;

  /// The length of the rotation window in hours. For example, `3h` for a three hour window.
  final String? duration;

  /// A `cron()` or `rate()` expression that defines the schedule for rotating your secret. Either `automatically_after_days` or `schedule_expression` must be specified.
  final String? scheduleExpression;

  /// Creates a new [SecretRotationRotationRules].
  /// [automaticallyAfterDays] Specifies the number of days between automatic scheduled rotations of the secret. Either `automatically_after_days` or `schedule_expression` must be specified.
  /// [duration] The length of the rotation window in hours. For example, `3h` for a three hour window.
  /// [scheduleExpression] A `cron()` or `rate()` expression that defines the schedule for rotating your secret. Either `automatically_after_days` or `schedule_expression` must be specified.
  SecretRotationRotationRules({
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
      automaticallyAfterDays: map['automaticallyAfterDays'] == null
          ? null
          : map['automaticallyAfterDays'] as int,
      duration: map['duration'] == null ? null : map['duration'] as String,
      scheduleExpression: map['scheduleExpression'] == null
          ? null
          : map['scheduleExpression'] as String,
    );
  }
}
