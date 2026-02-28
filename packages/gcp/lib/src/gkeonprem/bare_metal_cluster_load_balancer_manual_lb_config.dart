// ignore_for_file: unused_element, unnecessary_cast

class BareMetalClusterLoadBalancerManualLbConfig {
  /// Whether manual load balancing is enabled.
  final bool enabled;

  /// Creates a new [BareMetalClusterLoadBalancerManualLbConfig].
  /// [enabled] Whether manual load balancing is enabled.
  BareMetalClusterLoadBalancerManualLbConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory BareMetalClusterLoadBalancerManualLbConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalClusterLoadBalancerManualLbConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
