// ignore_for_file: unused_element, unnecessary_cast

import 'week_day_of_month_response2.dart';

/// Represents a monthly schedule. An example of a valid monthly schedule is "on the third Tuesday of the month" or "on the 15th of the month".
class MonthlyScheduleResponse2 {
  /// One day of the month. 1-31 indicates the 1st to the 31st day. -1 indicates the last day of the month. Months without the target day will be skipped. For example, a schedule to run "every month on the 31st" will not run in February, April, June, etc.
  final int monthDay;

  /// Week day in a month.
  final WeekDayOfMonthResponse2 weekDayOfMonth;

  MonthlyScheduleResponse2({
    required this.monthDay,
    required this.weekDayOfMonth,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['monthDay'] = monthDay;
    map['weekDayOfMonth'] = weekDayOfMonth.toMap();
    return map;
  }

  factory MonthlyScheduleResponse2.fromMap(Map<String, dynamic> map) {
    return MonthlyScheduleResponse2(
      monthDay: map['monthDay'] as int,
      weekDayOfMonth: WeekDayOfMonthResponse2.fromMap(
          (map['weekDayOfMonth'] as Map).cast<String, dynamic>()),
    );
  }
}
