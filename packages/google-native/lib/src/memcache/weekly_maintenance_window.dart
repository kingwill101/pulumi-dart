// ignore_for_file: unused_element, unnecessary_cast

import 'time_of_day.dart';
import 'weekly_maintenance_window_day.dart';

/// Time window specified for weekly operations.
class WeeklyMaintenanceWindow {
  /// Allows to define schedule that runs specified day of the week.
  final WeeklyMaintenanceWindowDay day;

  /// Duration of the time window.
  final String duration;

  /// Start time of the window in UTC.
  final TimeOfDay startTime;

  /// Creates a new [WeeklyMaintenanceWindow].
  /// [day] Allows to define schedule that runs specified day of the week.
  /// [duration] Duration of the time window.
  /// [startTime] Start time of the window in UTC.
  WeeklyMaintenanceWindow({
    required this.day,
    required this.duration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day.value,
      'duration': duration,
      'startTime': startTime.toMap(),
    };
  }

  factory WeeklyMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return WeeklyMaintenanceWindow(
      day: WeeklyMaintenanceWindowDay.fromValue(map['day'] as String),
      duration: map['duration'] as String,
      startTime: TimeOfDay.fromMap(
        (map['startTime'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
