// ignore_for_file: unused_element, unnecessary_cast

import 'vm_utilization_metrics_vmmigration_v1alpha1.dart';
import 'vmware_vm_details_vmmigration_v1alpha1.dart';

/// Utilization information of a single VM.
class VmUtilizationInfoVmmigrationV1alpha1 {
  /// Utilization metrics for this VM.
  final VmUtilizationMetricsVmmigrationV1alpha1? utilization;

  /// The VM's ID in the source.
  final String? vmId;

  /// The description of the VM in a Source of type Vmware.
  final VmwareVmDetailsVmmigrationV1alpha1? vmwareVmDetails;

  /// Creates a new [VmUtilizationInfoVmmigrationV1alpha1].
  /// [utilization] Utilization metrics for this VM.
  /// [vmId] The VM's ID in the source.
  /// [vmwareVmDetails] The description of the VM in a Source of type Vmware.
  VmUtilizationInfoVmmigrationV1alpha1({
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

  factory VmUtilizationInfoVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return VmUtilizationInfoVmmigrationV1alpha1(
      utilization: map['utilization'] == null
          ? null
          : VmUtilizationMetricsVmmigrationV1alpha1.fromMap(
              (map['utilization'] as Map).cast<String, dynamic>()),
      vmId: map['vmId'] == null ? null : map['vmId'] as String,
      vmwareVmDetails: map['vmwareVmDetails'] == null
          ? null
          : VmwareVmDetailsVmmigrationV1alpha1.fromMap(
              (map['vmwareVmDetails'] as Map).cast<String, dynamic>()),
    );
  }
}
