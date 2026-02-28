// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_vm_maintenance_policy_concurrency_control.dart';
import 'resource_policy_vm_maintenance_policy_maintenance_window.dart';

class ResourcePolicyVmMaintenancePolicy {
  final ResourcePolicyVmMaintenancePolicyConcurrencyControl?
      concurrencyControlGroup;

  /// Maintenance windows that are applied to VMs covered by this policy.
  final ResourcePolicyVmMaintenancePolicyMaintenanceWindow? maintenanceWindow;

  /// Creates a new [ResourcePolicyVmMaintenancePolicy].
  /// [concurrencyControlGroup] Optional.
  /// [maintenanceWindow] Maintenance windows that are applied to VMs covered by this policy.
  ResourcePolicyVmMaintenancePolicy({
    this.concurrencyControlGroup,
    this.maintenanceWindow,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final concurrencyControlGroupValue = concurrencyControlGroup;
    if (concurrencyControlGroupValue != null) {
      map['concurrencyControlGroup'] = concurrencyControlGroupValue.toMap();
    }
    final maintenanceWindowValue = maintenanceWindow;
    if (maintenanceWindowValue != null) {
      map['maintenanceWindow'] = maintenanceWindowValue.toMap();
    }
    return map;
  }

  factory ResourcePolicyVmMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyVmMaintenancePolicy(
      concurrencyControlGroup: map['concurrencyControlGroup'] == null
          ? null
          : ResourcePolicyVmMaintenancePolicyConcurrencyControl.fromMap(
              (map['concurrencyControlGroup'] as Map).cast<String, dynamic>()),
      maintenanceWindow: map['maintenanceWindow'] == null
          ? null
          : ResourcePolicyVmMaintenancePolicyMaintenanceWindow.fromMap(
              (map['maintenanceWindow'] as Map).cast<String, dynamic>()),
    );
  }
}
