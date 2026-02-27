// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_instance_maintenance_policy_weekly_maintenance_window/get_instance_maintenance_policy_weekly_maintenance_window_redis.dart';

class GetInstanceMaintenancePolicyRedis {
  /// Output only. The time when the policy was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final String createTime;

  /// Optional. Description of what this policy is for.
  /// Create/Update methods return INVALID_ARGUMENT if the
  /// length is greater than 512.
  final String description;

  /// Output only. The time when the policy was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final String updateTime;

  /// Optional. Maintenance window that is applied to resources covered by this policy.
  /// Minimum 1. For the current version, the maximum number
  /// of weekly_window is expected to be one.
  final List<GetInstanceMaintenancePolicyWeeklyMaintenanceWindowRedis>
      weeklyMaintenanceWindows;

  GetInstanceMaintenancePolicyRedis({
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
    map['weeklyMaintenanceWindows'] = pulumi.Input.encodeList<
            GetInstanceMaintenancePolicyWeeklyMaintenanceWindowRedis,
            Map<String, dynamic>>(
        weeklyMaintenanceWindows, (value) => value.toMap());
    return map;
  }

  factory GetInstanceMaintenancePolicyRedis.fromMap(Map<String, dynamic> map) {
    return GetInstanceMaintenancePolicyRedis(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      updateTime: map['updateTime'] as String,
      weeklyMaintenanceWindows: pulumi.Input.decodeList<
              GetInstanceMaintenancePolicyWeeklyMaintenanceWindowRedis>(
          map['weeklyMaintenanceWindows'],
          (value) =>
              GetInstanceMaintenancePolicyWeeklyMaintenanceWindowRedis.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
