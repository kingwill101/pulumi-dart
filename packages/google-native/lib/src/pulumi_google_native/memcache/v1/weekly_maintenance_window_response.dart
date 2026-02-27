// ignore_for_file: unused_element, unnecessary_cast

import 'time_of_day_response_memcache_v1.dart';

/// Time window specified for weekly operations.
class WeeklyMaintenanceWindowResponse {
  /// Allows to define schedule that runs specified day of the week.
  final String day;

  /// Duration of the time window.
  final String duration;

  /// Start time of the window in UTC.
  final TimeOfDayResponseMemcacheV1 startTime;

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
      startTime: TimeOfDayResponseMemcacheV1.fromMap(
          (map['startTime'] as Map).cast<String, dynamic>()),
    );
  }
}
