// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigAdvancedMachineFeature {
  /// Whether the node should have nested virtualization enabled.
  final bool enableNestedVirtualization;

  /// Level of Performance Monitoring Unit (PMU) requested. If unset, no access to the PMU is assumed.
  final String performanceMonitoringUnit;

  /// The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  final int threadsPerCore;

  GetClusterNodeConfigAdvancedMachineFeature({
    required this.enableNestedVirtualization,
    required this.performanceMonitoringUnit,
    required this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableNestedVirtualization'] = enableNestedVirtualization;
    map['performanceMonitoringUnit'] = performanceMonitoringUnit;
    map['threadsPerCore'] = threadsPerCore;
    return map;
  }

  factory GetClusterNodeConfigAdvancedMachineFeature.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodeConfigAdvancedMachineFeature(
      enableNestedVirtualization: map['enableNestedVirtualization'] as bool,
      performanceMonitoringUnit: map['performanceMonitoringUnit'] as String,
      threadsPerCore: map['threadsPerCore'] as int,
    );
  }
}
