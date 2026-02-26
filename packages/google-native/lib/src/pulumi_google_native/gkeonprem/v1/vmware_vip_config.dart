// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the VIP config for the VMware user cluster load balancer.
class VmwareVipConfig {
  /// The VIP which you previously set aside for the Kubernetes API of this cluster.
  final String? controlPlaneVip;

  /// The VIP which you previously set aside for ingress traffic into this cluster.
  final String? ingressVip;

  VmwareVipConfig({
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

  factory VmwareVipConfig.fromMap(Map<String, dynamic> map) {
    return VmwareVipConfig(
      controlPlaneVip: map['controlPlaneVip'] == null
          ? null
          : map['controlPlaneVip'] as String,
      ingressVip:
          map['ingressVip'] == null ? null : map['ingressVip'] as String,
    );
  }
}
