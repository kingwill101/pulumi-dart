// ignore_for_file: unused_element, unnecessary_cast


class TrustProviderOidcOptions {
  final String? authorizationEndpoint;
  final String? clientId;
  final String clientSecret;
  final String? issuer;
  final String? scope;
  final String? tokenEndpoint;
  final String? userInfoEndpoint;

  /// Creates a new [TrustProviderOidcOptions].
  /// [authorizationEndpoint] Optional.
  /// [clientId] Optional.
  /// [clientSecret] Required.
  /// [issuer] Optional.
  /// [scope] Optional.
  /// [tokenEndpoint] Optional.
  /// [userInfoEndpoint] Optional.
  TrustProviderOidcOptions({
    this.authorizationEndpoint,
    this.clientId,
    required this.clientSecret,
    this.issuer,
    this.scope,
    this.tokenEndpoint,
    this.userInfoEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationEndpoint': ?authorizationEndpoint,
      'clientId': ?clientId,
      'clientSecret': clientSecret,
      'issuer': ?issuer,
      'scope': ?scope,
      'tokenEndpoint': ?tokenEndpoint,
      'userInfoEndpoint': ?userInfoEndpoint,
    };
  }

  factory TrustProviderOidcOptions.fromMap(Map<String, dynamic> map) {
    return TrustProviderOidcOptions(
      authorizationEndpoint: map['authorizationEndpoint'] == null ? null : map['authorizationEndpoint'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      issuer: map['issuer'] == null ? null : map['issuer'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      tokenEndpoint: map['tokenEndpoint'] == null ? null : map['tokenEndpoint'] as String,
      userInfoEndpoint: map['userInfoEndpoint'] == null ? null : map['userInfoEndpoint'] as String,
    );
  }
}

