// ignore_for_file: unused_element, unnecessary_cast

import 'time_of_day6.dart';
import 'weekly_maintenance_window_day3.dart';

/// Time window in which disruptive maintenance updates occur. Non-disruptive updates can occur inside or outside this window.
class WeeklyMaintenanceWindow3 {
  /// The day of week that maintenance updates occur.
  final WeeklyMaintenanceWindowDay3 day;

  /// Start time of the window in UTC time.
  final TimeOfDay6 startTime;

  WeeklyMaintenanceWindow3({
    required this.day,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['day'] = day.value;
    map['startTime'] = startTime.toMap();
    return map;
  }

  factory WeeklyMaintenanceWindow3.fromMap(Map<String, dynamic> map) {
    return WeeklyMaintenanceWindow3(
      day: WeeklyMaintenanceWindowDay3.fromValue(map['day'] as String),
      startTime:
          TimeOfDay6.fromMap((map['startTime'] as Map).cast<String, dynamic>()),
    );
  }
}
