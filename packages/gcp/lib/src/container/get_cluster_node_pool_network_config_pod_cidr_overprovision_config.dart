// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNetworkConfigPodCidrOverprovisionConfig {
  final bool disabled;

  /// Creates a new [GetClusterNodePoolNetworkConfigPodCidrOverprovisionConfig].
  /// [disabled] Required.
  GetClusterNodePoolNetworkConfigPodCidrOverprovisionConfig({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disabled': disabled};
  }

  factory GetClusterNodePoolNetworkConfigPodCidrOverprovisionConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodePoolNetworkConfigPodCidrOverprovisionConfig(
      disabled: map['disabled'] as bool,
    );
  }
}
