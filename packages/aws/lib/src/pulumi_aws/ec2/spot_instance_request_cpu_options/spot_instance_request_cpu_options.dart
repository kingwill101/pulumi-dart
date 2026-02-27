// ignore_for_file: unused_element, unnecessary_cast

class SpotInstanceRequestCpuOptions {
  /// Indicates whether to enable the instance for AMD SEV-SNP. AMD SEV-SNP is supported with M6a, R6a, and C6a instance types only. Valid values are `enabled` and `disabled`.
  final String? amdSevSnp;

  /// Sets the number of CPU cores for an instance. This option is only supported on creation of instance type that support CPU Options [CPU Cores and Threads Per CPU Core Per Instance Type](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html#cpu-options-supported-instances-values) - specifying this option for unsupported instance types will return an error from the EC2 API.
  final int? coreCount;

  /// Indicates whether to enable the instance for nested virtualization. Nested virtualization is supported on 8th generation Intel-based instance types (C8i, M8i, R8i, and their flex variants) only. When nested virtualization is enabled, Virtual Secure Mode (VSM) is automatically disabled for the instance. Valid values are `enabled` and `disabled`.
  final String? nestedVirtualization;

  /// If set to 1, hyperthreading is disabled on the launched instance. Defaults to 2 if not set. See [Optimizing CPU Options](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html) for more information.
  ///
  /// For more information, see the documentation on [Optimizing CPU options](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html).
  final int? threadsPerCore;

  SpotInstanceRequestCpuOptions({
    this.amdSevSnp,
    this.coreCount,
    this.nestedVirtualization,
    this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final amdSevSnpValue = amdSevSnp;
    if (amdSevSnpValue != null) {
      map['amdSevSnp'] = amdSevSnpValue;
    }
    final coreCountValue = coreCount;
    if (coreCountValue != null) {
      map['coreCount'] = coreCountValue;
    }
    final nestedVirtualizationValue = nestedVirtualization;
    if (nestedVirtualizationValue != null) {
      map['nestedVirtualization'] = nestedVirtualizationValue;
    }
    final threadsPerCoreValue = threadsPerCore;
    if (threadsPerCoreValue != null) {
      map['threadsPerCore'] = threadsPerCoreValue;
    }
    return map;
  }

  factory SpotInstanceRequestCpuOptions.fromMap(Map<String, dynamic> map) {
    return SpotInstanceRequestCpuOptions(
      amdSevSnp: map['amdSevSnp'] == null ? null : map['amdSevSnp'] as String,
      coreCount: map['coreCount'] == null ? null : map['coreCount'] as int,
      nestedVirtualization: map['nestedVirtualization'] == null
          ? null
          : map['nestedVirtualization'] as String,
      threadsPerCore:
          map['threadsPerCore'] == null ? null : map['threadsPerCore'] as int,
    );
  }
}
