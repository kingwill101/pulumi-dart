// ignore_for_file: unused_element, unnecessary_cast

import 'weekly_schedule_day_of_week_osconfig_v1beta.dart';

/// Represents a weekly schedule.
class WeeklyScheduleOsconfigV1beta {
  /// Day of the week.
  final WeeklyScheduleDayOfWeekOsconfigV1beta dayOfWeek;

  /// Creates a new [WeeklyScheduleOsconfigV1beta].
  /// [dayOfWeek] Day of the week.
  WeeklyScheduleOsconfigV1beta({
    required this.dayOfWeek,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek.value,
    };
  }

  factory WeeklyScheduleOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return WeeklyScheduleOsconfigV1beta(
      dayOfWeek: WeeklyScheduleDayOfWeekOsconfigV1beta.fromValue(map['dayOfWeek'] as String),
    );
  }
}

