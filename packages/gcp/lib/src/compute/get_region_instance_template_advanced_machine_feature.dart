// ignore_for_file: unused_element, unnecessary_cast

class GetRegionInstanceTemplateAdvancedMachineFeature {
  /// Whether to enable nested virtualization or not.
  final bool enableNestedVirtualization;

  /// Whether to enable UEFI networking or not.
  final bool enableUefiNetworking;

  /// The PMU is a hardware component within the CPU core that monitors how the processor runs code. Valid values for the level of PMU are "STANDARD", "ENHANCED", and "ARCHITECTURAL".
  final String performanceMonitoringUnit;

  /// The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  final int threadsPerCore;

  /// Turbo frequency mode to use for the instance. Currently supported modes is "ALL_CORE_MAX".
  final String turboMode;

  /// The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance\'s nominal CPU count and the underlying platform\'s SMT width.
  final int visibleCoreCount;

  /// Creates a new [GetRegionInstanceTemplateAdvancedMachineFeature].
  /// [enableNestedVirtualization] Whether to enable nested virtualization or not.
  /// [enableUefiNetworking] Whether to enable UEFI networking or not.
  /// [performanceMonitoringUnit] The PMU is a hardware component within the CPU core that monitors how the processor runs code. Valid values for the level of PMU are "STANDARD", "ENHANCED", and "ARCHITECTURAL".
  /// [threadsPerCore] The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  /// [turboMode] Turbo frequency mode to use for the instance. Currently supported modes is "ALL_CORE_MAX".
  /// [visibleCoreCount] The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance\'s nominal CPU count and the underlying platform\'s SMT width.
  GetRegionInstanceTemplateAdvancedMachineFeature({
    required this.enableNestedVirtualization,
    required this.enableUefiNetworking,
    required this.performanceMonitoringUnit,
    required this.threadsPerCore,
    required this.turboMode,
    required this.visibleCoreCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableNestedVirtualization': enableNestedVirtualization,
      'enableUefiNetworking': enableUefiNetworking,
      'performanceMonitoringUnit': performanceMonitoringUnit,
      'threadsPerCore': threadsPerCore,
      'turboMode': turboMode,
      'visibleCoreCount': visibleCoreCount,
    };
  }

  factory GetRegionInstanceTemplateAdvancedMachineFeature.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionInstanceTemplateAdvancedMachineFeature(
      enableNestedVirtualization: map['enableNestedVirtualization'] as bool,
      enableUefiNetworking: map['enableUefiNetworking'] as bool,
      performanceMonitoringUnit: map['performanceMonitoringUnit'] as String,
      threadsPerCore: map['threadsPerCore'] as int,
      turboMode: map['turboMode'] as String,
      visibleCoreCount: map['visibleCoreCount'] as int,
    );
  }
}
