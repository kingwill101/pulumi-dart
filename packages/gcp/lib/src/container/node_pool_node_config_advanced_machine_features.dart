// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNodeConfigAdvancedMachineFeatures {
  /// Whether the node should have nested virtualization enabled.
  final bool? enableNestedVirtualization;

  /// Level of Performance Monitoring Unit (PMU) requested. If unset, no access to the PMU is assumed.
  final String? performanceMonitoringUnit;

  /// The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  final int threadsPerCore;

  /// Creates a new [NodePoolNodeConfigAdvancedMachineFeatures].
  /// [enableNestedVirtualization] Whether the node should have nested virtualization enabled.
  /// [performanceMonitoringUnit] Level of Performance Monitoring Unit (PMU) requested. If unset, no access to the PMU is assumed.
  /// [threadsPerCore] The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  NodePoolNodeConfigAdvancedMachineFeatures({
    this.enableNestedVirtualization,
    this.performanceMonitoringUnit,
    required this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableNestedVirtualizationValue = enableNestedVirtualization;
    if (enableNestedVirtualizationValue != null) {
      map['enableNestedVirtualization'] = enableNestedVirtualizationValue;
    }
    final performanceMonitoringUnitValue = performanceMonitoringUnit;
    if (performanceMonitoringUnitValue != null) {
      map['performanceMonitoringUnit'] = performanceMonitoringUnitValue;
    }
    map['threadsPerCore'] = threadsPerCore;
    return map;
  }

  factory NodePoolNodeConfigAdvancedMachineFeatures.fromMap(
      Map<String, dynamic> map) {
    return NodePoolNodeConfigAdvancedMachineFeatures(
      enableNestedVirtualization: map['enableNestedVirtualization'] == null
          ? null
          : map['enableNestedVirtualization'] as bool,
      performanceMonitoringUnit: map['performanceMonitoringUnit'] == null
          ? null
          : map['performanceMonitoringUnit'] as String,
      threadsPerCore: map['threadsPerCore'] as int,
    );
  }
}
