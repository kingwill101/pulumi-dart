// ignore_for_file: unused_element, unnecessary_cast

import 'week_day_of_month_day_of_week2.dart';

/// Represents one week day in a month. An example is "the 4th Sunday".
class WeekDayOfMonth2 {
  /// A day of the week.
  final WeekDayOfMonthDayOfWeek2 dayOfWeek;

  /// Optional. Represents the number of days before or after the given week day of month that the patch deployment is scheduled for. For example if `week_ordinal` and `day_of_week` values point to the second day of the month and this `day_offset` value is set to `3`, the patch deployment takes place three days after the second Tuesday of the month. If this value is negative, for example -5, the patches are deployed five days before before the second Tuesday of the month. Allowed values are in range [-30, 30].
  final int? dayOffset;

  /// Week number in a month. 1-4 indicates the 1st to 4th week of the month. -1 indicates the last week of the month.
  final int weekOrdinal;

  WeekDayOfMonth2({
    required this.dayOfWeek,
    this.dayOffset,
    required this.weekOrdinal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeek'] = dayOfWeek.value;
    final dayOffsetValue = dayOffset;
    if (dayOffsetValue != null) {
      map['dayOffset'] = dayOffsetValue;
    }
    map['weekOrdinal'] = weekOrdinal;
    return map;
  }

  factory WeekDayOfMonth2.fromMap(Map<String, dynamic> map) {
    return WeekDayOfMonth2(
      dayOfWeek: WeekDayOfMonthDayOfWeek2.fromValue(map['dayOfWeek'] as String),
      dayOffset: map['dayOffset'] == null ? null : map['dayOffset'] as int,
      weekOrdinal: map['weekOrdinal'] as int,
    );
  }
}
