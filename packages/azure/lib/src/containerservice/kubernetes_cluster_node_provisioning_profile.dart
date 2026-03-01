// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterNodeProvisioningProfile {
  /// Specifies whether default node pools should be provisioned automatically. Possible values are `Auto` and `None`. Defaults to `Auto`. At least one of `mode` or `default_node_pools` must be specified.
  final String? defaultNodePools;
  final String? mode;

  /// Creates a new [KubernetesClusterNodeProvisioningProfile].
  /// [defaultNodePools] Specifies whether default node pools should be provisioned automatically. Possible values are `Auto` and `None`. Defaults to `Auto`. At least one of `mode` or `default_node_pools` must be specified.
  /// [mode] Optional.
  KubernetesClusterNodeProvisioningProfile({
    this.defaultNodePools,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultNodePools': ?defaultNodePools,
      'mode': ?mode,
    };
  }

  factory KubernetesClusterNodeProvisioningProfile.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterNodeProvisioningProfile(
      defaultNodePools: map['defaultNodePools'] == null ? null : map['defaultNodePools'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
    );
  }
}

