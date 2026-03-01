// ignore_for_file: unused_element, unnecessary_cast

import 'week_day_of_month_osconfig_v1beta.dart';

/// Represents a monthly schedule. An example of a valid monthly schedule is "on the third Tuesday of the month" or "on the 15th of the month".
class MonthlyScheduleOsconfigV1beta {
  /// One day of the month. 1-31 indicates the 1st to the 31st day. -1 indicates the last day of the month. Months without the target day will be skipped. For example, a schedule to run "every month on the 31st" will not run in February, April, June, etc.
  final int monthDay;

  /// Week day in a month.
  final WeekDayOfMonthOsconfigV1beta weekDayOfMonth;

  /// Creates a new [MonthlyScheduleOsconfigV1beta].
  /// [monthDay] One day of the month. 1-31 indicates the 1st to the 31st day. -1 indicates the last day of the month. Months without the target day will be skipped. For example, a schedule to run "every month on the 31st" will not run in February, April, June, etc.
  /// [weekDayOfMonth] Week day in a month.
  MonthlyScheduleOsconfigV1beta({
    required this.monthDay,
    required this.weekDayOfMonth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monthDay': monthDay,
      'weekDayOfMonth': weekDayOfMonth.toMap(),
    };
  }

  factory MonthlyScheduleOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return MonthlyScheduleOsconfigV1beta(
      monthDay: map['monthDay'] as int,
      weekDayOfMonth: WeekDayOfMonthOsconfigV1beta.fromMap(
        (map['weekDayOfMonth'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
