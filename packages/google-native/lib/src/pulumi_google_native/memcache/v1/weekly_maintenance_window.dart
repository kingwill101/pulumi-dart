// ignore_for_file: unused_element, unnecessary_cast

import 'time_of_day2.dart';
import 'weekly_maintenance_window_day.dart';

/// Time window specified for weekly operations.
class WeeklyMaintenanceWindow {
  /// Allows to define schedule that runs specified day of the week.
  final WeeklyMaintenanceWindowDay day;

  /// Duration of the time window.
  final String duration;

  /// Start time of the window in UTC.
  final TimeOfDay2 startTime;

  WeeklyMaintenanceWindow({
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

  factory WeeklyMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return WeeklyMaintenanceWindow(
      day: WeeklyMaintenanceWindowDay.fromValue(map['day'] as String),
      duration: map['duration'] as String,
      startTime:
          TimeOfDay2.fromMap((map['startTime'] as Map).cast<String, dynamic>()),
    );
  }
}
