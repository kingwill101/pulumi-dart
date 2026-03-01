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

  /// Creates a new [ListenerDefaultActionAuthenticateOidc].
  /// [authenticationRequestExtraParams] Query parameters to include in the redirect request to the authorization endpoint. Max: 10.
  /// [authorizationEndpoint] Authorization endpoint of the IdP.
  /// [clientId] OAuth 2.0 client identifier.
  /// [clientSecret] OAuth 2.0 client secret.
  /// [issuer] OIDC issuer identifier of the IdP.
  /// [onUnauthenticatedRequest] Behavior if the user is not authenticated. Valid values: `deny`, `allow` and `authenticate`
  /// [scope] Set of user claims to be requested from the IdP.
  /// [sessionCookieName] Name of the cookie used to maintain session information.
  /// [sessionTimeout] Maximum duration of the authentication session, in seconds.
  /// [tokenEndpoint] Token endpoint of the IdP.
  /// [userInfoEndpoint] User info endpoint of the IdP.
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

  factory ListenerDefaultActionAuthenticateOidc.fromMap(
    Map<String, dynamic> map,
  ) {
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
      sessionTimeout: map['sessionTimeout'] == null
          ? null
          : map['sessionTimeout'] as int,
      tokenEndpoint: map['tokenEndpoint'] as String,
      userInfoEndpoint: map['userInfoEndpoint'] as String,
    );
  }
}
