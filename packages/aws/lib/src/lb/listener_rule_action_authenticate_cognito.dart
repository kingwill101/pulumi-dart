// ignore_for_file: unused_element, unnecessary_cast


class ListenerRuleActionAuthenticateCognito {
  /// The query parameters to include in the redirect request to the authorization endpoint. Max: 10.
  final Map<String, String>? authenticationRequestExtraParams;
  /// The behavior if the user is not authenticated. Valid values: `deny`, `allow` and `authenticate`
  final String? onUnauthenticatedRequest;
  /// The set of user claims to be requested from the IdP.
  final String? scope;
  /// The name of the cookie used to maintain session information.
  final String? sessionCookieName;
  /// The maximum duration of the authentication session, in seconds.
  final int? sessionTimeout;
  /// The ARN of the Cognito user pool.
  final String userPoolArn;
  /// The ID of the Cognito user pool client.
  final String userPoolClientId;
  /// The domain prefix or fully-qualified domain name of the Cognito user pool.
  final String userPoolDomain;

  /// Creates a new [ListenerRuleActionAuthenticateCognito].
  /// [authenticationRequestExtraParams] The query parameters to include in the redirect request to the authorization endpoint. Max: 10.
  /// [onUnauthenticatedRequest] The behavior if the user is not authenticated. Valid values: `deny`, `allow` and `authenticate`
  /// [scope] The set of user claims to be requested from the IdP.
  /// [sessionCookieName] The name of the cookie used to maintain session information.
  /// [sessionTimeout] The maximum duration of the authentication session, in seconds.
  /// [userPoolArn] The ARN of the Cognito user pool.
  /// [userPoolClientId] The ID of the Cognito user pool client.
  /// [userPoolDomain] The domain prefix or fully-qualified domain name of the Cognito user pool.
  ListenerRuleActionAuthenticateCognito({
    this.authenticationRequestExtraParams,
    this.onUnauthenticatedRequest,
    this.scope,
    this.sessionCookieName,
    this.sessionTimeout,
    required this.userPoolArn,
    required this.userPoolClientId,
    required this.userPoolDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationRequestExtraParams': ?authenticationRequestExtraParams,
      'onUnauthenticatedRequest': ?onUnauthenticatedRequest,
      'scope': ?scope,
      'sessionCookieName': ?sessionCookieName,
      'sessionTimeout': ?sessionTimeout,
      'userPoolArn': userPoolArn,
      'userPoolClientId': userPoolClientId,
      'userPoolDomain': userPoolDomain,
    };
  }

  factory ListenerRuleActionAuthenticateCognito.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionAuthenticateCognito(
      authenticationRequestExtraParams: map['authenticationRequestExtraParams'] == null ? null : (map['authenticationRequestExtraParams'] as Map).cast<String, String>(),
      onUnauthenticatedRequest: map['onUnauthenticatedRequest'] == null ? null : map['onUnauthenticatedRequest'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      sessionCookieName: map['sessionCookieName'] == null ? null : map['sessionCookieName'] as String,
      sessionTimeout: map['sessionTimeout'] == null ? null : map['sessionTimeout'] as int,
      userPoolArn: map['userPoolArn'] as String,
      userPoolClientId: map['userPoolClientId'] as String,
      userPoolDomain: map['userPoolDomain'] as String,
    );
  }
}

