// ignore_for_file: unused_element, unnecessary_cast

import 'time_of_day.dart';
import 'weekly_maintenance_window_day.dart';

/// Time window in which disruptive maintenance updates occur. Non-disruptive updates can occur inside or outside this window.
class WeeklyMaintenanceWindow {
  /// The day of week that maintenance updates occur.
  final WeeklyMaintenanceWindowDay day;

  /// Start time of the window in UTC time.
  final TimeOfDay startTime;

  /// Creates a new [WeeklyMaintenanceWindow].
  /// [day] The day of week that maintenance updates occur.
  /// [startTime] Start time of the window in UTC time.
  WeeklyMaintenanceWindow({
    required this.day,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['day'] = day.value;
    map['startTime'] = startTime.toMap();
    return map;
  }

  factory WeeklyMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return WeeklyMaintenanceWindow(
      day: WeeklyMaintenanceWindowDay.fromValue(map['day'] as String),
      startTime:
          TimeOfDay.fromMap((map['startTime'] as Map).cast<String, dynamic>()),
    );
  }
}
