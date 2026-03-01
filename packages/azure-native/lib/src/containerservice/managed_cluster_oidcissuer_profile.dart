// ignore_for_file: unused_element, unnecessary_cast


/// The OIDC issuer profile of the Managed Cluster.
class ManagedClusterOIDCIssuerProfile {
  /// Whether the OIDC issuer is enabled.
  final bool? enabled;

  /// Creates a new [ManagedClusterOIDCIssuerProfile].
  /// [enabled] Whether the OIDC issuer is enabled.
  ManagedClusterOIDCIssuerProfile({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterOIDCIssuerProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterOIDCIssuerProfile(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

