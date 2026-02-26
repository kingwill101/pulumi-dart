// ignore_for_file: unused_element, unnecessary_cast

class VMwareClusterLoadBalancerVipConfig {
  /// The VIP which you previously set aside for the Kubernetes API of this cluster.
  final String? controlPlaneVip;

  /// The VIP which you previously set aside for ingress traffic into this cluster.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedLoadBalancerF5Config"" pulumi-lang-dotnet=""NestedLoadBalancerF5Config"" pulumi-lang-go=""nestedLoadBalancerF5Config"" pulumi-lang-python=""nested_load_balancer_f5_config"" pulumi-lang-yaml=""nestedLoadBalancerF5Config"" pulumi-lang-java=""nestedLoadBalancerF5Config"">"nested_load_balancer_f5_config"</span>></a>The <span pulumi-lang-nodejs="`f5Config`" pulumi-lang-dotnet="`F5Config`" pulumi-lang-go="`f5Config`" pulumi-lang-python="`f5_config`" pulumi-lang-yaml="`f5Config`" pulumi-lang-java="`f5Config`">`f5_config`</span> block supports:
  final String? ingressVip;

  VMwareClusterLoadBalancerVipConfig({
    this.controlPlaneVip,
    this.ingressVip,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final controlPlaneVipValue = controlPlaneVip;
    if (controlPlaneVipValue != null) {
      map['controlPlaneVip'] = controlPlaneVipValue;
    }
    final ingressVipValue = ingressVip;
    if (ingressVipValue != null) {
      map['ingressVip'] = ingressVipValue;
    }
    return map;
  }

  factory VMwareClusterLoadBalancerVipConfig.fromMap(Map<String, dynamic> map) {
    return VMwareClusterLoadBalancerVipConfig(
      controlPlaneVip: map['controlPlaneVip'] == null
          ? null
          : map['controlPlaneVip'] as String,
      ingressVip:
          map['ingressVip'] == null ? null : map['ingressVip'] as String,
    );
  }
}
