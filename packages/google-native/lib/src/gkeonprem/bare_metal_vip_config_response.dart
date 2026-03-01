// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the VIP config for the bare metal load balancer.
class BareMetalVipConfigResponse {
  /// The VIP which you previously set aside for the Kubernetes API of this bare metal user cluster.
  final String controlPlaneVip;

  /// The VIP which you previously set aside for ingress traffic into this bare metal user cluster.
  final String ingressVip;

  /// Creates a new [BareMetalVipConfigResponse].
  /// [controlPlaneVip] The VIP which you previously set aside for the Kubernetes API of this bare metal user cluster.
  /// [ingressVip] The VIP which you previously set aside for ingress traffic into this bare metal user cluster.
  BareMetalVipConfigResponse({
    required this.controlPlaneVip,
    required this.ingressVip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneVip': controlPlaneVip,
      'ingressVip': ingressVip,
    };
  }

  factory BareMetalVipConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalVipConfigResponse(
      controlPlaneVip: map['controlPlaneVip'] as String,
      ingressVip: map['ingressVip'] as String,
    );
  }
}
