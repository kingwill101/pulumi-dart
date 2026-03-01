// ignore_for_file: unused_element, unnecessary_cast


/// The Static Egress Gateway addon configuration for the cluster.
class ManagedClusterStaticEgressGatewayProfileResponse {
  /// Enable Static Egress Gateway addon. Indicates if Static Egress Gateway addon is enabled or not.
  final bool? enabled;

  /// Creates a new [ManagedClusterStaticEgressGatewayProfileResponse].
  /// [enabled] Enable Static Egress Gateway addon. Indicates if Static Egress Gateway addon is enabled or not.
  ManagedClusterStaticEgressGatewayProfileResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterStaticEgressGatewayProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterStaticEgressGatewayProfileResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

