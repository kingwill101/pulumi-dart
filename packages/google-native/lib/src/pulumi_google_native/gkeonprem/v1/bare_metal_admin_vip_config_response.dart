// ignore_for_file: unused_element, unnecessary_cast

/// BareMetalAdminVipConfig for bare metal load balancer configurations.
class BareMetalAdminVipConfigResponse {
  /// The VIP which you previously set aside for the Kubernetes API of this bare metal admin cluster.
  final String controlPlaneVip;

  BareMetalAdminVipConfigResponse({
    required this.controlPlaneVip,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['controlPlaneVip'] = controlPlaneVip;
    return map;
  }

  factory BareMetalAdminVipConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminVipConfigResponse(
      controlPlaneVip: map['controlPlaneVip'] as String,
    );
  }
}
