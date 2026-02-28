// ignore_for_file: unused_element, unnecessary_cast

class BackupPlanBackupRuleStandardScheduleWeekDayOfMonth {
  /// Specifies the day of the week.
  /// Possible values are: `DAY_OF_WEEK_UNSPECIFIED`, `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final String dayOfWeek;

  /// WeekOfMonth enumerates possible weeks in the month, e.g. the first, third, or last week of the month.
  /// Possible values are: `WEEK_OF_MONTH_UNSPECIFIED`, `FIRST`, `SECOND`, `THIRD`, `FOURTH`, `LAST`.
  final String weekOfMonth;

  /// Creates a new [BackupPlanBackupRuleStandardScheduleWeekDayOfMonth].
  /// [dayOfWeek] Specifies the day of the week.
  /// [weekOfMonth] WeekOfMonth enumerates possible weeks in the month, e.g. the first, third, or last week of the month.
  BackupPlanBackupRuleStandardScheduleWeekDayOfMonth({
    required this.dayOfWeek,
    required this.weekOfMonth,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeek'] = dayOfWeek;
    map['weekOfMonth'] = weekOfMonth;
    return map;
  }

  factory BackupPlanBackupRuleStandardScheduleWeekDayOfMonth.fromMap(
      Map<String, dynamic> map) {
    return BackupPlanBackupRuleStandardScheduleWeekDayOfMonth(
      dayOfWeek: map['dayOfWeek'] as String,
      weekOfMonth: map['weekOfMonth'] as String,
    );
  }
}
