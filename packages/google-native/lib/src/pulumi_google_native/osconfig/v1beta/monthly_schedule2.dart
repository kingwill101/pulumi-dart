// ignore_for_file: unused_element, unnecessary_cast

import 'week_day_of_month2.dart';

/// Represents a monthly schedule. An example of a valid monthly schedule is "on the third Tuesday of the month" or "on the 15th of the month".
class MonthlySchedule2 {
  /// One day of the month. 1-31 indicates the 1st to the 31st day. -1 indicates the last day of the month. Months without the target day will be skipped. For example, a schedule to run "every month on the 31st" will not run in February, April, June, etc.
  final int monthDay;

  /// Week day in a month.
  final WeekDayOfMonth2 weekDayOfMonth;

  MonthlySchedule2({
    required this.monthDay,
    required this.weekDayOfMonth,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['monthDay'] = monthDay;
    map['weekDayOfMonth'] = weekDayOfMonth.toMap();
    return map;
  }

  factory MonthlySchedule2.fromMap(Map<String, dynamic> map) {
    return MonthlySchedule2(
      monthDay: map['monthDay'] as int,
      weekDayOfMonth: WeekDayOfMonth2.fromMap(
          (map['weekDayOfMonth'] as Map).cast<String, dynamic>()),
    );
  }
}
