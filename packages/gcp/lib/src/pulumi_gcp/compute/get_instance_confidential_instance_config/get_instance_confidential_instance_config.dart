// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceConfidentialInstanceConfig {
  /// The confidential computing technology the instance uses.
  /// SEV is an AMD feature. TDX is an Intel feature. One of the following
  /// values is required: SEV, SEV_SNP, TDX. If SEV_SNP,<span pulumi-lang-nodejs=" minCpuPlatform " pulumi-lang-dotnet=" MinCpuPlatform " pulumi-lang-go=" minCpuPlatform " pulumi-lang-python=" min_cpu_platform " pulumi-lang-yaml=" minCpuPlatform " pulumi-lang-java=" minCpuPlatform "> min_cpu_platform </span>=
  /// "AMD Milan" is currently required.
  final String confidentialInstanceType;

  /// Defines whether the instance should have confidential compute enabled. Field will be deprecated in a future release
  final bool enableConfidentialCompute;

  GetInstanceConfidentialInstanceConfig({
    required this.confidentialInstanceType,
    required this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['confidentialInstanceType'] = confidentialInstanceType;
    map['enableConfidentialCompute'] = enableConfidentialCompute;
    return map;
  }

  factory GetInstanceConfidentialInstanceConfig.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceConfidentialInstanceConfig(
      confidentialInstanceType: map['confidentialInstanceType'] as String,
      enableConfidentialCompute: map['enableConfidentialCompute'] as bool,
    );
  }
}
