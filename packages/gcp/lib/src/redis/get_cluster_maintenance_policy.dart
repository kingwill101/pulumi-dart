// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_maintenance_policy_weekly_maintenance_window.dart';

class GetClusterMaintenancePolicy {
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
  /// of weekly_window is expected to be one.
  final List<GetClusterMaintenancePolicyWeeklyMaintenanceWindow> weeklyMaintenanceWindows;

  /// Creates a new [GetClusterMaintenancePolicy].
  /// [createTime] Output only. The time when the policy was created.
  /// [updateTime] Output only. The time when the policy was last updated.
  /// [weeklyMaintenanceWindows] Optional. Maintenance window that is applied to resources covered by this policy.
  GetClusterMaintenancePolicy({
    required this.createTime,
    required this.updateTime,
    required this.weeklyMaintenanceWindows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'updateTime': updateTime,
      'weeklyMaintenanceWindows': pulumi.Input.encodeList<GetClusterMaintenancePolicyWeeklyMaintenanceWindow, Map<String, dynamic>>(weeklyMaintenanceWindows, (value) => value.toMap()),
    };
  }

  factory GetClusterMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return GetClusterMaintenancePolicy(
      createTime: map['createTime'] as String,
      updateTime: map['updateTime'] as String,
      weeklyMaintenanceWindows: pulumi.Input.decodeList<GetClusterMaintenancePolicyWeeklyMaintenanceWindow>(map['weeklyMaintenanceWindows'], (value) => GetClusterMaintenancePolicyWeeklyMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

