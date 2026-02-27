// ignore_for_file: unused_element, unnecessary_cast

class TablePointInTimeRecovery {
  /// Whether to enable point-in-time recovery. It can take 10 minutes to enable for new tables. If the `point_in_time_recovery` block is not provided, this defaults to `false`.
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
