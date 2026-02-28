// ignore_for_file: unused_element, unnecessary_cast


/// Specifies options for controlling advanced machine features. Options that would traditionally be configured in a BIOS belong here. Features that require operating system support may have corresponding entries in the GuestOsFeatures of an Image (e.g., whether or not the OS in the Image supports nested virtualization being enabled or disabled).
class AdvancedMachineFeaturesComputeBeta {
  /// Whether to enable nested virtualization or not (default is false).
  final bool? enableNestedVirtualization;
  /// Whether to enable UEFI networking for instance creation.
  final bool? enableUefiNetworking;
  /// The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  final int? threadsPerCore;
  /// The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance's nominal CPU count and the underlying platform's SMT width.
  final int? visibleCoreCount;

  /// Creates a new [AdvancedMachineFeaturesComputeBeta].
  /// [enableNestedVirtualization] Whether to enable nested virtualization or not (default is false).
  /// [enableUefiNetworking] Whether to enable UEFI networking for instance creation.
  /// [threadsPerCore] The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  /// [visibleCoreCount] The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance's nominal CPU count and the underlying platform's SMT width.
  AdvancedMachineFeaturesComputeBeta({
    this.enableNestedVirtualization,
    this.enableUefiNetworking,
    this.threadsPerCore,
    this.visibleCoreCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableNestedVirtualization': ?enableNestedVirtualization,
      'enableUefiNetworking': ?enableUefiNetworking,
      'threadsPerCore': ?threadsPerCore,
      'visibleCoreCount': ?visibleCoreCount,
    };
  }

  factory AdvancedMachineFeaturesComputeBeta.fromMap(Map<String, dynamic> map) {
    return AdvancedMachineFeaturesComputeBeta(
      enableNestedVirtualization: map['enableNestedVirtualization'] == null ? null : map['enableNestedVirtualization'] as bool,
      enableUefiNetworking: map['enableUefiNetworking'] == null ? null : map['enableUefiNetworking'] as bool,
      threadsPerCore: map['threadsPerCore'] == null ? null : map['threadsPerCore'] as int,
      visibleCoreCount: map['visibleCoreCount'] == null ? null : map['visibleCoreCount'] as int,
    );
  }
}

