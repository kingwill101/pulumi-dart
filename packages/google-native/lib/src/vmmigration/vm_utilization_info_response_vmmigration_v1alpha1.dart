// ignore_for_file: unused_element, unnecessary_cast

import 'vm_utilization_metrics_response_vmmigration_v1alpha1.dart';
import 'vmware_vm_details_response_vmmigration_v1alpha1.dart';

/// Utilization information of a single VM.
class VmUtilizationInfoResponseVmmigrationV1alpha1 {
  /// Utilization metrics for this VM.
  final VmUtilizationMetricsResponseVmmigrationV1alpha1 utilization;

  /// The VM's ID in the source.
  final String vmId;

  /// The description of the VM in a Source of type Vmware.
  final VmwareVmDetailsResponseVmmigrationV1alpha1 vmwareVmDetails;

  /// Creates a new [VmUtilizationInfoResponseVmmigrationV1alpha1].
  /// [utilization] Utilization metrics for this VM.
  /// [vmId] The VM's ID in the source.
  /// [vmwareVmDetails] The description of the VM in a Source of type Vmware.
  VmUtilizationInfoResponseVmmigrationV1alpha1({
    required this.utilization,
    required this.vmId,
    required this.vmwareVmDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'utilization': utilization.toMap(),
      'vmId': vmId,
      'vmwareVmDetails': vmwareVmDetails.toMap(),
    };
  }

  factory VmUtilizationInfoResponseVmmigrationV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return VmUtilizationInfoResponseVmmigrationV1alpha1(
      utilization: VmUtilizationMetricsResponseVmmigrationV1alpha1.fromMap(
        (map['utilization'] as Map).cast<String, dynamic>(),
      ),
      vmId: map['vmId'] as String,
      vmwareVmDetails: VmwareVmDetailsResponseVmmigrationV1alpha1.fromMap(
        (map['vmwareVmDetails'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
