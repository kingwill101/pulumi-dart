// ignore_for_file: unused_element, unnecessary_cast

/// Specifies options for controlling advanced machine features. Options that would traditionally be configured in a BIOS belong here. Features that require operating system support may have corresponding entries in the GuestOsFeatures of an Image (e.g., whether or not the OS in the Image supports nested virtualization being enabled or disabled).
class AdvancedMachineFeaturesResponse {
  /// Whether to enable nested virtualization or not (default is false).
  final bool enableNestedVirtualization;

  /// Whether to enable UEFI networking for instance creation.
  final bool enableUefiNetworking;

  /// The number of vNUMA nodes.
  final int numaNodeCount;

  /// Type of Performance Monitoring Unit requested on instance.
  final String performanceMonitoringUnit;

  /// The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  final int threadsPerCore;

  /// The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance's nominal CPU count and the underlying platform's SMT width.
  final int visibleCoreCount;

  /// Creates a new [AdvancedMachineFeaturesResponse].
  /// [enableNestedVirtualization] Whether to enable nested virtualization or not (default is false).
  /// [enableUefiNetworking] Whether to enable UEFI networking for instance creation.
  /// [numaNodeCount] The number of vNUMA nodes.
  /// [performanceMonitoringUnit] Type of Performance Monitoring Unit requested on instance.
  /// [threadsPerCore] The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  /// [visibleCoreCount] The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance's nominal CPU count and the underlying platform's SMT width.
  AdvancedMachineFeaturesResponse({
    required this.enableNestedVirtualization,
    required this.enableUefiNetworking,
    required this.numaNodeCount,
    required this.performanceMonitoringUnit,
    required this.threadsPerCore,
    required this.visibleCoreCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableNestedVirtualization'] = enableNestedVirtualization;
    map['enableUefiNetworking'] = enableUefiNetworking;
    map['numaNodeCount'] = numaNodeCount;
    map['performanceMonitoringUnit'] = performanceMonitoringUnit;
    map['threadsPerCore'] = threadsPerCore;
    map['visibleCoreCount'] = visibleCoreCount;
    return map;
  }

  factory AdvancedMachineFeaturesResponse.fromMap(Map<String, dynamic> map) {
    return AdvancedMachineFeaturesResponse(
      enableNestedVirtualization: map['enableNestedVirtualization'] as bool,
      enableUefiNetworking: map['enableUefiNetworking'] as bool,
      numaNodeCount: map['numaNodeCount'] as int,
      performanceMonitoringUnit: map['performanceMonitoringUnit'] as String,
      threadsPerCore: map['threadsPerCore'] as int,
      visibleCoreCount: map['visibleCoreCount'] as int,
    );
  }
}
