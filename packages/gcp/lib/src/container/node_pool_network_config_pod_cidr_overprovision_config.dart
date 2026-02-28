// ignore_for_file: unused_element, unnecessary_cast


class NodePoolNetworkConfigPodCidrOverprovisionConfig {
  /// Whether pod cidr overprovision is disabled.
  final bool disabled;

  /// Creates a new [NodePoolNetworkConfigPodCidrOverprovisionConfig].
  /// [disabled] Whether pod cidr overprovision is disabled.
  NodePoolNetworkConfigPodCidrOverprovisionConfig({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory NodePoolNetworkConfigPodCidrOverprovisionConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNetworkConfigPodCidrOverprovisionConfig(
      disabled: map['disabled'] as bool,
    );
  }
}

