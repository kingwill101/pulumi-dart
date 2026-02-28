// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateCpuOption {
  final String amdSevSnp;
  final int coreCount;
  final String nestedVirtualization;
  final int threadsPerCore;

  /// Creates a new [GetLaunchTemplateCpuOption].
  /// [amdSevSnp] Required.
  /// [coreCount] Required.
  /// [nestedVirtualization] Required.
  /// [threadsPerCore] Required.
  GetLaunchTemplateCpuOption({
    required this.amdSevSnp,
    required this.coreCount,
    required this.nestedVirtualization,
    required this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['amdSevSnp'] = amdSevSnp;
    map['coreCount'] = coreCount;
    map['nestedVirtualization'] = nestedVirtualization;
    map['threadsPerCore'] = threadsPerCore;
    return map;
  }

  factory GetLaunchTemplateCpuOption.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateCpuOption(
      amdSevSnp: map['amdSevSnp'] as String,
      coreCount: map['coreCount'] as int,
      nestedVirtualization: map['nestedVirtualization'] as String,
      threadsPerCore: map['threadsPerCore'] as int,
    );
  }
}
