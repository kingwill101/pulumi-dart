// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GraphQLApiOpenidConnectConfig {
  /// Number of milliseconds a token is valid after being authenticated.
  final pulumi.Input<int>? authTtl;
  /// Client identifier of the Relying party at the OpenID identity provider. This identifier is typically obtained when the Relying party is registered with the OpenID identity provider. You can specify a regular expression so the AWS AppSync can validate against multiple client identifiers at a time.
  final pulumi.Input<String>? clientId;
  /// Number of milliseconds a token is valid after being issued to a user.
  final pulumi.Input<int>? iatTtl;
  /// Issuer for the OpenID Connect configuration. The issuer returned by discovery MUST exactly match the value of iss in the ID Token.
  final pulumi.Input<String> issuer;

  /// Creates a new [GraphQLApiOpenidConnectConfig].
  /// [authTtl] Number of milliseconds a token is valid after being authenticated.
  /// [clientId] Client identifier of the Relying party at the OpenID identity provider. This identifier is typically obtained when the Relying party is registered with the OpenID identity provider. You can specify a regular expression so the AWS AppSync can validate against multiple client identifiers at a time.
  /// [iatTtl] Number of milliseconds a token is valid after being issued to a user.
  /// [issuer] Issuer for the OpenID Connect configuration. The issuer returned by discovery MUST exactly match the value of iss in the ID Token.
  GraphQLApiOpenidConnectConfig({
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

  factory GraphQLApiOpenidConnectConfig.fromMap(Map<String, dynamic> map) {
    return GraphQLApiOpenidConnectConfig(
      authTtl: map['authTtl'] == null ? null : (map['authTtl'] as int).input(),
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      iatTtl: map['iatTtl'] == null ? null : (map['iatTtl'] as int).input(),
      issuer: (map['issuer'] as String).input(),
    );
  }
}

