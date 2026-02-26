// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_maintenance_policy_weekly_maintenance_window/cluster_maintenance_policy_weekly_maintenance_window.dart';

class ClusterMaintenancePolicy3 {
  /// (Output)
  /// Output only. The time when the policy was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final String? createTime;

  /// (Output)
  /// Output only. The time when the policy was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final String? updateTime;

  /// Optional. Maintenance window that is applied to resources covered by this policy.
  /// Minimum 1. For the current version, the maximum number
  /// of<span pulumi-lang-nodejs=" weeklyWindow " pulumi-lang-dotnet=" WeeklyWindow " pulumi-lang-go=" weeklyWindow " pulumi-lang-python=" weekly_window " pulumi-lang-yaml=" weeklyWindow " pulumi-lang-java=" weeklyWindow "> weekly_window </span>is expected to be one.
  /// Structure is documented below.
  final List<ClusterMaintenancePolicyWeeklyMaintenanceWindow>?
      weeklyMaintenanceWindows;

  ClusterMaintenancePolicy3({
    this.createTime,
    this.updateTime,
    this.weeklyMaintenanceWindows,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    final weeklyMaintenanceWindowsValue = weeklyMaintenanceWindows;
    if (weeklyMaintenanceWindowsValue != null) {
      map['weeklyMaintenanceWindows'] = Input.encodeList<
              ClusterMaintenancePolicyWeeklyMaintenanceWindow,
              Map<String, dynamic>>(
          weeklyMaintenanceWindowsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterMaintenancePolicy3.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenancePolicy3(
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
      weeklyMaintenanceWindows: map['weeklyMaintenanceWindows'] == null
          ? null
          : Input.decodeList<ClusterMaintenancePolicyWeeklyMaintenanceWindow>(
              map['weeklyMaintenanceWindows'],
              (value) =>
                  ClusterMaintenancePolicyWeeklyMaintenanceWindow.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
