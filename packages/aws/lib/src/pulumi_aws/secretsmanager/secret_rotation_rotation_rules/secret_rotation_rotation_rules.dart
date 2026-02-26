// ignore_for_file: unused_element, unnecessary_cast

class SecretRotationRotationRules {
  /// Specifies the number of days between automatic scheduled rotations of the secret. Either <span pulumi-lang-nodejs="`automaticallyAfterDays`" pulumi-lang-dotnet="`AutomaticallyAfterDays`" pulumi-lang-go="`automaticallyAfterDays`" pulumi-lang-python="`automatically_after_days`" pulumi-lang-yaml="`automaticallyAfterDays`" pulumi-lang-java="`automaticallyAfterDays`">`automatically_after_days`</span> or <span pulumi-lang-nodejs="`scheduleExpression`" pulumi-lang-dotnet="`ScheduleExpression`" pulumi-lang-go="`scheduleExpression`" pulumi-lang-python="`schedule_expression`" pulumi-lang-yaml="`scheduleExpression`" pulumi-lang-java="`scheduleExpression`">`schedule_expression`</span> must be specified.
  final int? automaticallyAfterDays;

  /// The length of the rotation window in hours. For example, <span pulumi-lang-nodejs="`3h`" pulumi-lang-dotnet="`3h`" pulumi-lang-go="`3h`" pulumi-lang-python="`3h`" pulumi-lang-yaml="`3h`" pulumi-lang-java="`3h`">`3h`</span> for a three hour window.
  final String? duration;

  /// A `cron()` or `rate()` expression that defines the schedule for rotating your secret. Either <span pulumi-lang-nodejs="`automaticallyAfterDays`" pulumi-lang-dotnet="`AutomaticallyAfterDays`" pulumi-lang-go="`automaticallyAfterDays`" pulumi-lang-python="`automatically_after_days`" pulumi-lang-yaml="`automaticallyAfterDays`" pulumi-lang-java="`automaticallyAfterDays`">`automatically_after_days`</span> or <span pulumi-lang-nodejs="`scheduleExpression`" pulumi-lang-dotnet="`ScheduleExpression`" pulumi-lang-go="`scheduleExpression`" pulumi-lang-python="`schedule_expression`" pulumi-lang-yaml="`scheduleExpression`" pulumi-lang-java="`scheduleExpression`">`schedule_expression`</span> must be specified.
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
