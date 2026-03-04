// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerRuleActionAuthenticateCognito {
  /// The query parameters to include in the redirect request to the authorization endpoint. Max: 10.
  final pulumi.Input<Map<String, String>>? authenticationRequestExtraParams;

  /// The behavior if the user is not authenticated. Valid values: `deny`, `allow` and `authenticate`
  final pulumi.Input<String>? onUnauthenticatedRequest;

  /// The set of user claims to be requested from the IdP.
  final pulumi.Input<String>? scope;

  /// The name of the cookie used to maintain session information.
  final pulumi.Input<String>? sessionCookieName;

  /// The maximum duration of the authentication session, in seconds.
  final pulumi.Input<int>? sessionTimeout;

  /// The ARN of the Cognito user pool.
  final pulumi.Input<String> userPoolArn;

  /// The ID of the Cognito user pool client.
  final pulumi.Input<String> userPoolClientId;

  /// The domain prefix or fully-qualified domain name of the Cognito user pool.
  final pulumi.Input<String> userPoolDomain;

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

  factory ListenerRuleActionAuthenticateCognito.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListenerRuleActionAuthenticateCognito(
      authenticationRequestExtraParams: (() {
        final guardedValue = map['authenticationRequestExtraParams'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      onUnauthenticatedRequest: (() {
        final guardedValue = map['onUnauthenticatedRequest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scope: (() {
        final guardedValue = map['scope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sessionCookieName: (() {
        final guardedValue = map['sessionCookieName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sessionTimeout: (() {
        final guardedValue = map['sessionTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      userPoolArn: pulumi.Input.fromValue(map['userPoolArn'] as String),
      userPoolClientId: pulumi.Input.fromValue(
        map['userPoolClientId'] as String,
      ),
      userPoolDomain: pulumi.Input.fromValue(map['userPoolDomain'] as String),
    );
  }
}
