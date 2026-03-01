// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNetworkConfigPodCidrOverprovisionConfig {
  /// Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when defaultSnatStatus is disabled.When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic
  ///
  /// <a name="nested_cluster_telemetry"></a>The `cluster_telemetry` block supports
  final bool disabled;

  /// Creates a new [ClusterNodePoolNetworkConfigPodCidrOverprovisionConfig].
  /// [disabled] Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when defaultSnatStatus is disabled.When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic
  ClusterNodePoolNetworkConfigPodCidrOverprovisionConfig({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disabled': disabled};
  }

  factory ClusterNodePoolNetworkConfigPodCidrOverprovisionConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodePoolNetworkConfigPodCidrOverprovisionConfig(
      disabled: map['disabled'] as bool,
    );
  }
}
