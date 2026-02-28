// ignore_for_file: unused_element, unnecessary_cast

class InstanceFromMachineImageAdvancedMachineFeatures {
  /// Whether to enable nested virtualization or not.
  final bool? enableNestedVirtualization;

  /// Whether to enable UEFI networking for the instance.
  final bool? enableUefiNetworking;

  /// The PMU is a hardware component within the CPU core that monitors how the processor runs code. Valid values for the level of PMU are "STANDARD", "ENHANCED", and "ARCHITECTURAL".
  final String? performanceMonitoringUnit;

  /// The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  final int? threadsPerCore;

  /// Turbo frequency mode to use for the instance. Currently supported modes is "ALL_CORE_MAX".
  final String? turboMode;

  /// The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance\'s nominal CPU count and the underlying platform\'s SMT width.
  final int? visibleCoreCount;

  /// Creates a new [InstanceFromMachineImageAdvancedMachineFeatures].
  /// [enableNestedVirtualization] Whether to enable nested virtualization or not.
  /// [enableUefiNetworking] Whether to enable UEFI networking for the instance.
  /// [performanceMonitoringUnit] The PMU is a hardware component within the CPU core that monitors how the processor runs code. Valid values for the level of PMU are "STANDARD", "ENHANCED", and "ARCHITECTURAL".
  /// [threadsPerCore] The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  /// [turboMode] Turbo frequency mode to use for the instance. Currently supported modes is "ALL_CORE_MAX".
  /// [visibleCoreCount] The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance\'s nominal CPU count and the underlying platform\'s SMT width.
  InstanceFromMachineImageAdvancedMachineFeatures({
    this.enableNestedVirtualization,
    this.enableUefiNetworking,
    this.performanceMonitoringUnit,
    this.threadsPerCore,
    this.turboMode,
    this.visibleCoreCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableNestedVirtualizationValue = enableNestedVirtualization;
    if (enableNestedVirtualizationValue != null) {
      map['enableNestedVirtualization'] = enableNestedVirtualizationValue;
    }
    final enableUefiNetworkingValue = enableUefiNetworking;
    if (enableUefiNetworkingValue != null) {
      map['enableUefiNetworking'] = enableUefiNetworkingValue;
    }
    final performanceMonitoringUnitValue = performanceMonitoringUnit;
    if (performanceMonitoringUnitValue != null) {
      map['performanceMonitoringUnit'] = performanceMonitoringUnitValue;
    }
    final threadsPerCoreValue = threadsPerCore;
    if (threadsPerCoreValue != null) {
      map['threadsPerCore'] = threadsPerCoreValue;
    }
    final turboModeValue = turboMode;
    if (turboModeValue != null) {
      map['turboMode'] = turboModeValue;
    }
    final visibleCoreCountValue = visibleCoreCount;
    if (visibleCoreCountValue != null) {
      map['visibleCoreCount'] = visibleCoreCountValue;
    }
    return map;
  }

  factory InstanceFromMachineImageAdvancedMachineFeatures.fromMap(
      Map<String, dynamic> map) {
    return InstanceFromMachineImageAdvancedMachineFeatures(
      enableNestedVirtualization: map['enableNestedVirtualization'] == null
          ? null
          : map['enableNestedVirtualization'] as bool,
      enableUefiNetworking: map['enableUefiNetworking'] == null
          ? null
          : map['enableUefiNetworking'] as bool,
      performanceMonitoringUnit: map['performanceMonitoringUnit'] == null
          ? null
          : map['performanceMonitoringUnit'] as String,
      threadsPerCore:
          map['threadsPerCore'] == null ? null : map['threadsPerCore'] as int,
      turboMode: map['turboMode'] == null ? null : map['turboMode'] as String,
      visibleCoreCount: map['visibleCoreCount'] == null
          ? null
          : map['visibleCoreCount'] as int,
    );
  }
}
