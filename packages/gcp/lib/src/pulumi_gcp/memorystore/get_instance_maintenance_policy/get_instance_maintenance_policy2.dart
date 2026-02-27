// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_maintenance_policy_weekly_maintenance_window/get_instance_maintenance_policy_weekly_maintenance_window2.dart';

class GetInstanceMaintenancePolicy2 {
  /// The time when the policy was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final String createTime;

  /// The time when the policy was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final String updateTime;

  /// Optional. Maintenance window that is applied to resources covered by this policy.
  /// Minimum 1. For the current version, the maximum number
  /// of weekly_window is expected to be one.
  final List<GetInstanceMaintenancePolicyWeeklyMaintenanceWindow2>
      weeklyMaintenanceWindows;

  GetInstanceMaintenancePolicy2({
    required this.createTime,
    required this.updateTime,
    required this.weeklyMaintenanceWindows,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['updateTime'] = updateTime;
    map['weeklyMaintenanceWindows'] = Input.encodeList<
            GetInstanceMaintenancePolicyWeeklyMaintenanceWindow2,
            Map<String, dynamic>>(
        weeklyMaintenanceWindows, (value) => value.toMap());
    return map;
  }

  factory GetInstanceMaintenancePolicy2.fromMap(Map<String, dynamic> map) {
    return GetInstanceMaintenancePolicy2(
      createTime: map['createTime'] as String,
      updateTime: map['updateTime'] as String,
      weeklyMaintenanceWindows: Input.decodeList<
              GetInstanceMaintenancePolicyWeeklyMaintenanceWindow2>(
          map['weeklyMaintenanceWindows'],
          (value) =>
              GetInstanceMaintenancePolicyWeeklyMaintenanceWindow2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
