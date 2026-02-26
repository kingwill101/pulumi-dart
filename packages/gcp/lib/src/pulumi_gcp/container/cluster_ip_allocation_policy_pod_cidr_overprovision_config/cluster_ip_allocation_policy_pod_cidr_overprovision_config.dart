// ignore_for_file: unused_element, unnecessary_cast

class ClusterIpAllocationPolicyPodCidrOverprovisionConfig {
  /// Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when defaultSnatStatus is disabled.When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedClusterTelemetry"" pulumi-lang-dotnet=""NestedClusterTelemetry"" pulumi-lang-go=""nestedClusterTelemetry"" pulumi-lang-python=""nested_cluster_telemetry"" pulumi-lang-yaml=""nestedClusterTelemetry"" pulumi-lang-java=""nestedClusterTelemetry"">"nested_cluster_telemetry"</span>></a>The <span pulumi-lang-nodejs="`clusterTelemetry`" pulumi-lang-dotnet="`ClusterTelemetry`" pulumi-lang-go="`clusterTelemetry`" pulumi-lang-python="`cluster_telemetry`" pulumi-lang-yaml="`clusterTelemetry`" pulumi-lang-java="`clusterTelemetry`">`cluster_telemetry`</span> block supports
  final bool disabled;

  ClusterIpAllocationPolicyPodCidrOverprovisionConfig({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    return map;
  }

  factory ClusterIpAllocationPolicyPodCidrOverprovisionConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterIpAllocationPolicyPodCidrOverprovisionConfig(
      disabled: map['disabled'] as bool,
    );
  }
}
