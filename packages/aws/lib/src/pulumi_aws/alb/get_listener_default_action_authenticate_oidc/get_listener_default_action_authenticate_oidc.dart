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
    final map = <String, dynamic>{};
    map['authenticationRequestExtraParams'] = authenticationRequestExtraParams;
    map['authorizationEndpoint'] = authorizationEndpoint;
    map['clientId'] = clientId;
    map['clientSecret'] = clientSecret;
    map['issuer'] = issuer;
    map['onUnauthenticatedRequest'] = onUnauthenticatedRequest;
    map['scope'] = scope;
    map['sessionCookieName'] = sessionCookieName;
    map['sessionTimeout'] = sessionTimeout;
    map['tokenEndpoint'] = tokenEndpoint;
    map['userInfoEndpoint'] = userInfoEndpoint;
    return map;
  }

  factory GetListenerDefaultActionAuthenticateOidc.fromMap(
      Map<String, dynamic> map) {
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
