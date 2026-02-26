// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_maintenance_policy_weekly_maintenance_window/instance_maintenance_policy_weekly_maintenance_window3.dart';

class InstanceMaintenancePolicy3 {
  /// (Output)
  /// Output only. The time when the policy was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final String? createTime;

  /// Optional. Description of what this policy is for.
  /// Create/Update methods return INVALID_ARGUMENT if the
  /// length is greater than 512.
  final String? description;

  /// (Output)
  /// Output only. The time when the policy was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final String? updateTime;

  /// Optional. Maintenance window that is applied to resources covered by this policy.
  /// Minimum 1. For the current version, the maximum number
  /// of<span pulumi-lang-nodejs=" weeklyWindow " pulumi-lang-dotnet=" WeeklyWindow " pulumi-lang-go=" weeklyWindow " pulumi-lang-python=" weekly_window " pulumi-lang-yaml=" weeklyWindow " pulumi-lang-java=" weeklyWindow "> weekly_window </span>is expected to be one.
  /// Structure is documented below.
  final List<InstanceMaintenancePolicyWeeklyMaintenanceWindow3>?
      weeklyMaintenanceWindows;

  InstanceMaintenancePolicy3({
    this.createTime,
    this.description,
    this.updateTime,
    this.weeklyMaintenanceWindows,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    final weeklyMaintenanceWindowsValue = weeklyMaintenanceWindows;
    if (weeklyMaintenanceWindowsValue != null) {
      map['weeklyMaintenanceWindows'] = Input.encodeList<
              InstanceMaintenancePolicyWeeklyMaintenanceWindow3,
              Map<String, dynamic>>(
          weeklyMaintenanceWindowsValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceMaintenancePolicy3.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenancePolicy3(
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
      weeklyMaintenanceWindows: map['weeklyMaintenanceWindows'] == null
          ? null
          : Input.decodeList<InstanceMaintenancePolicyWeeklyMaintenanceWindow3>(
              map['weeklyMaintenanceWindows'],
              (value) =>
                  InstanceMaintenancePolicyWeeklyMaintenanceWindow3.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
