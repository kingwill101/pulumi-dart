// ignore_for_file: unused_element, unnecessary_cast

/// [PRIVATE FIELD] Config for pod CIDR size overprovisioning.
class PodCIDROverprovisionConfig2 {
  /// Whether Pod CIDR overprovisioning is disabled. Note: Pod CIDR overprovisioning is enabled by default.
  final bool? disable;

  PodCIDROverprovisionConfig2({
    this.disable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disableValue = disable;
    if (disableValue != null) {
      map['disable'] = disableValue;
    }
    return map;
  }

  factory PodCIDROverprovisionConfig2.fromMap(Map<String, dynamic> map) {
    return PodCIDROverprovisionConfig2(
      disable: map['disable'] == null ? null : map['disable'] as bool,
    );
  }
}
