// ignore_for_file: unused_element, unnecessary_cast

import 'time_of_day3.dart';
import 'weekly_maintenance_window_day2.dart';

/// Time window specified for weekly operations.
class WeeklyMaintenanceWindow2 {
  /// Allows to define schedule that runs specified day of the week.
  final WeeklyMaintenanceWindowDay2 day;

  /// Duration of the time window.
  final String duration;

  /// Start time of the window in UTC.
  final TimeOfDay3 startTime;

  WeeklyMaintenanceWindow2({
    required this.day,
    required this.duration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['day'] = day.value;
    map['duration'] = duration;
    map['startTime'] = startTime.toMap();
    return map;
  }

  factory WeeklyMaintenanceWindow2.fromMap(Map<String, dynamic> map) {
    return WeeklyMaintenanceWindow2(
      day: WeeklyMaintenanceWindowDay2.fromValue(map['day'] as String),
      duration: map['duration'] as String,
      startTime:
          TimeOfDay3.fromMap((map['startTime'] as Map).cast<String, dynamic>()),
    );
  }
}
