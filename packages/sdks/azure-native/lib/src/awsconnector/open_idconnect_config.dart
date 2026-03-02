// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of OpenIDConnectConfig
class OpenIDConnectConfig {
  /// <p>The number of milliseconds that a token is valid after being authenticated.</p>
  final pulumi.Input<double>? authTTL;
  /// <p>The client identifier of the relying party at the OpenID identity provider. This identifier is typically obtained when the relying party is registered with the OpenID identity provider. You can specify a regular expression so that AppSync can validate against multiple client identifiers at a time.</p>
  final pulumi.Input<String>? clientId;
  /// <p>The number of milliseconds that a token is valid after it's issued to a user.</p>
  final pulumi.Input<double>? iatTTL;
  /// <p>The issuer for the OIDC configuration. The issuer returned by discovery must exactly match the value of <code>iss</code> in the ID token.</p>
  final pulumi.Input<String>? issuer;

  /// Creates a new [OpenIDConnectConfig].
  /// [authTTL] <p>The number of milliseconds that a token is valid after being authenticated.</p>
  /// [clientId] <p>The client identifier of the relying party at the OpenID identity provider. This identifier is typically obtained when the relying party is registered with the OpenID identity provider. You can specify a regular expression so that AppSync can validate against multiple client identifiers at a time.</p>
  /// [iatTTL] <p>The number of milliseconds that a token is valid after it's issued to a user.</p>
  /// [issuer] <p>The issuer for the OIDC configuration. The issuer returned by discovery must exactly match the value of <code>iss</code> in the ID token.</p>
  OpenIDConnectConfig({
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

  factory OpenIDConnectConfig.fromMap(Map<String, dynamic> map) {
    return OpenIDConnectConfig(
      authTTL: map['authTTL'] == null ? null : (map['authTTL'] as double).input(),
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      iatTTL: map['iatTTL'] == null ? null : (map['iatTTL'] as double).input(),
      issuer: map['issuer'] == null ? null : (map['issuer'] as String).input(),
    );
  }
}

