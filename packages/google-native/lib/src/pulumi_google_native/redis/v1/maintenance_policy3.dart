// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'weekly_maintenance_window3.dart';

/// Maintenance policy for an instance.
class MaintenancePolicy3 {
  /// Optional. Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT if the length is greater than 512.
  final String? description;

  /// Optional. Maintenance window that is applied to resources covered by this policy. Minimum 1. For the current version, the maximum number of weekly_window is expected to be one.
  final List<WeeklyMaintenanceWindow3>? weeklyMaintenanceWindow;

  MaintenancePolicy3({
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
      map['weeklyMaintenanceWindow'] =
          Input.encodeList<WeeklyMaintenanceWindow3, Map<String, dynamic>>(
              weeklyMaintenanceWindowValue, (value) => value.toMap());
    }
    return map;
  }

  factory MaintenancePolicy3.fromMap(Map<String, dynamic> map) {
    return MaintenancePolicy3(
      description:
          map['description'] == null ? null : map['description'] as String,
      weeklyMaintenanceWindow: map['weeklyMaintenanceWindow'] == null
          ? null
          : Input.decodeList<WeeklyMaintenanceWindow3>(
              map['weeklyMaintenanceWindow'],
              (value) => WeeklyMaintenanceWindow3.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
