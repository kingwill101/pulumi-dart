// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleActionAuthenticateCognito {
  /// The query parameters to include in the redirect request to the authorization endpoint. Max: 10.
  final Map<String, String>? authenticationRequestExtraParams;

  /// The behavior if the user is not authenticated. Valid values: <span pulumi-lang-nodejs="`deny`" pulumi-lang-dotnet="`Deny`" pulumi-lang-go="`deny`" pulumi-lang-python="`deny`" pulumi-lang-yaml="`deny`" pulumi-lang-java="`deny`">`deny`</span>, <span pulumi-lang-nodejs="`allow`" pulumi-lang-dotnet="`Allow`" pulumi-lang-go="`allow`" pulumi-lang-python="`allow`" pulumi-lang-yaml="`allow`" pulumi-lang-java="`allow`">`allow`</span> and <span pulumi-lang-nodejs="`authenticate`" pulumi-lang-dotnet="`Authenticate`" pulumi-lang-go="`authenticate`" pulumi-lang-python="`authenticate`" pulumi-lang-yaml="`authenticate`" pulumi-lang-java="`authenticate`">`authenticate`</span>
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

  factory ListenerRuleActionAuthenticateCognito.fromMap(
      Map<String, dynamic> map) {
    return ListenerRuleActionAuthenticateCognito(
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
