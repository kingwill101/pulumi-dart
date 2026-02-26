// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_maintenance_policy_weekly_maintenance_window_start_time/get_instance_maintenance_policy_weekly_maintenance_window_start_time2.dart';

class GetInstanceMaintenancePolicyWeeklyMaintenanceWindow2 {
  /// The day of week that maintenance updates occur.
  ///
  /// - DAY_OF_WEEK_UNSPECIFIED: The day of the week is unspecified.
  /// - MONDAY: Monday
  /// - TUESDAY: Tuesday
  /// - WEDNESDAY: Wednesday
  /// - THURSDAY: Thursday
  /// - FRIDAY: Friday
  /// - SATURDAY: Saturday
  /// - SUNDAY: Sunday Possible values: ["DAY_OF_WEEK_UNSPECIFIED", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
  final String day;

  /// Duration of the maintenance window.
  /// The current window is fixed at 1 hour.
  /// A duration in seconds with up to nine fractional digits,
  /// terminated by 's'. Example: "3.5s".
  final String duration;

  /// Start time of the window in UTC time.
  final List<GetInstanceMaintenancePolicyWeeklyMaintenanceWindowStartTime2>
      startTimes;

  GetInstanceMaintenancePolicyWeeklyMaintenanceWindow2({
    required this.day,
    required this.duration,
    required this.startTimes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['day'] = day;
    map['duration'] = duration;
    map['startTimes'] = Input.encodeList<
        GetInstanceMaintenancePolicyWeeklyMaintenanceWindowStartTime2,
        Map<String, dynamic>>(startTimes, (value) => value.toMap());
    return map;
  }

  factory GetInstanceMaintenancePolicyWeeklyMaintenanceWindow2.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceMaintenancePolicyWeeklyMaintenanceWindow2(
      day: map['day'] as String,
      duration: map['duration'] as String,
      startTimes: Input.decodeList<
              GetInstanceMaintenancePolicyWeeklyMaintenanceWindowStartTime2>(
          map['startTimes'],
          (value) =>
              GetInstanceMaintenancePolicyWeeklyMaintenanceWindowStartTime2
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
