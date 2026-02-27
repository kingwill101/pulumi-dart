// ignore_for_file: unused_element, unnecessary_cast

class SecretRotationRotationRules {
  /// Specifies the number of days between automatic scheduled rotations of the secret. Either `automatically_after_days` or `schedule_expression` must be specified.
  final int? automaticallyAfterDays;

  /// The length of the rotation window in hours. For example, `3h` for a three hour window.
  final String? duration;

  /// A `cron()` or `rate()` expression that defines the schedule for rotating your secret. Either `automatically_after_days` or `schedule_expression` must be specified.
  final String? scheduleExpression;

  SecretRotationRotationRules({
    this.automaticallyAfterDays,
    this.duration,
    this.scheduleExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final automaticallyAfterDaysValue = automaticallyAfterDays;
    if (automaticallyAfterDaysValue != null) {
      map['automaticallyAfterDays'] = automaticallyAfterDaysValue;
    }
    final durationValue = duration;
    if (durationValue != null) {
      map['duration'] = durationValue;
    }
    final scheduleExpressionValue = scheduleExpression;
    if (scheduleExpressionValue != null) {
      map['scheduleExpression'] = scheduleExpressionValue;
    }
    return map;
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
