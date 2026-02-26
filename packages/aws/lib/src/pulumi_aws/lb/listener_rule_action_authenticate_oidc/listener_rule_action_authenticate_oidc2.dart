// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleActionAuthenticateOidc2 {
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

  /// The behavior if the user is not authenticated. Valid values: <span pulumi-lang-nodejs="`deny`" pulumi-lang-dotnet="`Deny`" pulumi-lang-go="`deny`" pulumi-lang-python="`deny`" pulumi-lang-yaml="`deny`" pulumi-lang-java="`deny`">`deny`</span>, <span pulumi-lang-nodejs="`allow`" pulumi-lang-dotnet="`Allow`" pulumi-lang-go="`allow`" pulumi-lang-python="`allow`" pulumi-lang-yaml="`allow`" pulumi-lang-java="`allow`">`allow`</span> and <span pulumi-lang-nodejs="`authenticate`" pulumi-lang-dotnet="`Authenticate`" pulumi-lang-go="`authenticate`" pulumi-lang-python="`authenticate`" pulumi-lang-yaml="`authenticate`" pulumi-lang-java="`authenticate`">`authenticate`</span>
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

  ListenerRuleActionAuthenticateOidc2({
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

  factory ListenerRuleActionAuthenticateOidc2.fromMap(
      Map<String, dynamic> map) {
    return ListenerRuleActionAuthenticateOidc2(
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
