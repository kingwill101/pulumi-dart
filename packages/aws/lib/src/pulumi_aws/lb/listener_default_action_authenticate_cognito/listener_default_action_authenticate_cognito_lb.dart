// ignore_for_file: unused_element, unnecessary_cast

class ListenerDefaultActionAuthenticateCognitoLb {
  /// Query parameters to include in the redirect request to the authorization endpoint. Max: 10. See below.
  final Map<String, String>? authenticationRequestExtraParams;

  /// Behavior if the user is not authenticated. Valid values are `deny`, `allow` and `authenticate`.
  final String? onUnauthenticatedRequest;

  /// Set of user claims to be requested from the IdP.
  final String? scope;

  /// Name of the cookie used to maintain session information.
  final String? sessionCookieName;

  /// Maximum duration of the authentication session, in seconds.
  final int? sessionTimeout;

  /// ARN of the Cognito user pool.
  final String userPoolArn;

  /// ID of the Cognito user pool client.
  final String userPoolClientId;

  /// Domain prefix or fully-qualified domain name of the Cognito user pool.
  ///
  /// The following arguments are optional:
  final String userPoolDomain;

  ListenerDefaultActionAuthenticateCognitoLb({
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
    final map = <String, dynamic>{};
    final authenticationRequestExtraParamsValue =
        authenticationRequestExtraParams;
    if (authenticationRequestExtraParamsValue != null) {
      map['authenticationRequestExtraParams'] =
          authenticationRequestExtraParamsValue;
    }
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
    map['userPoolArn'] = userPoolArn;
    map['userPoolClientId'] = userPoolClientId;
    map['userPoolDomain'] = userPoolDomain;
    return map;
  }

  factory ListenerDefaultActionAuthenticateCognitoLb.fromMap(
      Map<String, dynamic> map) {
    return ListenerDefaultActionAuthenticateCognitoLb(
      authenticationRequestExtraParams:
          map['authenticationRequestExtraParams'] == null
              ? null
              : (map['authenticationRequestExtraParams'] as Map)
                  .cast<String, String>(),
      onUnauthenticatedRequest: map['onUnauthenticatedRequest'] == null
          ? null
          : map['onUnauthenticatedRequest'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      sessionCookieName: map['sessionCookieName'] == null
          ? null
          : map['sessionCookieName'] as String,
      sessionTimeout:
          map['sessionTimeout'] == null ? null : map['sessionTimeout'] as int,
      userPoolArn: map['userPoolArn'] as String,
      userPoolClientId: map['userPoolClientId'] as String,
      userPoolDomain: map['userPoolDomain'] as String,
    );
  }
}
