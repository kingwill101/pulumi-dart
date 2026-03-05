// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AAD Vpn authentication type related parameters.
class AadAuthenticationParametersResponse {
  /// AAD Vpn authentication parameter AAD audience.
  final pulumi.Input<String>? aadAudience;
  /// AAD Vpn authentication parameter AAD issuer.
  final pulumi.Input<String>? aadIssuer;
  /// AAD Vpn authentication parameter AAD tenant.
  final pulumi.Input<String>? aadTenant;

  /// Creates a new [AadAuthenticationParametersResponse].
  /// [aadAudience] AAD Vpn authentication parameter AAD audience.
  /// [aadIssuer] AAD Vpn authentication parameter AAD issuer.
  /// [aadTenant] AAD Vpn authentication parameter AAD tenant.
  AadAuthenticationParametersResponse({
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

  factory AadAuthenticationParametersResponse.fromMap(Map<String, dynamic> map) {
    return AadAuthenticationParametersResponse(
      aadAudience: (() { final guardedValue = map['aadAudience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aadIssuer: (() { final guardedValue = map['aadIssuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aadTenant: (() { final guardedValue = map['aadTenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

