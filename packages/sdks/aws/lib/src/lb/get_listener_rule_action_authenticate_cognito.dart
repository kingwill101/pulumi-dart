// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerRuleActionAuthenticateCognito {
  /// Set of additional parameters for the request.
  /// Detailed below.
  final pulumi.Input<Map<String, String>> authenticationRequestExtraParams;

  /// Behavior when the client is not authenticated.
  final pulumi.Input<String> onUnauthenticatedRequest;

  /// Set of user claims requested.
  final pulumi.Input<String> scope;

  /// Name of the cookie used to maintain session information.
  final pulumi.Input<String> sessionCookieName;

  /// Maximum duration of the authentication session in seconds.
  final pulumi.Input<int> sessionTimeout;

  /// ARN of the Cognito user pool.
  final pulumi.Input<String> userPoolArn;

  /// ID of the Cognito user pool client.
  final pulumi.Input<String> userPoolClientId;

  /// Domain prefix or fully-qualified domain name of the Cognito user pool.
  final pulumi.Input<String> userPoolDomain;

  /// Creates a new [GetListenerRuleActionAuthenticateCognito].
  /// [authenticationRequestExtraParams] Set of additional parameters for the request.
  /// [onUnauthenticatedRequest] Behavior when the client is not authenticated.
  /// [scope] Set of user claims requested.
  /// [sessionCookieName] Name of the cookie used to maintain session information.
  /// [sessionTimeout] Maximum duration of the authentication session in seconds.
  /// [userPoolArn] ARN of the Cognito user pool.
  /// [userPoolClientId] ID of the Cognito user pool client.
  /// [userPoolDomain] Domain prefix or fully-qualified domain name of the Cognito user pool.
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

  factory GetListenerRuleActionAuthenticateCognito.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetListenerRuleActionAuthenticateCognito(
      authenticationRequestExtraParams: pulumi.Input.fromValue(
        (map['authenticationRequestExtraParams'] as Map).cast<String, String>(),
      ),
      onUnauthenticatedRequest: pulumi.Input.fromValue(
        map['onUnauthenticatedRequest'] as String,
      ),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      sessionCookieName: pulumi.Input.fromValue(
        map['sessionCookieName'] as String,
      ),
      sessionTimeout: pulumi.Input.fromValue(map['sessionTimeout'] as int),
      userPoolArn: pulumi.Input.fromValue(map['userPoolArn'] as String),
      userPoolClientId: pulumi.Input.fromValue(
        map['userPoolClientId'] as String,
      ),
      userPoolDomain: pulumi.Input.fromValue(map['userPoolDomain'] as String),
    );
  }
}
