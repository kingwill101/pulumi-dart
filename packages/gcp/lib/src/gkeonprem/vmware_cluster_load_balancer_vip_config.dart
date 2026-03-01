// ignore_for_file: unused_element, unnecessary_cast

class VMwareClusterLoadBalancerVipConfig {
  /// The VIP which you previously set aside for the Kubernetes API of this cluster.
  final String? controlPlaneVip;

  /// The VIP which you previously set aside for ingress traffic into this cluster.
  ///
  /// <a name="nested_load_balancer_f5_config"></a>The `f5_config` block supports:
  final String? ingressVip;

  /// Creates a new [VMwareClusterLoadBalancerVipConfig].
  /// [controlPlaneVip] The VIP which you previously set aside for the Kubernetes API of this cluster.
  /// [ingressVip] The VIP which you previously set aside for ingress traffic into this cluster.
  VMwareClusterLoadBalancerVipConfig({this.controlPlaneVip, this.ingressVip});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneVip': ?controlPlaneVip,
      'ingressVip': ?ingressVip,
    };
  }

  factory VMwareClusterLoadBalancerVipConfig.fromMap(Map<String, dynamic> map) {
    return VMwareClusterLoadBalancerVipConfig(
      controlPlaneVip: map['controlPlaneVip'] == null
          ? null
          : map['controlPlaneVip'] as String,
      ingressVip: map['ingressVip'] == null
          ? null
          : map['ingressVip'] as String,
    );
  }
}
