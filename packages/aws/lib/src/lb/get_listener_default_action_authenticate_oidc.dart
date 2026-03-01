// ignore_for_file: unused_element, unnecessary_cast

class GetListenerDefaultActionAuthenticateOidc {
  final Map<String, String> authenticationRequestExtraParams;
  final String authorizationEndpoint;
  final String clientId;
  final String clientSecret;
  final String issuer;
  final String onUnauthenticatedRequest;
  final String scope;
  final String sessionCookieName;
  final int sessionTimeout;
  final String tokenEndpoint;
  final String userInfoEndpoint;

  /// Creates a new [GetListenerDefaultActionAuthenticateOidc].
  /// [authenticationRequestExtraParams] Required.
  /// [authorizationEndpoint] Required.
  /// [clientId] Required.
  /// [clientSecret] Required.
  /// [issuer] Required.
  /// [onUnauthenticatedRequest] Required.
  /// [scope] Required.
  /// [sessionCookieName] Required.
  /// [sessionTimeout] Required.
  /// [tokenEndpoint] Required.
  /// [userInfoEndpoint] Required.
  GetListenerDefaultActionAuthenticateOidc({
    required this.authenticationRequestExtraParams,
    required this.authorizationEndpoint,
    required this.clientId,
    required this.clientSecret,
    required this.issuer,
    required this.onUnauthenticatedRequest,
    required this.scope,
    required this.sessionCookieName,
    required this.sessionTimeout,
    required this.tokenEndpoint,
    required this.userInfoEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationRequestExtraParams': authenticationRequestExtraParams,
      'authorizationEndpoint': authorizationEndpoint,
      'clientId': clientId,
      'clientSecret': clientSecret,
      'issuer': issuer,
      'onUnauthenticatedRequest': onUnauthenticatedRequest,
      'scope': scope,
      'sessionCookieName': sessionCookieName,
      'sessionTimeout': sessionTimeout,
      'tokenEndpoint': tokenEndpoint,
      'userInfoEndpoint': userInfoEndpoint,
    };
  }

  factory GetListenerDefaultActionAuthenticateOidc.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetListenerDefaultActionAuthenticateOidc(
      authenticationRequestExtraParams:
          (map['authenticationRequestExtraParams'] as Map)
              .cast<String, String>(),
      authorizationEndpoint: map['authorizationEndpoint'] as String,
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
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
