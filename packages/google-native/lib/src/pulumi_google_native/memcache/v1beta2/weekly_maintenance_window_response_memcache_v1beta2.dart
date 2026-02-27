// ignore_for_file: unused_element, unnecessary_cast

import 'time_of_day_response_memcache_v1beta2.dart';

/// Time window specified for weekly operations.
class WeeklyMaintenanceWindowResponseMemcacheV1beta2 {
  /// Allows to define schedule that runs specified day of the week.
  final String day;

  /// Duration of the time window.
  final String duration;

  /// Start time of the window in UTC.
  final TimeOfDayResponseMemcacheV1beta2 startTime;

  WeeklyMaintenanceWindowResponseMemcacheV1beta2({
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

  factory WeeklyMaintenanceWindowResponseMemcacheV1beta2.fromMap(
      Map<String, dynamic> map) {
    return WeeklyMaintenanceWindowResponseMemcacheV1beta2(
      day: map['day'] as String,
      duration: map['duration'] as String,
      startTime: TimeOfDayResponseMemcacheV1beta2.fromMap(
          (map['startTime'] as Map).cast<String, dynamic>()),
    );
  }
}
