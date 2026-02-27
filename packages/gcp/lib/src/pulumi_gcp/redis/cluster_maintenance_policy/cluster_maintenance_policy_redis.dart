// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_maintenance_policy_weekly_maintenance_window/cluster_maintenance_policy_weekly_maintenance_window.dart';

class ClusterMaintenancePolicyRedis {
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
  /// of weekly_window is expected to be one.
  /// Structure is documented below.
  final List<ClusterMaintenancePolicyWeeklyMaintenanceWindow>?
      weeklyMaintenanceWindows;

  ClusterMaintenancePolicyRedis({
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
      map['weeklyMaintenanceWindows'] = pulumi.Input.encodeList<
              ClusterMaintenancePolicyWeeklyMaintenanceWindow,
              Map<String, dynamic>>(
          weeklyMaintenanceWindowsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterMaintenancePolicyRedis.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenancePolicyRedis(
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
      weeklyMaintenanceWindows: map['weeklyMaintenanceWindows'] == null
          ? null
          : pulumi.Input.decodeList<
                  ClusterMaintenancePolicyWeeklyMaintenanceWindow>(
              map['weeklyMaintenanceWindows'],
              (value) =>
                  ClusterMaintenancePolicyWeeklyMaintenanceWindow.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
