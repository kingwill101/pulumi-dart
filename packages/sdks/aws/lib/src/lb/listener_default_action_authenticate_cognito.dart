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
  ListenerDefaultActionAuthenticateCognito({
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
      authenticationRequestExtraParams: map['authenticationRequestExtraParams'] == null ? null : ((map['authenticationRequestExtraParams'] as Map).cast<String, String>()).input(),
      onUnauthenticatedRequest: map['onUnauthenticatedRequest'] == null ? null : (map['onUnauthenticatedRequest'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
      sessionCookieName: map['sessionCookieName'] == null ? null : (map['sessionCookieName'] as String).input(),
      sessionTimeout: map['sessionTimeout'] == null ? null : (map['sessionTimeout'] as int).input(),
      userPoolArn: (map['userPoolArn'] as String).input(),
      userPoolClientId: (map['userPoolClientId'] as String).input(),
      userPoolDomain: (map['userPoolDomain'] as String).input(),
    );
  }
}

