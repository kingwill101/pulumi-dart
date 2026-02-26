// ignore_for_file: unused_element, unnecessary_cast

class GetListenerRuleActionAuthenticateCognito {
  /// Set of additional parameters for the request.
  /// Detailed below.
  final Map<String, String> authenticationRequestExtraParams;

  /// Behavior when the client is not authenticated.
  final String onUnauthenticatedRequest;

  /// Set of user claims requested.
  final String scope;

  /// Name of the cookie used to maintain session information.
  final String sessionCookieName;

  /// Maximum duration of the authentication session in seconds.
  final int sessionTimeout;

  /// ARN of the Cognito user pool.
  final String userPoolArn;

  /// ID of the Cognito user pool client.
  final String userPoolClientId;

  /// Domain prefix or fully-qualified domain name of the Cognito user pool.
  final String userPoolDomain;

  GetListenerRuleActionAuthenticateCognito({
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

  factory GetListenerRuleActionAuthenticateCognito.fromMap(
      Map<String, dynamic> map) {
    return GetListenerRuleActionAuthenticateCognito(
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
