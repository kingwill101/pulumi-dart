// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The OIDC issuer profile of the Managed Cluster.
class ManagedClusterOIDCIssuerProfile {
  /// Whether the OIDC issuer is enabled.
  final pulumi.Input<bool>? enabled;

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
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

