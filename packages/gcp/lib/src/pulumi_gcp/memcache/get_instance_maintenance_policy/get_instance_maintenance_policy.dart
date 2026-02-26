// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_maintenance_policy_weekly_maintenance_window/get_instance_maintenance_policy_weekly_maintenance_window.dart';

class GetInstanceMaintenancePolicy {
  /// Output only. The time when the policy was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits
  final String createTime;

  /// Optional. Description of what this policy is for.
  /// Create/Update methods return INVALID_ARGUMENT if the
  /// length is greater than 512.
  final String description;

  /// Output only. The time when the policy was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final String updateTime;

  /// Required. Maintenance window that is applied to resources covered by this policy.
  /// Minimum 1. For the current version, the maximum number of<span pulumi-lang-nodejs=" weeklyMaintenanceWindows
  /// " pulumi-lang-dotnet=" WeeklyMaintenanceWindows
  /// " pulumi-lang-go=" weeklyMaintenanceWindows
  /// " pulumi-lang-python=" weekly_maintenance_windows
  /// " pulumi-lang-yaml=" weeklyMaintenanceWindows
  /// " pulumi-lang-java=" weeklyMaintenanceWindows
  /// "> weekly_maintenance_windows
  /// </span>is expected to be one.
  final List<GetInstanceMaintenancePolicyWeeklyMaintenanceWindow>
      weeklyMaintenanceWindows;

  GetInstanceMaintenancePolicy({
    required this.createTime,
    required this.description,
    required this.updateTime,
    required this.weeklyMaintenanceWindows,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['updateTime'] = updateTime;
    map['weeklyMaintenanceWindows'] = Input.encodeList<
            GetInstanceMaintenancePolicyWeeklyMaintenanceWindow,
            Map<String, dynamic>>(
        weeklyMaintenanceWindows, (value) => value.toMap());
    return map;
  }

  factory GetInstanceMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return GetInstanceMaintenancePolicy(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      updateTime: map['updateTime'] as String,
      weeklyMaintenanceWindows:
          Input.decodeList<GetInstanceMaintenancePolicyWeeklyMaintenanceWindow>(
              map['weeklyMaintenanceWindows'],
              (value) =>
                  GetInstanceMaintenancePolicyWeeklyMaintenanceWindow.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
