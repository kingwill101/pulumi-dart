// ignore_for_file: unused_element, unnecessary_cast

class InstanceConfidentialInstanceConfig {
  /// Defines the confidential computing technology the instance uses. SEV is an AMD feature. TDX is an Intel feature. One of the following values is required: `SEV`, `SEV_SNP`, `TDX`. <span pulumi-lang-nodejs="`onHostMaintenance`" pulumi-lang-dotnet="`OnHostMaintenance`" pulumi-lang-go="`onHostMaintenance`" pulumi-lang-python="`on_host_maintenance`" pulumi-lang-yaml="`onHostMaintenance`" pulumi-lang-java="`onHostMaintenance`">`on_host_maintenance`</span> can be set to MIGRATE if <span pulumi-lang-nodejs="`confidentialInstanceType`" pulumi-lang-dotnet="`ConfidentialInstanceType`" pulumi-lang-go="`confidentialInstanceType`" pulumi-lang-python="`confidential_instance_type`" pulumi-lang-yaml="`confidentialInstanceType`" pulumi-lang-java="`confidentialInstanceType`">`confidential_instance_type`</span> is set to `SEV` and <span pulumi-lang-nodejs="`minCpuPlatform`" pulumi-lang-dotnet="`MinCpuPlatform`" pulumi-lang-go="`minCpuPlatform`" pulumi-lang-python="`min_cpu_platform`" pulumi-lang-yaml="`minCpuPlatform`" pulumi-lang-java="`minCpuPlatform`">`min_cpu_platform`</span> is set to `"AMD Milan"`. Otherwise, <span pulumi-lang-nodejs="`onHostMaintenance`" pulumi-lang-dotnet="`OnHostMaintenance`" pulumi-lang-go="`onHostMaintenance`" pulumi-lang-python="`on_host_maintenance`" pulumi-lang-yaml="`onHostMaintenance`" pulumi-lang-java="`onHostMaintenance`">`on_host_maintenance`</span> has to be set to TERMINATE or this will fail to create the VM. If `SEV_SNP`, currently <span pulumi-lang-nodejs="`minCpuPlatform`" pulumi-lang-dotnet="`MinCpuPlatform`" pulumi-lang-go="`minCpuPlatform`" pulumi-lang-python="`min_cpu_platform`" pulumi-lang-yaml="`minCpuPlatform`" pulumi-lang-java="`minCpuPlatform`">`min_cpu_platform`</span> has to be set to `"AMD Milan"` or this will fail to create the VM.
  final String? confidentialInstanceType;

  /// Defines whether the instance should have confidential compute enabled with AMD SEV. If enabled, <span pulumi-lang-nodejs="`onHostMaintenance`" pulumi-lang-dotnet="`OnHostMaintenance`" pulumi-lang-go="`onHostMaintenance`" pulumi-lang-python="`on_host_maintenance`" pulumi-lang-yaml="`onHostMaintenance`" pulumi-lang-java="`onHostMaintenance`">`on_host_maintenance`</span> can be set to MIGRATE if <span pulumi-lang-nodejs="`minCpuPlatform`" pulumi-lang-dotnet="`MinCpuPlatform`" pulumi-lang-go="`minCpuPlatform`" pulumi-lang-python="`min_cpu_platform`" pulumi-lang-yaml="`minCpuPlatform`" pulumi-lang-java="`minCpuPlatform`">`min_cpu_platform`</span> is set to `"AMD Milan"`. Otherwise, <span pulumi-lang-nodejs="`onHostMaintenance`" pulumi-lang-dotnet="`OnHostMaintenance`" pulumi-lang-go="`onHostMaintenance`" pulumi-lang-python="`on_host_maintenance`" pulumi-lang-yaml="`onHostMaintenance`" pulumi-lang-java="`onHostMaintenance`">`on_host_maintenance`</span> has to be set to TERMINATE or this will fail to create the VM.
  final bool? enableConfidentialCompute;

  InstanceConfidentialInstanceConfig({
    this.confidentialInstanceType,
    this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final confidentialInstanceTypeValue = confidentialInstanceType;
    if (confidentialInstanceTypeValue != null) {
      map['confidentialInstanceType'] = confidentialInstanceTypeValue;
    }
    final enableConfidentialComputeValue = enableConfidentialCompute;
    if (enableConfidentialComputeValue != null) {
      map['enableConfidentialCompute'] = enableConfidentialComputeValue;
    }
    return map;
  }

  factory InstanceConfidentialInstanceConfig.fromMap(Map<String, dynamic> map) {
    return InstanceConfidentialInstanceConfig(
      confidentialInstanceType: map['confidentialInstanceType'] == null
          ? null
          : map['confidentialInstanceType'] as String,
      enableConfidentialCompute: map['enableConfidentialCompute'] == null
          ? null
          : map['enableConfidentialCompute'] as bool,
    );
  }
}
