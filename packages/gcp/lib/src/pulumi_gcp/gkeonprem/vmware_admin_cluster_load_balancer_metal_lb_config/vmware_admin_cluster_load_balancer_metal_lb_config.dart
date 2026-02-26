// ignore_for_file: unused_element, unnecessary_cast

class VmwareAdminClusterLoadBalancerMetalLbConfig {
  /// Metal LB is enabled.
  final bool? enabled;

  VmwareAdminClusterLoadBalancerMetalLbConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory VmwareAdminClusterLoadBalancerMetalLbConfig.fromMap(
      Map<String, dynamic> map) {
    return VmwareAdminClusterLoadBalancerMetalLbConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
