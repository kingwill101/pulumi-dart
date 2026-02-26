// ignore_for_file: unused_element, unnecessary_cast

import '../instance_maintenance_policy_weekly_maintenance_window_start_time/instance_maintenance_policy_weekly_maintenance_window_start_time2.dart';

class InstanceMaintenancePolicyWeeklyMaintenanceWindow2 {
  /// The day of week that maintenance updates occur.
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

  /// (Output)
  /// Duration of the maintenance window.
  /// The current window is fixed at 1 hour.
  /// A duration in seconds with up to nine fractional digits,
  /// terminated by 's'. Example: "3.5s".
  final String? duration;

  /// Start time of the window in UTC time.
  /// Structure is documented below.
  final InstanceMaintenancePolicyWeeklyMaintenanceWindowStartTime2 startTime;

  InstanceMaintenancePolicyWeeklyMaintenanceWindow2({
    required this.day,
    this.duration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['day'] = day;
    final durationValue = duration;
    if (durationValue != null) {
      map['duration'] = durationValue;
    }
    map['startTime'] = startTime.toMap();
    return map;
  }

  factory InstanceMaintenancePolicyWeeklyMaintenanceWindow2.fromMap(
      Map<String, dynamic> map) {
    return InstanceMaintenancePolicyWeeklyMaintenanceWindow2(
      day: map['day'] as String,
      duration: map['duration'] == null ? null : map['duration'] as String,
      startTime:
          InstanceMaintenancePolicyWeeklyMaintenanceWindowStartTime2.fromMap(
              (map['startTime'] as Map).cast<String, dynamic>()),
    );
  }
}
