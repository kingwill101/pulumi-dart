// ignore_for_file: unused_element, unnecessary_cast

class GetBackupPlanBackupRuleStandardScheduleWeekDayOfMonth {
  /// Specifies the day of the week. Possible values: ["DAY_OF_WEEK_UNSPECIFIED", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
  final String dayOfWeek;

  /// WeekOfMonth enumerates possible weeks in the month, e.g. the first, third, or last week of the month. Possible values: ["WEEK_OF_MONTH_UNSPECIFIED", "FIRST", "SECOND", "THIRD", "FOURTH", "LAST"]
  final String weekOfMonth;

  /// Creates a new [GetBackupPlanBackupRuleStandardScheduleWeekDayOfMonth].
  /// [dayOfWeek] Specifies the day of the week. Possible values: ["DAY_OF_WEEK_UNSPECIFIED", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
  /// [weekOfMonth] WeekOfMonth enumerates possible weeks in the month, e.g. the first, third, or last week of the month. Possible values: ["WEEK_OF_MONTH_UNSPECIFIED", "FIRST", "SECOND", "THIRD", "FOURTH", "LAST"]
  GetBackupPlanBackupRuleStandardScheduleWeekDayOfMonth({
    required this.dayOfWeek,
    required this.weekOfMonth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'weekOfMonth': weekOfMonth,
    };
  }

  factory GetBackupPlanBackupRuleStandardScheduleWeekDayOfMonth.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetBackupPlanBackupRuleStandardScheduleWeekDayOfMonth(
      dayOfWeek: map['dayOfWeek'] as String,
      weekOfMonth: map['weekOfMonth'] as String,
    );
  }
}
