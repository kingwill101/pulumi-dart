// ignore_for_file: unused_element, unnecessary_cast

import 'time_of_day_response.dart';

/// Time window in which disruptive maintenance updates occur. Non-disruptive updates can occur inside or outside this window.
class WeeklyMaintenanceWindowResponse {
  /// The day of week that maintenance updates occur.
  final String day;

  /// Duration of the maintenance window. The current window is fixed at 1 hour.
  final String duration;

  /// Start time of the window in UTC time.
  final TimeOfDayResponse startTime;

  /// Creates a new [WeeklyMaintenanceWindowResponse].
  /// [day] The day of week that maintenance updates occur.
  /// [duration] Duration of the maintenance window. The current window is fixed at 1 hour.
  /// [startTime] Start time of the window in UTC time.
  WeeklyMaintenanceWindowResponse({
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

  factory WeeklyMaintenanceWindowResponse.fromMap(Map<String, dynamic> map) {
    return WeeklyMaintenanceWindowResponse(
      day: map['day'] as String,
      duration: map['duration'] as String,
      startTime: TimeOfDayResponse.fromMap(
          (map['startTime'] as Map).cast<String, dynamic>()),
    );
  }
}
