// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_vm_maintenance_policy_concurrency_control_response.dart';
import 'resource_policy_vm_maintenance_policy_maintenance_window_response.dart';

class ResourcePolicyVmMaintenancePolicyResponse {
  final ResourcePolicyVmMaintenancePolicyConcurrencyControlResponse
      concurrencyControlGroup;

  /// Maintenance windows that are applied to VMs covered by this policy.
  final ResourcePolicyVmMaintenancePolicyMaintenanceWindowResponse
      maintenanceWindow;

  ResourcePolicyVmMaintenancePolicyResponse({
    required this.concurrencyControlGroup,
    required this.maintenanceWindow,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['concurrencyControlGroup'] = concurrencyControlGroup.toMap();
    map['maintenanceWindow'] = maintenanceWindow.toMap();
    return map;
  }

  factory ResourcePolicyVmMaintenancePolicyResponse.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyVmMaintenancePolicyResponse(
      concurrencyControlGroup:
          ResourcePolicyVmMaintenancePolicyConcurrencyControlResponse.fromMap(
              (map['concurrencyControlGroup'] as Map).cast<String, dynamic>()),
      maintenanceWindow:
          ResourcePolicyVmMaintenancePolicyMaintenanceWindowResponse.fromMap(
              (map['maintenanceWindow'] as Map).cast<String, dynamic>()),
    );
  }
}
