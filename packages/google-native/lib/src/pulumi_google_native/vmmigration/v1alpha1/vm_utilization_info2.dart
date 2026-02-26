// ignore_for_file: unused_element, unnecessary_cast

import 'vm_utilization_metrics2.dart';
import 'vmware_vm_details2.dart';

/// Utilization information of a single VM.
class VmUtilizationInfo2 {
  /// Utilization metrics for this VM.
  final VmUtilizationMetrics2? utilization;

  /// The VM's ID in the source.
  final String? vmId;

  /// The description of the VM in a Source of type Vmware.
  final VmwareVmDetails2? vmwareVmDetails;

  VmUtilizationInfo2({
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

  factory VmUtilizationInfo2.fromMap(Map<String, dynamic> map) {
    return VmUtilizationInfo2(
      utilization: map['utilization'] == null
          ? null
          : VmUtilizationMetrics2.fromMap(
              (map['utilization'] as Map).cast<String, dynamic>()),
      vmId: map['vmId'] == null ? null : map['vmId'] as String,
      vmwareVmDetails: map['vmwareVmDetails'] == null
          ? null
          : VmwareVmDetails2.fromMap(
              (map['vmwareVmDetails'] as Map).cast<String, dynamic>()),
    );
  }
}
