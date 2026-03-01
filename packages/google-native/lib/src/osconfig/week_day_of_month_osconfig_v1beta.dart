// ignore_for_file: unused_element, unnecessary_cast

import 'week_day_of_month_day_of_week_osconfig_v1beta.dart';

/// Represents one week day in a month. An example is "the 4th Sunday".
class WeekDayOfMonthOsconfigV1beta {
  /// A day of the week.
  final WeekDayOfMonthDayOfWeekOsconfigV1beta dayOfWeek;

  /// Optional. Represents the number of days before or after the given week day of month that the patch deployment is scheduled for. For example if `week_ordinal` and `day_of_week` values point to the second day of the month and this `day_offset` value is set to `3`, the patch deployment takes place three days after the second Tuesday of the month. If this value is negative, for example -5, the patches are deployed five days before before the second Tuesday of the month. Allowed values are in range [-30, 30].
  final int? dayOffset;

  /// Week number in a month. 1-4 indicates the 1st to 4th week of the month. -1 indicates the last week of the month.
  final int weekOrdinal;

  /// Creates a new [WeekDayOfMonthOsconfigV1beta].
  /// [dayOfWeek] A day of the week.
  /// [dayOffset] Optional. Represents the number of days before or after the given week day of month that the patch deployment is scheduled for. For example if `week_ordinal` and `day_of_week` values point to the second day of the month and this `day_offset` value is set to `3`, the patch deployment takes place three days after the second Tuesday of the month. If this value is negative, for example -5, the patches are deployed five days before before the second Tuesday of the month. Allowed values are in range [-30, 30].
  /// [weekOrdinal] Week number in a month. 1-4 indicates the 1st to 4th week of the month. -1 indicates the last week of the month.
  WeekDayOfMonthOsconfigV1beta({
    required this.dayOfWeek,
    this.dayOffset,
    required this.weekOrdinal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek.value,
      'dayOffset': ?dayOffset,
      'weekOrdinal': weekOrdinal,
    };
  }

  factory WeekDayOfMonthOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return WeekDayOfMonthOsconfigV1beta(
      dayOfWeek: WeekDayOfMonthDayOfWeekOsconfigV1beta.fromValue(
        map['dayOfWeek'] as String,
      ),
      dayOffset: map['dayOffset'] == null ? null : map['dayOffset'] as int,
      weekOrdinal: map['weekOrdinal'] as int,
    );
  }
}
