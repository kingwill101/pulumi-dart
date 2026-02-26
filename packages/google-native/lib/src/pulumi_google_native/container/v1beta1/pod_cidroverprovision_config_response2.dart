// ignore_for_file: unused_element, unnecessary_cast

/// [PRIVATE FIELD] Config for pod CIDR size overprovisioning.
class PodCIDROverprovisionConfigResponse2 {
  /// Whether Pod CIDR overprovisioning is disabled. Note: Pod CIDR overprovisioning is enabled by default.
  final bool disable;

  PodCIDROverprovisionConfigResponse2({
    required this.disable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disable'] = disable;
    return map;
  }

  factory PodCIDROverprovisionConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return PodCIDROverprovisionConfigResponse2(
      disable: map['disable'] as bool,
    );
  }
}
