// ignore_for_file: unused_element, unnecessary_cast

import 'time_of_day_response_redis_v1beta1.dart';

/// Time window in which disruptive maintenance updates occur. Non-disruptive updates can occur inside or outside this window.
class WeeklyMaintenanceWindowResponseRedisV1beta1 {
  /// The day of week that maintenance updates occur.
  final String day;

  /// Duration of the maintenance window. The current window is fixed at 1 hour.
  final String duration;

  /// Start time of the window in UTC time.
  final TimeOfDayResponseRedisV1beta1 startTime;

  /// Creates a new [WeeklyMaintenanceWindowResponseRedisV1beta1].
  /// [day] The day of week that maintenance updates occur.
  /// [duration] Duration of the maintenance window. The current window is fixed at 1 hour.
  /// [startTime] Start time of the window in UTC time.
  WeeklyMaintenanceWindowResponseRedisV1beta1({
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

  factory WeeklyMaintenanceWindowResponseRedisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return WeeklyMaintenanceWindowResponseRedisV1beta1(
      day: map['day'] as String,
      duration: map['duration'] as String,
      startTime: TimeOfDayResponseRedisV1beta1.fromMap(
          (map['startTime'] as Map).cast<String, dynamic>()),
    );
  }
}
