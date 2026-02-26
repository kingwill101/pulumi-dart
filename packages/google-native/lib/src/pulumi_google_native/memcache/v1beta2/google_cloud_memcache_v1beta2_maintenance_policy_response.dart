// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'weekly_maintenance_window_response2.dart';

/// Maintenance policy per instance.
class GoogleCloudMemcacheV1beta2MaintenancePolicyResponse {
  /// The time when the policy was created.
  final String createTime;

  /// Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT if the length is greater than 512.
  final String description;

  /// The time when the policy was updated.
  final String updateTime;

  /// Maintenance window that is applied to resources covered by this policy. Minimum 1. For the current version, the maximum number of weekly_maintenance_windows is expected to be one.
  final List<WeeklyMaintenanceWindowResponse2> weeklyMaintenanceWindow;

  GoogleCloudMemcacheV1beta2MaintenancePolicyResponse({
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
            WeeklyMaintenanceWindowResponse2, Map<String, dynamic>>(
        weeklyMaintenanceWindow, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudMemcacheV1beta2MaintenancePolicyResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudMemcacheV1beta2MaintenancePolicyResponse(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      updateTime: map['updateTime'] as String,
      weeklyMaintenanceWindow:
          Input.decodeList<WeeklyMaintenanceWindowResponse2>(
              map['weeklyMaintenanceWindow'],
              (value) => WeeklyMaintenanceWindowResponse2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
