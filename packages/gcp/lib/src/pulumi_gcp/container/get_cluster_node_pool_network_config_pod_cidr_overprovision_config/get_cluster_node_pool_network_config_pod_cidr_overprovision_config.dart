// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNetworkConfigPodCidrOverprovisionConfig {
  final bool disabled;

  GetClusterNodePoolNetworkConfigPodCidrOverprovisionConfig({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    return map;
  }

  factory GetClusterNodePoolNetworkConfigPodCidrOverprovisionConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNetworkConfigPodCidrOverprovisionConfig(
      disabled: map['disabled'] as bool,
    );
  }
}
