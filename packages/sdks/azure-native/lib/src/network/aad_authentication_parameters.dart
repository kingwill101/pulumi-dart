// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AAD Vpn authentication type related parameters.
class AadAuthenticationParameters {
  /// AAD Vpn authentication parameter AAD audience.
  final pulumi.Input<String>? aadAudience;
  /// AAD Vpn authentication parameter AAD issuer.
  final pulumi.Input<String>? aadIssuer;
  /// AAD Vpn authentication parameter AAD tenant.
  final pulumi.Input<String>? aadTenant;

  /// Creates a new [AadAuthenticationParameters].
  /// [aadAudience] AAD Vpn authentication parameter AAD audience.
  /// [aadIssuer] AAD Vpn authentication parameter AAD issuer.
  /// [aadTenant] AAD Vpn authentication parameter AAD tenant.
  AadAuthenticationParameters({
    this.aadAudience,
    this.aadIssuer,
    this.aadTenant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAudience': ?aadAudience,
      'aadIssuer': ?aadIssuer,
      'aadTenant': ?aadTenant,
    };
  }

  factory AadAuthenticationParameters.fromMap(Map<String, dynamic> map) {
    return AadAuthenticationParameters(
      aadAudience: map['aadAudience'] == null ? null : (map['aadAudience']! as String).input(),
      aadIssuer: map['aadIssuer'] == null ? null : (map['aadIssuer']! as String).input(),
      aadTenant: map['aadTenant'] == null ? null : (map['aadTenant']! as String).input(),
    );
  }
}

