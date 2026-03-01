// ignore_for_file: unused_element, unnecessary_cast

class GetSecretRotationRotationRule {
  /// Number of days between automatic scheduled rotations of the secret.
  final int automaticallyAfterDays;

  /// Length of the rotation window in hours.
  final String duration;

  /// A `cron()` or `rate()` expression that defines the schedule for rotating the secret.
  final String scheduleExpression;

  /// Creates a new [GetSecretRotationRotationRule].
  /// [automaticallyAfterDays] Number of days between automatic scheduled rotations of the secret.
  /// [duration] Length of the rotation window in hours.
  /// [scheduleExpression] A `cron()` or `rate()` expression that defines the schedule for rotating the secret.
  GetSecretRotationRotationRule({
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
      automaticallyAfterDays: map['automaticallyAfterDays'] as int,
      duration: map['duration'] as String,
      scheduleExpression: map['scheduleExpression'] as String,
    );
  }
}
