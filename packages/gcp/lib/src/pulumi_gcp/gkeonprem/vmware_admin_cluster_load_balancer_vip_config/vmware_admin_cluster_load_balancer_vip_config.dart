// ignore_for_file: unused_element, unnecessary_cast

class VmwareAdminClusterLoadBalancerVipConfig {
  /// The VIP to configure the load balancer for add-ons.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedLoadBalancerF5Config"" pulumi-lang-dotnet=""NestedLoadBalancerF5Config"" pulumi-lang-go=""nestedLoadBalancerF5Config"" pulumi-lang-python=""nested_load_balancer_f5_config"" pulumi-lang-yaml=""nestedLoadBalancerF5Config"" pulumi-lang-java=""nestedLoadBalancerF5Config"">"nested_load_balancer_f5_config"</span>></a>The <span pulumi-lang-nodejs="`f5Config`" pulumi-lang-dotnet="`F5Config`" pulumi-lang-go="`f5Config`" pulumi-lang-python="`f5_config`" pulumi-lang-yaml="`f5Config`" pulumi-lang-java="`f5Config`">`f5_config`</span> block supports:
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
