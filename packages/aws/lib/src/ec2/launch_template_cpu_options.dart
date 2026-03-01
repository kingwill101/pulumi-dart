// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateCpuOptions {
  /// Indicates whether to enable the instance for AMD SEV-SNP. AMD SEV-SNP is supported with M6a, R6a, and C6a instance types only. Valid values are `enabled` and `disabled`.
  final String? amdSevSnp;

  /// The number of CPU cores for the instance.
  final int? coreCount;

  /// Indicates whether to enable the instance for nested virtualization. Nested virtualization is supported on 8th generation Intel-based instance types (C8i, M8i, R8i, and their flex variants) only. When nested virtualization is enabled, Virtual Secure Mode (VSM) is automatically disabled for the instance. Valid values are `enabled` and `disabled`.
  final String? nestedVirtualization;

  /// The number of threads per CPU core.
  /// To disable Intel Hyper-Threading Technology for the instance, specify a value of 1.
  /// Otherwise, specify the default value of 2.
  ///
  /// Both number of CPU cores and threads per core must be specified. Valid number of CPU cores and threads per core for the instance type can be found in the [CPU Options Documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html?shortFooter=true#cpu-options-supported-instances-values)
  final int? threadsPerCore;

  /// Creates a new [LaunchTemplateCpuOptions].
  /// [amdSevSnp] Indicates whether to enable the instance for AMD SEV-SNP. AMD SEV-SNP is supported with M6a, R6a, and C6a instance types only. Valid values are `enabled` and `disabled`.
  /// [coreCount] The number of CPU cores for the instance.
  /// [nestedVirtualization] Indicates whether to enable the instance for nested virtualization. Nested virtualization is supported on 8th generation Intel-based instance types (C8i, M8i, R8i, and their flex variants) only. When nested virtualization is enabled, Virtual Secure Mode (VSM) is automatically disabled for the instance. Valid values are `enabled` and `disabled`.
  /// [threadsPerCore] The number of threads per CPU core.
  LaunchTemplateCpuOptions({
    this.amdSevSnp,
    this.coreCount,
    this.nestedVirtualization,
    this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amdSevSnp': ?amdSevSnp,
      'coreCount': ?coreCount,
      'nestedVirtualization': ?nestedVirtualization,
      'threadsPerCore': ?threadsPerCore,
    };
  }

  factory LaunchTemplateCpuOptions.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateCpuOptions(
      amdSevSnp: map['amdSevSnp'] == null ? null : map['amdSevSnp'] as String,
      coreCount: map['coreCount'] == null ? null : map['coreCount'] as int,
      nestedVirtualization: map['nestedVirtualization'] == null
          ? null
          : map['nestedVirtualization'] as String,
      threadsPerCore: map['threadsPerCore'] == null
          ? null
          : map['threadsPerCore'] as int,
    );
  }
}
