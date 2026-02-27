// ignore_for_file: unused_element, unnecessary_cast

import 'weekly_schedule_day_of_week.dart';

/// Represents a weekly schedule.
class WeeklyScheduleOsconfigV1 {
  /// Day of the week.
  final WeeklyScheduleDayOfWeek dayOfWeek;

  WeeklyScheduleOsconfigV1({
    required this.dayOfWeek,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeek'] = dayOfWeek.value;
    return map;
  }

  factory WeeklyScheduleOsconfigV1.fromMap(Map<String, dynamic> map) {
    return WeeklyScheduleOsconfigV1(
      dayOfWeek: WeeklyScheduleDayOfWeek.fromValue(map['dayOfWeek'] as String),
    );
  }
}
