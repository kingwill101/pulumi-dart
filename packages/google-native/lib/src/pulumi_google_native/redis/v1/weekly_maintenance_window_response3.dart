// ignore_for_file: unused_element, unnecessary_cast

import 'time_of_day_response6.dart';

/// Time window in which disruptive maintenance updates occur. Non-disruptive updates can occur inside or outside this window.
class WeeklyMaintenanceWindowResponse3 {
  /// The day of week that maintenance updates occur.
  final String day;

  /// Duration of the maintenance window. The current window is fixed at 1 hour.
  final String duration;

  /// Start time of the window in UTC time.
  final TimeOfDayResponse6 startTime;

  WeeklyMaintenanceWindowResponse3({
    required this.day,
    required this.duration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['day'] = day;
    map['duration'] = duration;
    map['startTime'] = startTime.toMap();
    return map;
  }

  factory WeeklyMaintenanceWindowResponse3.fromMap(Map<String, dynamic> map) {
    return WeeklyMaintenanceWindowResponse3(
      day: map['day'] as String,
      duration: map['duration'] as String,
      startTime: TimeOfDayResponse6.fromMap(
          (map['startTime'] as Map).cast<String, dynamic>()),
    );
  }
}
