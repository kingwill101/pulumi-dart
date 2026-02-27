// ignore_for_file: unused_element, unnecessary_cast

class VmwareAdminClusterLoadBalancerVipConfig {
  /// The VIP to configure the load balancer for add-ons.
  ///
  /// <a name="nested_load_balancer_f5_config"></a>The `f5_config` block supports:
  final String? addonsVip;

  /// The VIP which you previously set aside for the Kubernetes
  /// API of this VMware Admin Cluster.
  final String controlPlaneVip;

  VmwareAdminClusterLoadBalancerVipConfig({
    this.addonsVip,
    required this.controlPlaneVip,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addonsVipValue = addonsVip;
    if (addonsVipValue != null) {
      map['addonsVip'] = addonsVipValue;
    }
    map['controlPlaneVip'] = controlPlaneVip;
    return map;
  }

  factory VmwareAdminClusterLoadBalancerVipConfig.fromMap(
      Map<String, dynamic> map) {
    return VmwareAdminClusterLoadBalancerVipConfig(
      addonsVip: map['addonsVip'] == null ? null : map['addonsVip'] as String,
      controlPlaneVip: map['controlPlaneVip'] as String,
    );
  }
}
