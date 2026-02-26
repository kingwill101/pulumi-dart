// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the VIP config for the VMware user cluster load balancer.
class VmwareVipConfigResponse {
  /// The VIP which you previously set aside for the Kubernetes API of this cluster.
  final String controlPlaneVip;

  /// The VIP which you previously set aside for ingress traffic into this cluster.
  final String ingressVip;

  VmwareVipConfigResponse({
    required this.controlPlaneVip,
    required this.ingressVip,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['controlPlaneVip'] = controlPlaneVip;
    map['ingressVip'] = ingressVip;
    return map;
  }

  factory VmwareVipConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareVipConfigResponse(
      controlPlaneVip: map['controlPlaneVip'] as String,
      ingressVip: map['ingressVip'] as String,
    );
  }
}
