// ignore_for_file: unused_element, unnecessary_cast

import 'time_of_day_redis_v1.dart';
import 'weekly_maintenance_window_day_redis_v1.dart';

/// Time window in which disruptive maintenance updates occur. Non-disruptive updates can occur inside or outside this window.
class WeeklyMaintenanceWindowRedisV1 {
  /// The day of week that maintenance updates occur.
  final WeeklyMaintenanceWindowDayRedisV1 day;

  /// Start time of the window in UTC time.
  final TimeOfDayRedisV1 startTime;

  WeeklyMaintenanceWindowRedisV1({
    required this.day,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['day'] = day.value;
    map['startTime'] = startTime.toMap();
    return map;
  }

  factory WeeklyMaintenanceWindowRedisV1.fromMap(Map<String, dynamic> map) {
    return WeeklyMaintenanceWindowRedisV1(
      day: WeeklyMaintenanceWindowDayRedisV1.fromValue(map['day'] as String),
      startTime: TimeOfDayRedisV1.fromMap(
          (map['startTime'] as Map).cast<String, dynamic>()),
    );
  }
}
