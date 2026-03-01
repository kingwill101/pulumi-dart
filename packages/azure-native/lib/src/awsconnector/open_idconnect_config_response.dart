// ignore_for_file: unused_element, unnecessary_cast


/// Definition of OpenIDConnectConfig
class OpenIDConnectConfigResponse {
  /// <p>The number of milliseconds that a token is valid after being authenticated.</p>
  final double? authTTL;
  /// <p>The client identifier of the relying party at the OpenID identity provider. This identifier is typically obtained when the relying party is registered with the OpenID identity provider. You can specify a regular expression so that AppSync can validate against multiple client identifiers at a time.</p>
  final String? clientId;
  /// <p>The number of milliseconds that a token is valid after it's issued to a user.</p>
  final double? iatTTL;
  /// <p>The issuer for the OIDC configuration. The issuer returned by discovery must exactly match the value of <code>iss</code> in the ID token.</p>
  final String? issuer;

  /// Creates a new [OpenIDConnectConfigResponse].
  /// [authTTL] <p>The number of milliseconds that a token is valid after being authenticated.</p>
  /// [clientId] <p>The client identifier of the relying party at the OpenID identity provider. This identifier is typically obtained when the relying party is registered with the OpenID identity provider. You can specify a regular expression so that AppSync can validate against multiple client identifiers at a time.</p>
  /// [iatTTL] <p>The number of milliseconds that a token is valid after it's issued to a user.</p>
  /// [issuer] <p>The issuer for the OIDC configuration. The issuer returned by discovery must exactly match the value of <code>iss</code> in the ID token.</p>
  OpenIDConnectConfigResponse({
    this.authTTL,
    this.clientId,
    this.iatTTL,
    this.issuer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authTTL': ?authTTL,
      'clientId': ?clientId,
      'iatTTL': ?iatTTL,
      'issuer': ?issuer,
    };
  }

  factory OpenIDConnectConfigResponse.fromMap(Map<String, dynamic> map) {
    return OpenIDConnectConfigResponse(
      authTTL: map['authTTL'] == null ? null : map['authTTL'] as double,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      iatTTL: map['iatTTL'] == null ? null : map['iatTTL'] as double,
      issuer: map['issuer'] == null ? null : map['issuer'] as String,
    );
  }
}

