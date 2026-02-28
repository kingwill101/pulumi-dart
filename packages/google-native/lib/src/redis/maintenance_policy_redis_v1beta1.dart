// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'weekly_maintenance_window_redis_v1beta1.dart';

/// Maintenance policy for an instance.
class MaintenancePolicyRedisV1beta1 {
  /// Optional. Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT if the length is greater than 512.
  final String? description;

  /// Optional. Maintenance window that is applied to resources covered by this policy. Minimum 1. For the current version, the maximum number of weekly_window is expected to be one.
  final List<WeeklyMaintenanceWindowRedisV1beta1>? weeklyMaintenanceWindow;

  /// Creates a new [MaintenancePolicyRedisV1beta1].
  /// [description] Optional. Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT if the length is greater than 512.
  /// [weeklyMaintenanceWindow] Optional. Maintenance window that is applied to resources covered by this policy. Minimum 1. For the current version, the maximum number of weekly_window is expected to be one.
  MaintenancePolicyRedisV1beta1({
    this.description,
    this.weeklyMaintenanceWindow,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final weeklyMaintenanceWindowValue = weeklyMaintenanceWindow;
    if (weeklyMaintenanceWindowValue != null) {
      map['weeklyMaintenanceWindow'] = pulumi.Input.encodeList<
              WeeklyMaintenanceWindowRedisV1beta1, Map<String, dynamic>>(
          weeklyMaintenanceWindowValue, (value) => value.toMap());
    }
    return map;
  }

  factory MaintenancePolicyRedisV1beta1.fromMap(Map<String, dynamic> map) {
    return MaintenancePolicyRedisV1beta1(
      description:
          map['description'] == null ? null : map['description'] as String,
      weeklyMaintenanceWindow: map['weeklyMaintenanceWindow'] == null
          ? null
          : pulumi.Input.decodeList<WeeklyMaintenanceWindowRedisV1beta1>(
              map['weeklyMaintenanceWindow'],
              (value) => WeeklyMaintenanceWindowRedisV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
