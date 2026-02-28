// ignore_for_file: unused_element, unnecessary_cast

class RefreshScheduleScheduleScheduleFrequencyRefreshOnDay {
  /// The day of the month that you want to schedule refresh on.
  final String? dayOfMonth;

  /// The day of the week that you want to schedule a refresh on. Valid values are `SUNDAY`, `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY` and `SATURDAY`.
  final String? dayOfWeek;

  /// Creates a new [RefreshScheduleScheduleScheduleFrequencyRefreshOnDay].
  /// [dayOfMonth] The day of the month that you want to schedule refresh on.
  /// [dayOfWeek] The day of the week that you want to schedule a refresh on. Valid values are `SUNDAY`, `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY` and `SATURDAY`.
  RefreshScheduleScheduleScheduleFrequencyRefreshOnDay({
    this.dayOfMonth,
    this.dayOfWeek,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dayOfMonthValue = dayOfMonth;
    if (dayOfMonthValue != null) {
      map['dayOfMonth'] = dayOfMonthValue;
    }
    final dayOfWeekValue = dayOfWeek;
    if (dayOfWeekValue != null) {
      map['dayOfWeek'] = dayOfWeekValue;
    }
    return map;
  }

  factory RefreshScheduleScheduleScheduleFrequencyRefreshOnDay.fromMap(
      Map<String, dynamic> map) {
    return RefreshScheduleScheduleScheduleFrequencyRefreshOnDay(
      dayOfMonth:
          map['dayOfMonth'] == null ? null : map['dayOfMonth'] as String,
      dayOfWeek: map['dayOfWeek'] == null ? null : map['dayOfWeek'] as String,
    );
  }
}
