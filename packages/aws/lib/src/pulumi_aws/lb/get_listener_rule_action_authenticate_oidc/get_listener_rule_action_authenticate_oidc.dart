// ignore_for_file: unused_element, unnecessary_cast

class GetListenerRuleActionAuthenticateOidc {
  /// Set of additional parameters for the request.
  /// Detailed below.
  final Map<String, String> authenticationRequestExtraParams;

  /// The authorization endpoint of the IdP.
  final String authorizationEndpoint;

  /// OAuth 2.0 client identifier.
  final String clientId;

  /// Issuer of the JWT.
  final String issuer;

  /// Behavior when the client is not authenticated.
  final String onUnauthenticatedRequest;

  /// Set of user claims requested.
  final String scope;

  /// Name of the cookie used to maintain session information.
  final String sessionCookieName;

  /// Maximum duration of the authentication session in seconds.
  final int sessionTimeout;

  /// The token endpoint of the IdP.
  final String tokenEndpoint;

  /// The user info endpoint of the IdP.
  final String userInfoEndpoint;

  GetListenerRuleActionAuthenticateOidc({
    required this.authenticationRequestExtraParams,
    required this.authorizationEndpoint,
    required this.clientId,
    required this.issuer,
    required this.onUnauthenticatedRequest,
    required this.scope,
    required this.sessionCookieName,
    required this.sessionTimeout,
    required this.tokenEndpoint,
    required this.userInfoEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authenticationRequestExtraParams'] = authenticationRequestExtraParams;
    map['authorizationEndpoint'] = authorizationEndpoint;
    map['clientId'] = clientId;
    map['issuer'] = issuer;
    map['onUnauthenticatedRequest'] = onUnauthenticatedRequest;
    map['scope'] = scope;
    map['sessionCookieName'] = sessionCookieName;
    map['sessionTimeout'] = sessionTimeout;
    map['tokenEndpoint'] = tokenEndpoint;
    map['userInfoEndpoint'] = userInfoEndpoint;
    return map;
  }

  factory GetListenerRuleActionAuthenticateOidc.fromMap(
      Map<String, dynamic> map) {
    return GetListenerRuleActionAuthenticateOidc(
      authenticationRequestExtraParams:
          (map['authenticationRequestExtraParams'] as Map)
              .cast<String, String>(),
      authorizationEndpoint: map['authorizationEndpoint'] as String,
      clientId: map['clientId'] as String,
      issuer: map['issuer'] as String,
      onUnauthenticatedRequest: map['onUnauthenticatedRequest'] as String,
      scope: map['scope'] as String,
      sessionCookieName: map['sessionCookieName'] as String,
      sessionTimeout: map['sessionTimeout'] as int,
      tokenEndpoint: map['tokenEndpoint'] as String,
      userInfoEndpoint: map['userInfoEndpoint'] as String,
    );
  }
}
