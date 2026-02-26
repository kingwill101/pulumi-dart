// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the VIP config for the bare metal load balancer.
class BareMetalVipConfig {
  /// The VIP which you previously set aside for the Kubernetes API of this bare metal user cluster.
  final String? controlPlaneVip;

  /// The VIP which you previously set aside for ingress traffic into this bare metal user cluster.
  final String? ingressVip;

  BareMetalVipConfig({
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

  factory BareMetalVipConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalVipConfig(
      controlPlaneVip: map['controlPlaneVip'] == null
          ? null
          : map['controlPlaneVip'] as String,
      ingressVip:
          map['ingressVip'] == null ? null : map['ingressVip'] as String,
    );
  }
}
