// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Static Egress Gateway addon configuration for the cluster.
class ManagedClusterStaticEgressGatewayProfile {
  /// Enable Static Egress Gateway addon. Indicates if Static Egress Gateway addon is enabled or not.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ManagedClusterStaticEgressGatewayProfile].
  /// [enabled] Enable Static Egress Gateway addon. Indicates if Static Egress Gateway addon is enabled or not.
  const ManagedClusterStaticEgressGatewayProfile({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterStaticEgressGatewayProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterStaticEgressGatewayProfile(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

