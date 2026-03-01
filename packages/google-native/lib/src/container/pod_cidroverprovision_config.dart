// ignore_for_file: unused_element, unnecessary_cast

/// [PRIVATE FIELD] Config for pod CIDR size overprovisioning.
class PodCIDROverprovisionConfig {
  /// Whether Pod CIDR overprovisioning is disabled. Note: Pod CIDR overprovisioning is enabled by default.
  final bool? disable;

  /// Creates a new [PodCIDROverprovisionConfig].
  /// [disable] Whether Pod CIDR overprovisioning is disabled. Note: Pod CIDR overprovisioning is enabled by default.
  PodCIDROverprovisionConfig({this.disable});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disable': ?disable};
  }

  factory PodCIDROverprovisionConfig.fromMap(Map<String, dynamic> map) {
    return PodCIDROverprovisionConfig(
      disable: map['disable'] == null ? null : map['disable'] as bool,
    );
  }
}
