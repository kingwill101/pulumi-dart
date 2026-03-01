// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleActionAuthenticateOidc {
  /// The query parameters to include in the redirect request to the authorization endpoint. Max: 10.
  final Map<String, String>? authenticationRequestExtraParams;

  /// The authorization endpoint of the IdP.
  final String authorizationEndpoint;

  /// The OAuth 2.0 client identifier.
  final String clientId;

  /// The OAuth 2.0 client secret.
  final String clientSecret;

  /// The OIDC issuer identifier of the IdP.
  final String issuer;

  /// The behavior if the user is not authenticated. Valid values: `deny`, `allow` and `authenticate`
  final String? onUnauthenticatedRequest;

  /// The set of user claims to be requested from the IdP.
  final String? scope;

  /// The name of the cookie used to maintain session information.
  final String? sessionCookieName;

  /// The maximum duration of the authentication session, in seconds.
  final int? sessionTimeout;

  /// The token endpoint of the IdP.
  final String tokenEndpoint;

  /// The user info endpoint of the IdP.
  final String userInfoEndpoint;

  /// Creates a new [ListenerRuleActionAuthenticateOidc].
  /// [authenticationRequestExtraParams] The query parameters to include in the redirect request to the authorization endpoint. Max: 10.
  /// [authorizationEndpoint] The authorization endpoint of the IdP.
  /// [clientId] The OAuth 2.0 client identifier.
  /// [clientSecret] The OAuth 2.0 client secret.
  /// [issuer] The OIDC issuer identifier of the IdP.
  /// [onUnauthenticatedRequest] The behavior if the user is not authenticated. Valid values: `deny`, `allow` and `authenticate`
  /// [scope] The set of user claims to be requested from the IdP.
  /// [sessionCookieName] The name of the cookie used to maintain session information.
  /// [sessionTimeout] The maximum duration of the authentication session, in seconds.
  /// [tokenEndpoint] The token endpoint of the IdP.
  /// [userInfoEndpoint] The user info endpoint of the IdP.
  ListenerRuleActionAuthenticateOidc({
    this.authenticationRequestExtraParams,
    required this.authorizationEndpoint,
    required this.clientId,
    required this.clientSecret,
    required this.issuer,
    this.onUnauthenticatedRequest,
    this.scope,
    this.sessionCookieName,
    this.sessionTimeout,
    required this.tokenEndpoint,
    required this.userInfoEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationRequestExtraParams': ?authenticationRequestExtraParams,
      'authorizationEndpoint': authorizationEndpoint,
      'clientId': clientId,
      'clientSecret': clientSecret,
      'issuer': issuer,
      'onUnauthenticatedRequest': ?onUnauthenticatedRequest,
      'scope': ?scope,
      'sessionCookieName': ?sessionCookieName,
      'sessionTimeout': ?sessionTimeout,
      'tokenEndpoint': tokenEndpoint,
      'userInfoEndpoint': userInfoEndpoint,
    };
  }

  factory ListenerRuleActionAuthenticateOidc.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionAuthenticateOidc(
      authenticationRequestExtraParams:
          map['authenticationRequestExtraParams'] == null
          ? null
          : (map['authenticationRequestExtraParams'] as Map)
                .cast<String, String>(),
      authorizationEndpoint: map['authorizationEndpoint'] as String,
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      issuer: map['issuer'] as String,
      onUnauthenticatedRequest: map['onUnauthenticatedRequest'] == null
          ? null
          : map['onUnauthenticatedRequest'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      sessionCookieName: map['sessionCookieName'] == null
          ? null
          : map['sessionCookieName'] as String,
      sessionTimeout: map['sessionTimeout'] == null
          ? null
          : map['sessionTimeout'] as int,
      tokenEndpoint: map['tokenEndpoint'] as String,
      userInfoEndpoint: map['userInfoEndpoint'] as String,
    );
  }
}
