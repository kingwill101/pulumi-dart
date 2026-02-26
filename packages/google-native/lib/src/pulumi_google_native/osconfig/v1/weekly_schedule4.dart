// ignore_for_file: unused_element, unnecessary_cast

import 'weekly_schedule_day_of_week.dart';

/// Represents a weekly schedule.
class WeeklySchedule4 {
  /// Day of the week.
  final WeeklyScheduleDayOfWeek dayOfWeek;

  WeeklySchedule4({
    required this.dayOfWeek,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeek'] = dayOfWeek.value;
    return map;
  }

  factory WeeklySchedule4.fromMap(Map<String, dynamic> map) {
    return WeeklySchedule4(
      dayOfWeek: WeeklyScheduleDayOfWeek.fromValue(map['dayOfWeek'] as String),
    );
  }
}
