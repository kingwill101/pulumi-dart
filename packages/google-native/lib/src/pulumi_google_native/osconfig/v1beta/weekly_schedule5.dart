// ignore_for_file: unused_element, unnecessary_cast

import 'weekly_schedule_day_of_week2.dart';

/// Represents a weekly schedule.
class WeeklySchedule5 {
  /// Day of the week.
  final WeeklyScheduleDayOfWeek2 dayOfWeek;

  WeeklySchedule5({
    required this.dayOfWeek,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeek'] = dayOfWeek.value;
    return map;
  }

  factory WeeklySchedule5.fromMap(Map<String, dynamic> map) {
    return WeeklySchedule5(
      dayOfWeek: WeeklyScheduleDayOfWeek2.fromValue(map['dayOfWeek'] as String),
    );
  }
}
