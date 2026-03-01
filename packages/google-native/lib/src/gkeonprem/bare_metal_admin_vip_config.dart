// ignore_for_file: unused_element, unnecessary_cast

/// BareMetalAdminVipConfig for bare metal load balancer configurations.
class BareMetalAdminVipConfig {
  /// The VIP which you previously set aside for the Kubernetes API of this bare metal admin cluster.
  final String? controlPlaneVip;

  /// Creates a new [BareMetalAdminVipConfig].
  /// [controlPlaneVip] The VIP which you previously set aside for the Kubernetes API of this bare metal admin cluster.
  BareMetalAdminVipConfig({this.controlPlaneVip});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'controlPlaneVip': ?controlPlaneVip};
  }

  factory BareMetalAdminVipConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminVipConfig(
      controlPlaneVip: map['controlPlaneVip'] == null
          ? null
          : map['controlPlaneVip'] as String,
    );
  }
}
