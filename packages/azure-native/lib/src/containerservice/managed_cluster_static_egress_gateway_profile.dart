// ignore_for_file: unused_element, unnecessary_cast


/// The Static Egress Gateway addon configuration for the cluster.
class ManagedClusterStaticEgressGatewayProfile {
  /// Enable Static Egress Gateway addon. Indicates if Static Egress Gateway addon is enabled or not.
  final bool? enabled;

  /// Creates a new [ManagedClusterStaticEgressGatewayProfile].
  /// [enabled] Enable Static Egress Gateway addon. Indicates if Static Egress Gateway addon is enabled or not.
  ManagedClusterStaticEgressGatewayProfile({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterStaticEgressGatewayProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterStaticEgressGatewayProfile(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

