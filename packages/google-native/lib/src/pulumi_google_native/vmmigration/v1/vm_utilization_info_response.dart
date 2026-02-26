// ignore_for_file: unused_element, unnecessary_cast

import 'vm_utilization_metrics_response.dart';
import 'vmware_vm_details_response.dart';

/// Utilization information of a single VM.
class VmUtilizationInfoResponse {
  /// Utilization metrics for this VM.
  final VmUtilizationMetricsResponse utilization;

  /// The VM's ID in the source.
  final String vmId;

  /// The description of the VM in a Source of type Vmware.
  final VmwareVmDetailsResponse vmwareVmDetails;

  VmUtilizationInfoResponse({
    required this.utilization,
    required this.vmId,
    required this.vmwareVmDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['utilization'] = utilization.toMap();
    map['vmId'] = vmId;
    map['vmwareVmDetails'] = vmwareVmDetails.toMap();
    return map;
  }

  factory VmUtilizationInfoResponse.fromMap(Map<String, dynamic> map) {
    return VmUtilizationInfoResponse(
      utilization: VmUtilizationMetricsResponse.fromMap(
          (map['utilization'] as Map).cast<String, dynamic>()),
      vmId: map['vmId'] as String,
      vmwareVmDetails: VmwareVmDetailsResponse.fromMap(
          (map['vmwareVmDetails'] as Map).cast<String, dynamic>()),
    );
  }
}
