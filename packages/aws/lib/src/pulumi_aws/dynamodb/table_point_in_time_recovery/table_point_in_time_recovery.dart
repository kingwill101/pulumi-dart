// ignore_for_file: unused_element, unnecessary_cast

class TablePointInTimeRecovery {
  /// Whether to enable point-in-time recovery. It can take 10 minutes to enable for new tables. If the <span pulumi-lang-nodejs="`pointInTimeRecovery`" pulumi-lang-dotnet="`PointInTimeRecovery`" pulumi-lang-go="`pointInTimeRecovery`" pulumi-lang-python="`point_in_time_recovery`" pulumi-lang-yaml="`pointInTimeRecovery`" pulumi-lang-java="`pointInTimeRecovery`">`point_in_time_recovery`</span> block is not provided, this defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool enabled;

  /// Number of preceding days for which continuous backups are taken and maintained. Default is 35.
  final int? recoveryPeriodInDays;

  TablePointInTimeRecovery({
    required this.enabled,
    this.recoveryPeriodInDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final recoveryPeriodInDaysValue = recoveryPeriodInDays;
    if (recoveryPeriodInDaysValue != null) {
      map['recoveryPeriodInDays'] = recoveryPeriodInDaysValue;
    }
    return map;
  }

  factory TablePointInTimeRecovery.fromMap(Map<String, dynamic> map) {
    return TablePointInTimeRecovery(
      enabled: map['enabled'] as bool,
      recoveryPeriodInDays: map['recoveryPeriodInDays'] == null
          ? null
          : map['recoveryPeriodInDays'] as int,
    );
  }
}
