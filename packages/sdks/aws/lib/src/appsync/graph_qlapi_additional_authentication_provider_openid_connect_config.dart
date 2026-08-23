// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GraphQLApiAdditionalAuthenticationProviderOpenidConnectConfig {
  /// Number of milliseconds a token is valid after being authenticated.
  final pulumi.Input<int>? authTtl;
  /// Client identifier of the Relying party at the OpenID identity provider. This identifier is typically obtained when the Relying party is registered with the OpenID identity provider. You can specify a regular expression so the AWS AppSync can validate against multiple client identifiers at a time.
  final pulumi.Input<String>? clientId;
  /// Number of milliseconds a token is valid after being issued to a user.
  final pulumi.Input<int>? iatTtl;
  /// Issuer for the OpenID Connect configuration. The issuer returned by discovery MUST exactly match the value of iss in the ID Token.
  final pulumi.Input<String> issuer;

  /// Creates a new [GraphQLApiAdditionalAuthenticationProviderOpenidConnectConfig].
  /// [authTtl] Number of milliseconds a token is valid after being authenticated.
  /// [clientId] Client identifier of the Relying party at the OpenID identity provider. This identifier is typically obtained when the Relying party is registered with the OpenID identity provider. You can specify a regular expression so the AWS AppSync can validate against multiple client identifiers at a time.
  /// [iatTtl] Number of milliseconds a token is valid after being issued to a user.
  /// [issuer] Issuer for the OpenID Connect configuration. The issuer returned by discovery MUST exactly match the value of iss in the ID Token.
  const GraphQLApiAdditionalAuthenticationProviderOpenidConnectConfig({
    this.authTtl,
    this.clientId,
    this.iatTtl,
    required this.issuer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authTtl': ?authTtl,
      'clientId': ?clientId,
      'iatTtl': ?iatTtl,
      'issuer': issuer,
    };
  }

  factory GraphQLApiAdditionalAuthenticationProviderOpenidConnectConfig.fromMap(Map<String, dynamic> map) {
    return GraphQLApiAdditionalAuthenticationProviderOpenidConnectConfig(
      authTtl: (() { final guardedValue = map['authTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iatTtl: (() { final guardedValue = map['iatTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
    );
  }
}
