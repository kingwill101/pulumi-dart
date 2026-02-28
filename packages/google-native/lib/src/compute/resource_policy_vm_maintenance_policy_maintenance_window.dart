// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_daily_cycle.dart';

/// A maintenance window for VMs. When set, we restrict our maintenance operations to this window.
class ResourcePolicyVmMaintenancePolicyMaintenanceWindow {
  final ResourcePolicyDailyCycle? dailyMaintenanceWindow;

  /// Creates a new [ResourcePolicyVmMaintenancePolicyMaintenanceWindow].
  /// [dailyMaintenanceWindow] Optional.
  ResourcePolicyVmMaintenancePolicyMaintenanceWindow({
    this.dailyMaintenanceWindow,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dailyMaintenanceWindowValue = dailyMaintenanceWindow;
    if (dailyMaintenanceWindowValue != null) {
      map['dailyMaintenanceWindow'] = dailyMaintenanceWindowValue.toMap();
    }
    return map;
  }

  factory ResourcePolicyVmMaintenancePolicyMaintenanceWindow.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyVmMaintenancePolicyMaintenanceWindow(
      dailyMaintenanceWindow: map['dailyMaintenanceWindow'] == null
          ? null
          : ResourcePolicyDailyCycle.fromMap(
              (map['dailyMaintenanceWindow'] as Map).cast<String, dynamic>()),
    );
  }
}
