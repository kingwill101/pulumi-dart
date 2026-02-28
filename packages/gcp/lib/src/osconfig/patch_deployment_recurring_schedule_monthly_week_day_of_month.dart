// ignore_for_file: unused_element, unnecessary_cast

class PatchDeploymentRecurringScheduleMonthlyWeekDayOfMonth {
  /// A day of the week.
  /// Possible values are: `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final String dayOfWeek;

  /// Represents the number of days before or after the given week day of month that the patch deployment is scheduled for.
  final int? dayOffset;

  /// Week number in a month. 1-4 indicates the 1st to 4th week of the month. -1 indicates the last week of the month.
  final int weekOrdinal;

  /// Creates a new [PatchDeploymentRecurringScheduleMonthlyWeekDayOfMonth].
  /// [dayOfWeek] A day of the week.
  /// [dayOffset] Represents the number of days before or after the given week day of month that the patch deployment is scheduled for.
  /// [weekOrdinal] Week number in a month. 1-4 indicates the 1st to 4th week of the month. -1 indicates the last week of the month.
  PatchDeploymentRecurringScheduleMonthlyWeekDayOfMonth({
    required this.dayOfWeek,
    this.dayOffset,
    required this.weekOrdinal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeek'] = dayOfWeek;
    final dayOffsetValue = dayOffset;
    if (dayOffsetValue != null) {
      map['dayOffset'] = dayOffsetValue;
    }
    map['weekOrdinal'] = weekOrdinal;
    return map;
  }

  factory PatchDeploymentRecurringScheduleMonthlyWeekDayOfMonth.fromMap(
      Map<String, dynamic> map) {
    return PatchDeploymentRecurringScheduleMonthlyWeekDayOfMonth(
      dayOfWeek: map['dayOfWeek'] as String,
      dayOffset: map['dayOffset'] == null ? null : map['dayOffset'] as int,
      weekOrdinal: map['weekOrdinal'] as int,
    );
  }
}
