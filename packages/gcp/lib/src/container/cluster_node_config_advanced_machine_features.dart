// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodeConfigAdvancedMachineFeatures {
  /// Defines whether the instance should have nested virtualization enabled. Defaults to false.
  final bool? enableNestedVirtualization;
  /// Defines the performance monitoring unit [PMU](https://cloud.google.com/compute/docs/pmu-overview) level. Valid values are `ARCHITECTURAL`, `STANDARD`, or `ENHANCED`. Defaults to off.
  final String? performanceMonitoringUnit;
  /// The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  final int threadsPerCore;

  /// Creates a new [ClusterNodeConfigAdvancedMachineFeatures].
  /// [enableNestedVirtualization] Defines whether the instance should have nested virtualization enabled. Defaults to false.
  /// [performanceMonitoringUnit] Defines the performance monitoring unit [PMU](https://cloud.google.com/compute/docs/pmu-overview) level. Valid values are `ARCHITECTURAL`, `STANDARD`, or `ENHANCED`. Defaults to off.
  /// [threadsPerCore] The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  ClusterNodeConfigAdvancedMachineFeatures({
    this.enableNestedVirtualization,
    this.performanceMonitoringUnit,
    required this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableNestedVirtualization': ?enableNestedVirtualization,
      'performanceMonitoringUnit': ?performanceMonitoringUnit,
      'threadsPerCore': threadsPerCore,
    };
  }

  factory ClusterNodeConfigAdvancedMachineFeatures.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigAdvancedMachineFeatures(
      enableNestedVirtualization: map['enableNestedVirtualization'] == null ? null : map['enableNestedVirtualization'] as bool,
      performanceMonitoringUnit: map['performanceMonitoringUnit'] == null ? null : map['performanceMonitoringUnit'] as String,
      threadsPerCore: map['threadsPerCore'] as int,
    );
  }
}

