// ignore_for_file: unused_element, unnecessary_cast

class VmwareAdminClusterLoadBalancerMetalLbConfig {
  /// Metal LB is enabled.
  final bool? enabled;

  /// Creates a new [VmwareAdminClusterLoadBalancerMetalLbConfig].
  /// [enabled] Metal LB is enabled.
  VmwareAdminClusterLoadBalancerMetalLbConfig({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory VmwareAdminClusterLoadBalancerMetalLbConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return VmwareAdminClusterLoadBalancerMetalLbConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
