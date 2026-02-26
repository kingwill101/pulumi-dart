// ignore_for_file: unused_element, unnecessary_cast

import 'vm_utilization_metrics.dart';
import 'vmware_vm_details.dart';

/// Utilization information of a single VM.
class VmUtilizationInfo {
  /// Utilization metrics for this VM.
  final VmUtilizationMetrics? utilization;

  /// The VM's ID in the source.
  final String? vmId;

  /// The description of the VM in a Source of type Vmware.
  final VmwareVmDetails? vmwareVmDetails;

  VmUtilizationInfo({
    this.utilization,
    this.vmId,
    this.vmwareVmDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final utilizationValue = utilization;
    if (utilizationValue != null) {
      map['utilization'] = utilizationValue.toMap();
    }
    final vmIdValue = vmId;
    if (vmIdValue != null) {
      map['vmId'] = vmIdValue;
    }
    final vmwareVmDetailsValue = vmwareVmDetails;
    if (vmwareVmDetailsValue != null) {
      map['vmwareVmDetails'] = vmwareVmDetailsValue.toMap();
    }
    return map;
  }

  factory VmUtilizationInfo.fromMap(Map<String, dynamic> map) {
    return VmUtilizationInfo(
      utilization: map['utilization'] == null
          ? null
          : VmUtilizationMetrics.fromMap(
              (map['utilization'] as Map).cast<String, dynamic>()),
      vmId: map['vmId'] == null ? null : map['vmId'] as String,
      vmwareVmDetails: map['vmwareVmDetails'] == null
          ? null
          : VmwareVmDetails.fromMap(
              (map['vmwareVmDetails'] as Map).cast<String, dynamic>()),
    );
  }
}
