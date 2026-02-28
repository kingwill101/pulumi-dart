// ignore_for_file: unused_element, unnecessary_cast

class InstanceTemplateAdvancedMachineFeatures {
  /// Defines whether the instance should have nested virtualization enabled. Defaults to false.
  final bool? enableNestedVirtualization;

  /// Whether to enable UEFI networking for instance creation.
  final bool? enableUefiNetworking;

  /// [The PMU](https://cloud.google.com/compute/docs/pmu-overview) is a hardware component within the CPU core that monitors how the processor runs code. Valid values for the level of PMU are `STANDARD`, `ENHANCED`, and `ARCHITECTURAL`.
  final String? performanceMonitoringUnit;

  /// The number of threads per physical core. To disable [simultaneous multithreading (SMT)](https://cloud.google.com/compute/docs/instances/disabling-smt) set this to 1.
  final int? threadsPerCore;

  /// Turbo frequency mode to use for the instance. Supported modes are currently either `ALL_CORE_MAX` or unset (default).
  final String? turboMode;

  /// The number of physical cores to expose to an instance. [visible cores info (VC)](https://cloud.google.com/compute/docs/instances/customize-visible-cores).
  final int? visibleCoreCount;

  /// Creates a new [InstanceTemplateAdvancedMachineFeatures].
  /// [enableNestedVirtualization] Defines whether the instance should have nested virtualization enabled. Defaults to false.
  /// [enableUefiNetworking] Whether to enable UEFI networking for instance creation.
  /// [performanceMonitoringUnit] [The PMU](https://cloud.google.com/compute/docs/pmu-overview) is a hardware component within the CPU core that monitors how the processor runs code. Valid values for the level of PMU are `STANDARD`, `ENHANCED`, and `ARCHITECTURAL`.
  /// [threadsPerCore] The number of threads per physical core. To disable [simultaneous multithreading (SMT)](https://cloud.google.com/compute/docs/instances/disabling-smt) set this to 1.
  /// [turboMode] Turbo frequency mode to use for the instance. Supported modes are currently either `ALL_CORE_MAX` or unset (default).
  /// [visibleCoreCount] The number of physical cores to expose to an instance. [visible cores info (VC)](https://cloud.google.com/compute/docs/instances/customize-visible-cores).
  InstanceTemplateAdvancedMachineFeatures({
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

  factory InstanceTemplateAdvancedMachineFeatures.fromMap(
      Map<String, dynamic> map) {
    return InstanceTemplateAdvancedMachineFeatures(
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
