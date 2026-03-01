// ignore_for_file: unused_element, unnecessary_cast


class ApiEventConfigAuthProviderOpenidConnectConfig {
  /// TTL in seconds for the authentication token.
  final int? authTtl;
  /// Client ID for the OpenID Connect provider.
  final String? clientId;
  /// TTL in seconds for the issued at time.
  final int? iatTtl;
  /// Issuer URL for the OpenID Connect provider.
  final String issuer;

  /// Creates a new [ApiEventConfigAuthProviderOpenidConnectConfig].
  /// [authTtl] TTL in seconds for the authentication token.
  /// [clientId] Client ID for the OpenID Connect provider.
  /// [iatTtl] TTL in seconds for the issued at time.
  /// [issuer] Issuer URL for the OpenID Connect provider.
  ApiEventConfigAuthProviderOpenidConnectConfig({
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

  factory ApiEventConfigAuthProviderOpenidConnectConfig.fromMap(Map<String, dynamic> map) {
    return ApiEventConfigAuthProviderOpenidConnectConfig(
      authTtl: map['authTtl'] == null ? null : map['authTtl'] as int,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      iatTtl: map['iatTtl'] == null ? null : map['iatTtl'] as int,
      issuer: map['issuer'] as String,
    );
  }
}

