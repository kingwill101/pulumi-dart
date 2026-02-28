// ignore_for_file: unused_element, unnecessary_cast

/// [PRIVATE FIELD] Config for pod CIDR size overprovisioning.
class PodCIDROverprovisionConfigResponseContainerV1beta1 {
  /// Whether Pod CIDR overprovisioning is disabled. Note: Pod CIDR overprovisioning is enabled by default.
  final bool disable;

  /// Creates a new [PodCIDROverprovisionConfigResponseContainerV1beta1].
  /// [disable] Whether Pod CIDR overprovisioning is disabled. Note: Pod CIDR overprovisioning is enabled by default.
  PodCIDROverprovisionConfigResponseContainerV1beta1({
    required this.disable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disable'] = disable;
    return map;
  }

  factory PodCIDROverprovisionConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return PodCIDROverprovisionConfigResponseContainerV1beta1(
      disable: map['disable'] as bool,
    );
  }
}
