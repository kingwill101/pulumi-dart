// ignore_for_file: unused_element, unnecessary_cast

class GetListenerDefaultActionAuthenticateCognito {
  final Map<String, String> authenticationRequestExtraParams;
  final String onUnauthenticatedRequest;
  final String scope;
  final String sessionCookieName;
  final int sessionTimeout;
  final String userPoolArn;
  final String userPoolClientId;
  final String userPoolDomain;

  /// Creates a new [GetListenerDefaultActionAuthenticateCognito].
  /// [authenticationRequestExtraParams] Required.
  /// [onUnauthenticatedRequest] Required.
  /// [scope] Required.
  /// [sessionCookieName] Required.
  /// [sessionTimeout] Required.
  /// [userPoolArn] Required.
  /// [userPoolClientId] Required.
  /// [userPoolDomain] Required.
  GetListenerDefaultActionAuthenticateCognito({
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
    return <String, dynamic>{
      'authenticationRequestExtraParams': authenticationRequestExtraParams,
      'onUnauthenticatedRequest': onUnauthenticatedRequest,
      'scope': scope,
      'sessionCookieName': sessionCookieName,
      'sessionTimeout': sessionTimeout,
      'userPoolArn': userPoolArn,
      'userPoolClientId': userPoolClientId,
      'userPoolDomain': userPoolDomain,
    };
  }

  factory GetListenerDefaultActionAuthenticateCognito.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetListenerDefaultActionAuthenticateCognito(
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
