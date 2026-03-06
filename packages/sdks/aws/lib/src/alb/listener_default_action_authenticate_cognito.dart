// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerDefaultActionAuthenticateCognito {
  /// Query parameters to include in the redirect request to the authorization endpoint. Max: 10. See below.
  final pulumi.Input<Map<String, String>>? authenticationRequestExtraParams;
  /// Behavior if the user is not authenticated. Valid values are `deny`, `allow` and `authenticate`.
  final pulumi.Input<String>? onUnauthenticatedRequest;
  /// Set of user claims to be requested from the IdP.
  final pulumi.Input<String>? scope;
  /// Name of the cookie used to maintain session information.
  final pulumi.Input<String>? sessionCookieName;
  /// Maximum duration of the authentication session, in seconds.
  final pulumi.Input<int>? sessionTimeout;
  /// ARN of the Cognito user pool.
  final pulumi.Input<String> userPoolArn;
  /// ID of the Cognito user pool client.
  final pulumi.Input<String> userPoolClientId;
  /// Domain prefix or fully-qualified domain name of the Cognito user pool.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> userPoolDomain;

  /// Creates a new [ListenerDefaultActionAuthenticateCognito].
  /// [authenticationRequestExtraParams] Query parameters to include in the redirect request to the authorization endpoint. Max: 10. See below.
  /// [onUnauthenticatedRequest] Behavior if the user is not authenticated. Valid values are `deny`, `allow` and `authenticate`.
  /// [scope] Set of user claims to be requested from the IdP.
  /// [sessionCookieName] Name of the cookie used to maintain session information.
  /// [sessionTimeout] Maximum duration of the authentication session, in seconds.
  /// [userPoolArn] ARN of the Cognito user pool.
  /// [userPoolClientId] ID of the Cognito user pool client.
  /// [userPoolDomain] Domain prefix or fully-qualified domain name of the Cognito user pool.
  const ListenerDefaultActionAuthenticateCognito({
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

  factory ListenerDefaultActionAuthenticateCognito.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultActionAuthenticateCognito(
      authenticationRequestExtraParams: (() { final guardedValue = map['authenticationRequestExtraParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      onUnauthenticatedRequest: (() { final guardedValue = map['onUnauthenticatedRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionCookieName: (() { final guardedValue = map['sessionCookieName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionTimeout: (() { final guardedValue = map['sessionTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      userPoolArn: pulumi.Input.fromValue(map['userPoolArn'] as String),
      userPoolClientId: pulumi.Input.fromValue(map['userPoolClientId'] as String),
      userPoolDomain: pulumi.Input.fromValue(map['userPoolDomain'] as String),
    );
  }
}

