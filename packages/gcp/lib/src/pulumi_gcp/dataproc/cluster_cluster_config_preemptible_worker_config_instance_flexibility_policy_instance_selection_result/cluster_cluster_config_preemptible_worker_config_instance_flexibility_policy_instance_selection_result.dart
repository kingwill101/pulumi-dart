// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult {
  /// Full machine-type names, e.g. "n1-standard-16".
  final String? machineType;

  /// Number of VM provisioned with the machine_type.
  final int? vmCount;

  ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult({
    this.machineType,
    this.vmCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    final vmCountValue = vmCount;
    if (vmCountValue != null) {
      map['vmCount'] = vmCountValue;
    }
    return map;
  }

  factory ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult.fromMap(
      Map<String, dynamic> map) {
    return ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult(
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      vmCount: map['vmCount'] == null ? null : map['vmCount'] as int,
    );
  }
}
