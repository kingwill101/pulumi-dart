// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_maintenance_policy_weekly_maintenance_window/get_cluster_maintenance_policy_weekly_maintenance_window.dart';

class GetClusterMaintenancePolicy2 {
  /// Output only. The time when the policy was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final String createTime;

  /// Output only. The time when the policy was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final String updateTime;

  /// Optional. Maintenance window that is applied to resources covered by this policy.
  /// Minimum 1. For the current version, the maximum number
  /// of<span pulumi-lang-nodejs=" weeklyWindow " pulumi-lang-dotnet=" WeeklyWindow " pulumi-lang-go=" weeklyWindow " pulumi-lang-python=" weekly_window " pulumi-lang-yaml=" weeklyWindow " pulumi-lang-java=" weeklyWindow "> weekly_window </span>is expected to be one.
  final List<GetClusterMaintenancePolicyWeeklyMaintenanceWindow>
      weeklyMaintenanceWindows;

  GetClusterMaintenancePolicy2({
    required this.createTime,
    required this.updateTime,
    required this.weeklyMaintenanceWindows,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['updateTime'] = updateTime;
    map['weeklyMaintenanceWindows'] = Input.encodeList<
            GetClusterMaintenancePolicyWeeklyMaintenanceWindow,
            Map<String, dynamic>>(
        weeklyMaintenanceWindows, (value) => value.toMap());
    return map;
  }

  factory GetClusterMaintenancePolicy2.fromMap(Map<String, dynamic> map) {
    return GetClusterMaintenancePolicy2(
      createTime: map['createTime'] as String,
      updateTime: map['updateTime'] as String,
      weeklyMaintenanceWindows:
          Input.decodeList<GetClusterMaintenancePolicyWeeklyMaintenanceWindow>(
              map['weeklyMaintenanceWindows'],
              (value) =>
                  GetClusterMaintenancePolicyWeeklyMaintenanceWindow.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
