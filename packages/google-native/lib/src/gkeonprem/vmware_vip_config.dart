// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the VIP config for the VMware user cluster load balancer.
class VmwareVipConfig {
  /// The VIP which you previously set aside for the Kubernetes API of this cluster.
  final String? controlPlaneVip;
  /// The VIP which you previously set aside for ingress traffic into this cluster.
  final String? ingressVip;

  /// Creates a new [VmwareVipConfig].
  /// [controlPlaneVip] The VIP which you previously set aside for the Kubernetes API of this cluster.
  /// [ingressVip] The VIP which you previously set aside for ingress traffic into this cluster.
  VmwareVipConfig({
    this.controlPlaneVip,
    this.ingressVip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneVip': ?controlPlaneVip,
      'ingressVip': ?ingressVip,
    };
  }

  factory VmwareVipConfig.fromMap(Map<String, dynamic> map) {
    return VmwareVipConfig(
      controlPlaneVip: map['controlPlaneVip'] == null ? null : map['controlPlaneVip'] as String,
      ingressVip: map['ingressVip'] == null ? null : map['ingressVip'] as String,
    );
  }
}

