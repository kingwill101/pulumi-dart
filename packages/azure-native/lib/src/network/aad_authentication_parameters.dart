// ignore_for_file: unused_element, unnecessary_cast


/// AAD Vpn authentication type related parameters.
class AadAuthenticationParameters {
  /// AAD Vpn authentication parameter AAD audience.
  final String? aadAudience;
  /// AAD Vpn authentication parameter AAD issuer.
  final String? aadIssuer;
  /// AAD Vpn authentication parameter AAD tenant.
  final String? aadTenant;

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
      aadAudience: map['aadAudience'] == null ? null : map['aadAudience'] as String,
      aadIssuer: map['aadIssuer'] == null ? null : map['aadIssuer'] as String,
      aadTenant: map['aadTenant'] == null ? null : map['aadTenant'] as String,
    );
  }
}

