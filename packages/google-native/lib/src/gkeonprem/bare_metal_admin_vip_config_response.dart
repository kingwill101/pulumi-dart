// ignore_for_file: unused_element, unnecessary_cast


/// BareMetalAdminVipConfig for bare metal load balancer configurations.
class BareMetalAdminVipConfigResponse {
  /// The VIP which you previously set aside for the Kubernetes API of this bare metal admin cluster.
  final String controlPlaneVip;

  /// Creates a new [BareMetalAdminVipConfigResponse].
  /// [controlPlaneVip] The VIP which you previously set aside for the Kubernetes API of this bare metal admin cluster.
  BareMetalAdminVipConfigResponse({
    required this.controlPlaneVip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneVip': controlPlaneVip,
    };
  }

  factory BareMetalAdminVipConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminVipConfigResponse(
      controlPlaneVip: map['controlPlaneVip'] as String,
    );
  }
}

