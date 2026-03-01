// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_maintenance_policy_weekly_maintenance_window.dart';

class GetInstanceMaintenancePolicy {
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
  final List<GetInstanceMaintenancePolicyWeeklyMaintenanceWindow>
  weeklyMaintenanceWindows;

  /// Creates a new [GetInstanceMaintenancePolicy].
  /// [createTime] The time when the policy was created.
  /// [updateTime] The time when the policy was last updated.
  /// [weeklyMaintenanceWindows] Optional. Maintenance window that is applied to resources covered by this policy.
  GetInstanceMaintenancePolicy({
    required this.createTime,
    required this.updateTime,
    required this.weeklyMaintenanceWindows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'updateTime': updateTime,
      'weeklyMaintenanceWindows':
          pulumi.Input.encodeList<
            GetInstanceMaintenancePolicyWeeklyMaintenanceWindow,
            Map<String, dynamic>
          >(weeklyMaintenanceWindows, (value) => value.toMap()),
    };
  }

  factory GetInstanceMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return GetInstanceMaintenancePolicy(
      createTime: map['createTime'] as String,
      updateTime: map['updateTime'] as String,
      weeklyMaintenanceWindows:
          pulumi.Input.decodeList<
            GetInstanceMaintenancePolicyWeeklyMaintenanceWindow
          >(
            map['weeklyMaintenanceWindows'],
            (value) =>
                GetInstanceMaintenancePolicyWeeklyMaintenanceWindow.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
