// ignore_for_file: unused_element, unnecessary_cast

class GetListenerDefaultActionAuthenticateCognito2 {
  final Map<String, String> authenticationRequestExtraParams;
  final String onUnauthenticatedRequest;
  final String scope;
  final String sessionCookieName;
  final int sessionTimeout;
  final String userPoolArn;
  final String userPoolClientId;
  final String userPoolDomain;

  GetListenerDefaultActionAuthenticateCognito2({
    required this.authenticationRequestExtraParams,
    required this.onUnauthenticatedRequest,
    required this.scope,
    required this.sessionCookieName,
    required this.sessionTimeout,
    required this.userPoolArn,
    required this.userPoolClientId,
    required this.userPoolDomain,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authenticationRequestExtraParams'] = authenticationRequestExtraParams;
    map['onUnauthenticatedRequest'] = onUnauthenticatedRequest;
    map['scope'] = scope;
    map['sessionCookieName'] = sessionCookieName;
    map['sessionTimeout'] = sessionTimeout;
    map['userPoolArn'] = userPoolArn;
    map['userPoolClientId'] = userPoolClientId;
    map['userPoolDomain'] = userPoolDomain;
    return map;
  }

  factory GetListenerDefaultActionAuthenticateCognito2.fromMap(
      Map<String, dynamic> map) {
    return GetListenerDefaultActionAuthenticateCognito2(
      authenticationRequestExtraParams:
          (map['authenticationRequestExtraParams'] as Map)
              .cast<String, String>(),
      onUnauthenticatedRequest: map['onUnauthenticatedRequest'] as String,
      scope: map['scope'] as String,
      sessionCookieName: map['sessionCookieName'] as String,
      sessionTimeout: map['sessionTimeout'] as int,
      userPoolArn: map['userPoolArn'] as String,
      userPoolClientId: map['userPoolClientId'] as String,
      userPoolDomain: map['userPoolDomain'] as String,
    );
  }
}
