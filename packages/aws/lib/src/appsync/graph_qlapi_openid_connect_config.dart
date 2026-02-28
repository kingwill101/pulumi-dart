// ignore_for_file: unused_element, unnecessary_cast

class GraphQLApiOpenidConnectConfig {
  /// Number of milliseconds a token is valid after being authenticated.
  final int? authTtl;

  /// Client identifier of the Relying party at the OpenID identity provider. This identifier is typically obtained when the Relying party is registered with the OpenID identity provider. You can specify a regular expression so the AWS AppSync can validate against multiple client identifiers at a time.
  final String? clientId;

  /// Number of milliseconds a token is valid after being issued to a user.
  final int? iatTtl;

  /// Issuer for the OpenID Connect configuration. The issuer returned by discovery MUST exactly match the value of iss in the ID Token.
  final String issuer;

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
    final map = <String, dynamic>{};
    final authTtlValue = authTtl;
    if (authTtlValue != null) {
      map['authTtl'] = authTtlValue;
    }
    final clientIdValue = clientId;
    if (clientIdValue != null) {
      map['clientId'] = clientIdValue;
    }
    final iatTtlValue = iatTtl;
    if (iatTtlValue != null) {
      map['iatTtl'] = iatTtlValue;
    }
    map['issuer'] = issuer;
    return map;
  }

  factory GraphQLApiOpenidConnectConfig.fromMap(Map<String, dynamic> map) {
    return GraphQLApiOpenidConnectConfig(
      authTtl: map['authTtl'] == null ? null : map['authTtl'] as int,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      iatTtl: map['iatTtl'] == null ? null : map['iatTtl'] as int,
      issuer: map['issuer'] as String,
    );
  }
}
