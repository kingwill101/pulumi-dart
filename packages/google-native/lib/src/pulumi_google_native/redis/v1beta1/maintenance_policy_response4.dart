// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'weekly_maintenance_window_response4.dart';

/// Maintenance policy for an instance.
class MaintenancePolicyResponse4 {
  /// The time when the policy was created.
  final String createTime;

  /// Optional. Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT if the length is greater than 512.
  final String description;

  /// The time when the policy was last updated.
  final String updateTime;

  /// Optional. Maintenance window that is applied to resources covered by this policy. Minimum 1. For the current version, the maximum number of weekly_window is expected to be one.
  final List<WeeklyMaintenanceWindowResponse4> weeklyMaintenanceWindow;

  MaintenancePolicyResponse4({
    required this.createTime,
    required this.description,
    required this.updateTime,
    required this.weeklyMaintenanceWindow,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['updateTime'] = updateTime;
    map['weeklyMaintenanceWindow'] = Input.encodeList<
            WeeklyMaintenanceWindowResponse4, Map<String, dynamic>>(
        weeklyMaintenanceWindow, (value) => value.toMap());
    return map;
  }

  factory MaintenancePolicyResponse4.fromMap(Map<String, dynamic> map) {
    return MaintenancePolicyResponse4(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      updateTime: map['updateTime'] as String,
      weeklyMaintenanceWindow:
          Input.decodeList<WeeklyMaintenanceWindowResponse4>(
              map['weeklyMaintenanceWindow'],
              (value) => WeeklyMaintenanceWindowResponse4.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
