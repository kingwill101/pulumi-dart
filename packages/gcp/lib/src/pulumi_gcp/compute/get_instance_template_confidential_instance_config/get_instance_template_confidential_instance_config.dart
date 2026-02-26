// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceTemplateConfidentialInstanceConfig {
  /// The confidential computing technology the instance uses.
  /// SEV is an AMD feature. TDX is an Intel feature. One of the following
  /// values is required: SEV, SEV_SNP, TDX. If SEV_SNP,<span pulumi-lang-nodejs=" minCpuPlatform " pulumi-lang-dotnet=" MinCpuPlatform " pulumi-lang-go=" minCpuPlatform " pulumi-lang-python=" min_cpu_platform " pulumi-lang-yaml=" minCpuPlatform " pulumi-lang-java=" minCpuPlatform "> min_cpu_platform </span>=
  /// "AMD Milan" is currently required.
  final String confidentialInstanceType;

  /// Defines whether the instance should have confidential compute enabled. <span pulumi-lang-nodejs="`onHostMaintenance`" pulumi-lang-dotnet="`OnHostMaintenance`" pulumi-lang-go="`onHostMaintenance`" pulumi-lang-python="`on_host_maintenance`" pulumi-lang-yaml="`onHostMaintenance`" pulumi-lang-java="`onHostMaintenance`">`on_host_maintenance`</span> has to be set to TERMINATE or this will fail to create the VM.
  final bool enableConfidentialCompute;

  GetInstanceTemplateConfidentialInstanceConfig({
    required this.confidentialInstanceType,
    required this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['confidentialInstanceType'] = confidentialInstanceType;
    map['enableConfidentialCompute'] = enableConfidentialCompute;
    return map;
  }

  factory GetInstanceTemplateConfidentialInstanceConfig.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceTemplateConfidentialInstanceConfig(
      confidentialInstanceType: map['confidentialInstanceType'] as String,
      enableConfidentialCompute: map['enableConfidentialCompute'] as bool,
    );
  }
}
