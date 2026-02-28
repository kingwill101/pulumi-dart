// ignore_for_file: unused_element, unnecessary_cast

import 'time_of_day_memcache_v1beta2.dart';
import 'weekly_maintenance_window_day_memcache_v1beta2.dart';

/// Time window specified for weekly operations.
class WeeklyMaintenanceWindowMemcacheV1beta2 {
  /// Allows to define schedule that runs specified day of the week.
  final WeeklyMaintenanceWindowDayMemcacheV1beta2 day;

  /// Duration of the time window.
  final String duration;

  /// Start time of the window in UTC.
  final TimeOfDayMemcacheV1beta2 startTime;

  /// Creates a new [WeeklyMaintenanceWindowMemcacheV1beta2].
  /// [day] Allows to define schedule that runs specified day of the week.
  /// [duration] Duration of the time window.
  /// [startTime] Start time of the window in UTC.
  WeeklyMaintenanceWindowMemcacheV1beta2({
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

  factory WeeklyMaintenanceWindowMemcacheV1beta2.fromMap(
      Map<String, dynamic> map) {
    return WeeklyMaintenanceWindowMemcacheV1beta2(
      day: WeeklyMaintenanceWindowDayMemcacheV1beta2.fromValue(
          map['day'] as String),
      duration: map['duration'] as String,
      startTime: TimeOfDayMemcacheV1beta2.fromMap(
          (map['startTime'] as Map).cast<String, dynamic>()),
    );
  }
}
