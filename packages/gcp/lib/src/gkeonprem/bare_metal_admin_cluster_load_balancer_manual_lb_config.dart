// ignore_for_file: unused_element, unnecessary_cast

class BareMetalAdminClusterLoadBalancerManualLbConfig {
  /// Whether manual load balancing is enabled.
  final bool enabled;

  /// Creates a new [BareMetalAdminClusterLoadBalancerManualLbConfig].
  /// [enabled] Whether manual load balancing is enabled.
  BareMetalAdminClusterLoadBalancerManualLbConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory BareMetalAdminClusterLoadBalancerManualLbConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminClusterLoadBalancerManualLbConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
