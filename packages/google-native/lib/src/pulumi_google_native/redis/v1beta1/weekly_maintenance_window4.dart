// ignore_for_file: unused_element, unnecessary_cast

import 'time_of_day7.dart';
import 'weekly_maintenance_window_day4.dart';

/// Time window in which disruptive maintenance updates occur. Non-disruptive updates can occur inside or outside this window.
class WeeklyMaintenanceWindow4 {
  /// The day of week that maintenance updates occur.
  final WeeklyMaintenanceWindowDay4 day;

  /// Start time of the window in UTC time.
  final TimeOfDay7 startTime;

  WeeklyMaintenanceWindow4({
    required this.day,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['day'] = day.value;
    map['startTime'] = startTime.toMap();
    return map;
  }

  factory WeeklyMaintenanceWindow4.fromMap(Map<String, dynamic> map) {
    return WeeklyMaintenanceWindow4(
      day: WeeklyMaintenanceWindowDay4.fromValue(map['day'] as String),
      startTime:
          TimeOfDay7.fromMap((map['startTime'] as Map).cast<String, dynamic>()),
    );
  }
}
