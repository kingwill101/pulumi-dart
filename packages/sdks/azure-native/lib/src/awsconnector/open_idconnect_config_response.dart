// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of OpenIDConnectConfig
class OpenIDConnectConfigResponse {
  /// &lt;p&gt;The number of milliseconds that a token is valid after being authenticated.&lt;/p&gt;
  final pulumi.Input<double>? authTTL;
  /// &lt;p&gt;The client identifier of the relying party at the OpenID identity provider. This identifier is typically obtained when the relying party is registered with the OpenID identity provider. You can specify a regular expression so that AppSync can validate against multiple client identifiers at a time.&lt;/p&gt;
  final pulumi.Input<String>? clientId;
  /// &lt;p&gt;The number of milliseconds that a token is valid after it's issued to a user.&lt;/p&gt;
  final pulumi.Input<double>? iatTTL;
  /// &lt;p&gt;The issuer for the OIDC configuration. The issuer returned by discovery must exactly match the value of &lt;code&gt;iss&lt;/code&gt; in the ID token.&lt;/p&gt;
  final pulumi.Input<String>? issuer;

  /// Creates a new [OpenIDConnectConfigResponse].
  /// [authTTL] &lt;p&gt;The number of milliseconds that a token is valid after being authenticated.&lt;/p&gt;
  /// [clientId] &lt;p&gt;The client identifier of the relying party at the OpenID identity provider. This identifier is typically obtained when the relying party is registered with the OpenID identity provider. You can specify a regular expression so that AppSync can validate against multiple client identifiers at a time.&lt;/p&gt;
  /// [iatTTL] &lt;p&gt;The number of milliseconds that a token is valid after it's issued to a user.&lt;/p&gt;
  /// [issuer] &lt;p&gt;The issuer for the OIDC configuration. The issuer returned by discovery must exactly match the value of &lt;code&gt;iss&lt;/code&gt; in the ID token.&lt;/p&gt;
  const OpenIDConnectConfigResponse({
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
      authTTL: (() { final guardedValue = map['authTTL']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iatTTL: (() { final guardedValue = map['iatTTL']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

