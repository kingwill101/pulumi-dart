// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'weekly_maintenance_window.dart';

/// Maintenance policy per instance.
class GoogleCloudMemcacheV1MaintenancePolicy {
  /// Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT if the length is greater than 512.
  final String? description;

  /// Maintenance window that is applied to resources covered by this policy. Minimum 1. For the current version, the maximum number of weekly_maintenance_windows is expected to be one.
  final List<WeeklyMaintenanceWindow> weeklyMaintenanceWindow;

  GoogleCloudMemcacheV1MaintenancePolicy({
    this.description,
    required this.weeklyMaintenanceWindow,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['weeklyMaintenanceWindow'] =
        Input.encodeList<WeeklyMaintenanceWindow, Map<String, dynamic>>(
            weeklyMaintenanceWindow, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudMemcacheV1MaintenancePolicy.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudMemcacheV1MaintenancePolicy(
      description:
          map['description'] == null ? null : map['description'] as String,
      weeklyMaintenanceWindow: Input.decodeList<WeeklyMaintenanceWindow>(
          map['weeklyMaintenanceWindow'],
          (value) => WeeklyMaintenanceWindow.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
