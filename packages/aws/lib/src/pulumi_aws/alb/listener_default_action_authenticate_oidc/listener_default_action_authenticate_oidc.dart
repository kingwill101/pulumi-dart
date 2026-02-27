// ignore_for_file: unused_element, unnecessary_cast

class ListenerDefaultActionAuthenticateOidc {
  /// Query parameters to include in the redirect request to the authorization endpoint. Max: 10.
  final Map<String, String>? authenticationRequestExtraParams;

  /// Authorization endpoint of the IdP.
  final String authorizationEndpoint;

  /// OAuth 2.0 client identifier.
  final String clientId;

  /// OAuth 2.0 client secret.
  final String clientSecret;

  /// OIDC issuer identifier of the IdP.
  final String issuer;

  /// Behavior if the user is not authenticated. Valid values: `deny`, `allow` and `authenticate`
  final String? onUnauthenticatedRequest;

  /// Set of user claims to be requested from the IdP.
  final String? scope;

  /// Name of the cookie used to maintain session information.
  final String? sessionCookieName;

  /// Maximum duration of the authentication session, in seconds.
  final int? sessionTimeout;

  /// Token endpoint of the IdP.
  final String tokenEndpoint;

  /// User info endpoint of the IdP.
  ///
  /// The following arguments are optional:
  final String userInfoEndpoint;

  ListenerDefaultActionAuthenticateOidc({
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
    final onUnauthenticatedRequestValue = onUnauthenticatedRequest;
    if (onUnauthenticatedRequestValue != null) {
      map['onUnauthenticatedRequest'] = onUnauthenticatedRequestValue;
    }
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue;
    }
    final sessionCookieNameValue = sessionCookieName;
    if (sessionCookieNameValue != null) {
      map['sessionCookieName'] = sessionCookieNameValue;
    }
    final sessionTimeoutValue = sessionTimeout;
    if (sessionTimeoutValue != null) {
      map['sessionTimeout'] = sessionTimeoutValue;
    }
    map['tokenEndpoint'] = tokenEndpoint;
    map['userInfoEndpoint'] = userInfoEndpoint;
    return map;
  }

  factory ListenerDefaultActionAuthenticateOidc.fromMap(
      Map<String, dynamic> map) {
    return ListenerDefaultActionAuthenticateOidc(
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
      sessionTimeout:
          map['sessionTimeout'] == null ? null : map['sessionTimeout'] as int,
      tokenEndpoint: map['tokenEndpoint'] as String,
      userInfoEndpoint: map['userInfoEndpoint'] as String,
    );
  }
}
