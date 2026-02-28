// ignore_for_file: unused_element, unnecessary_cast

class WorkforceOidcConfig {
  /// A string to string map of identifiers specific to the custom identity provider (IdP) being used.
  final Map<String, String>? authenticationRequestExtraParams;

  /// The OIDC IdP authorization endpoint used to configure your private workforce.
  final String authorizationEndpoint;

  /// The OIDC IdP client ID used to configure your private workforce.
  final String clientId;

  /// The OIDC IdP client secret used to configure your private workforce.
  final String clientSecret;

  /// The OIDC IdP issuer used to configure your private workforce.
  final String issuer;

  /// The OIDC IdP JSON Web Key Set (Jwks) URI used to configure your private workforce.
  final String jwksUri;

  /// The OIDC IdP logout endpoint used to configure your private workforce.
  final String logoutEndpoint;

  /// An array of string identifiers used to refer to the specific pieces of user data or claims that the client application wants to access.
  final String? scope;

  /// The OIDC IdP token endpoint used to configure your private workforce.
  final String tokenEndpoint;

  /// The OIDC IdP user information endpoint used to configure your private workforce.
  final String userInfoEndpoint;

  /// Creates a new [WorkforceOidcConfig].
  /// [authenticationRequestExtraParams] A string to string map of identifiers specific to the custom identity provider (IdP) being used.
  /// [authorizationEndpoint] The OIDC IdP authorization endpoint used to configure your private workforce.
  /// [clientId] The OIDC IdP client ID used to configure your private workforce.
  /// [clientSecret] The OIDC IdP client secret used to configure your private workforce.
  /// [issuer] The OIDC IdP issuer used to configure your private workforce.
  /// [jwksUri] The OIDC IdP JSON Web Key Set (Jwks) URI used to configure your private workforce.
  /// [logoutEndpoint] The OIDC IdP logout endpoint used to configure your private workforce.
  /// [scope] An array of string identifiers used to refer to the specific pieces of user data or claims that the client application wants to access.
  /// [tokenEndpoint] The OIDC IdP token endpoint used to configure your private workforce.
  /// [userInfoEndpoint] The OIDC IdP user information endpoint used to configure your private workforce.
  WorkforceOidcConfig({
    this.authenticationRequestExtraParams,
    required this.authorizationEndpoint,
    required this.clientId,
    required this.clientSecret,
    required this.issuer,
    required this.jwksUri,
    required this.logoutEndpoint,
    this.scope,
    required this.tokenEndpoint,
    required this.userInfoEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authenticationRequestExtraParamsValue =
        authenticationRequestExtraParams;
    if (authenticationRequestExtraParamsValue != null) {
      map['authenticationRequestExtraParams'] =
          authenticationRequestExtraParamsValue;
    }
    map['authorizationEndpoint'] = authorizationEndpoint;
    map['clientId'] = clientId;
    map['clientSecret'] = clientSecret;
    map['issuer'] = issuer;
    map['jwksUri'] = jwksUri;
    map['logoutEndpoint'] = logoutEndpoint;
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue;
    }
    map['tokenEndpoint'] = tokenEndpoint;
    map['userInfoEndpoint'] = userInfoEndpoint;
    return map;
  }

  factory WorkforceOidcConfig.fromMap(Map<String, dynamic> map) {
    return WorkforceOidcConfig(
      authenticationRequestExtraParams:
          map['authenticationRequestExtraParams'] == null
              ? null
              : (map['authenticationRequestExtraParams'] as Map)
                  .cast<String, String>(),
      authorizationEndpoint: map['authorizationEndpoint'] as String,
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      issuer: map['issuer'] as String,
      jwksUri: map['jwksUri'] as String,
      logoutEndpoint: map['logoutEndpoint'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      tokenEndpoint: map['tokenEndpoint'] as String,
      userInfoEndpoint: map['userInfoEndpoint'] as String,
    );
  }
}
