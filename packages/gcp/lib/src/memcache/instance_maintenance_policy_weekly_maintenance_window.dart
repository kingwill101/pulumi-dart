// ignore_for_file: unused_element, unnecessary_cast

import 'instance_maintenance_policy_weekly_maintenance_window_start_time.dart';

class InstanceMaintenancePolicyWeeklyMaintenanceWindow {
  /// Required. The day of week that maintenance updates occur.
  /// - DAY_OF_WEEK_UNSPECIFIED: The day of the week is unspecified.
  /// - MONDAY: Monday
  /// - TUESDAY: Tuesday
  /// - WEDNESDAY: Wednesday
  /// - THURSDAY: Thursday
  /// - FRIDAY: Friday
  /// - SATURDAY: Saturday
  /// - SUNDAY: Sunday
  /// Possible values are: `DAY_OF_WEEK_UNSPECIFIED`, `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final String day;

  /// Required. The length of the maintenance window, ranging from 3 hours to 8 hours.
  /// A duration in seconds with up to nine fractional digits,
  /// terminated by 's'. Example: "3.5s".
  final String duration;

  /// Required. Start time of the window in UTC time.
  /// Structure is documented below.
  final InstanceMaintenancePolicyWeeklyMaintenanceWindowStartTime startTime;

  /// Creates a new [InstanceMaintenancePolicyWeeklyMaintenanceWindow].
  /// [day] Required. The day of week that maintenance updates occur.
  /// [duration] Required. The length of the maintenance window, ranging from 3 hours to 8 hours.
  /// [startTime] Required. Start time of the window in UTC time.
  InstanceMaintenancePolicyWeeklyMaintenanceWindow({
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

  factory InstanceMaintenancePolicyWeeklyMaintenanceWindow.fromMap(
      Map<String, dynamic> map) {
    return InstanceMaintenancePolicyWeeklyMaintenanceWindow(
      day: map['day'] as String,
      duration: map['duration'] as String,
      startTime:
          InstanceMaintenancePolicyWeeklyMaintenanceWindowStartTime.fromMap(
              (map['startTime'] as Map).cast<String, dynamic>()),
    );
  }
}
