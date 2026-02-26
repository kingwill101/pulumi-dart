// ignore_for_file: unused_element, unnecessary_cast

class BareMetalClusterLoadBalancerVipConfig {
  /// The VIP which you previously set aside for the Kubernetes API of this Bare Metal User Cluster.
  final String controlPlaneVip;

  /// The VIP which you previously set aside for ingress traffic into this Bare Metal User Cluster.
  final String ingressVip;

  BareMetalClusterLoadBalancerVipConfig({
    required this.controlPlaneVip,
    required this.ingressVip,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['controlPlaneVip'] = controlPlaneVip;
    map['ingressVip'] = ingressVip;
    return map;
  }

  factory BareMetalClusterLoadBalancerVipConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalClusterLoadBalancerVipConfig(
      controlPlaneVip: map['controlPlaneVip'] as String,
      ingressVip: map['ingressVip'] as String,
    );
  }
}
