// ignore_for_file: unused_element, unnecessary_cast

/// Specifies options for controlling advanced machine features. Options that would traditionally be configured in a BIOS belong here. Features that require operating system support may have corresponding entries in the GuestOsFeatures of an Image (e.g., whether or not the OS in the Image supports nested virtualization being enabled or disabled).
class AdvancedMachineFeaturesComputeV1 {
  /// Whether to enable nested virtualization or not (default is false).
  final bool? enableNestedVirtualization;

  /// Whether to enable UEFI networking for instance creation.
  final bool? enableUefiNetworking;

  /// The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  final int? threadsPerCore;

  /// The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance's nominal CPU count and the underlying platform's SMT width.
  final int? visibleCoreCount;

  AdvancedMachineFeaturesComputeV1({
    this.enableNestedVirtualization,
    this.enableUefiNetworking,
    this.threadsPerCore,
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
    final threadsPerCoreValue = threadsPerCore;
    if (threadsPerCoreValue != null) {
      map['threadsPerCore'] = threadsPerCoreValue;
    }
    final visibleCoreCountValue = visibleCoreCount;
    if (visibleCoreCountValue != null) {
      map['visibleCoreCount'] = visibleCoreCountValue;
    }
    return map;
  }

  factory AdvancedMachineFeaturesComputeV1.fromMap(Map<String, dynamic> map) {
    return AdvancedMachineFeaturesComputeV1(
      enableNestedVirtualization: map['enableNestedVirtualization'] == null
          ? null
          : map['enableNestedVirtualization'] as bool,
      enableUefiNetworking: map['enableUefiNetworking'] == null
          ? null
          : map['enableUefiNetworking'] as bool,
      threadsPerCore:
          map['threadsPerCore'] == null ? null : map['threadsPerCore'] as int,
      visibleCoreCount: map['visibleCoreCount'] == null
          ? null
          : map['visibleCoreCount'] as int,
    );
  }
}
