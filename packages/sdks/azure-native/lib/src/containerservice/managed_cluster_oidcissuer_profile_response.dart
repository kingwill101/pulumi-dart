// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The OIDC issuer profile of the Managed Cluster.
class ManagedClusterOIDCIssuerProfileResponse {
  /// Whether the OIDC issuer is enabled.
  final pulumi.Input<bool>? enabled;
  /// The OIDC issuer url of the Managed Cluster.
  final pulumi.Input<String> issuerURL;

  /// Creates a new [ManagedClusterOIDCIssuerProfileResponse].
  /// [enabled] Whether the OIDC issuer is enabled.
  /// [issuerURL] The OIDC issuer url of the Managed Cluster.
  ManagedClusterOIDCIssuerProfileResponse({
    this.enabled,
    required this.issuerURL,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'issuerURL': issuerURL,
    };
  }

  factory ManagedClusterOIDCIssuerProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterOIDCIssuerProfileResponse(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      issuerURL: (map['issuerURL'] as String).input(),
    );
  }
}

