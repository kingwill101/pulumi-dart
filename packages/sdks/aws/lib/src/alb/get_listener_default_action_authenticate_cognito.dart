// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerDefaultActionAuthenticateCognito {
  final pulumi.Input<Map<String, String>> authenticationRequestExtraParams;
  final pulumi.Input<String> onUnauthenticatedRequest;
  final pulumi.Input<String> scope;
  final pulumi.Input<String> sessionCookieName;
  final pulumi.Input<int> sessionTimeout;
  final pulumi.Input<String> userPoolArn;
  final pulumi.Input<String> userPoolClientId;
  final pulumi.Input<String> userPoolDomain;

  /// Creates a new [GetListenerDefaultActionAuthenticateCognito].
  /// [authenticationRequestExtraParams] Required.
  /// [onUnauthenticatedRequest] Required.
  /// [scope] Required.
  /// [sessionCookieName] Required.
  /// [sessionTimeout] Required.
  /// [userPoolArn] Required.
  /// [userPoolClientId] Required.
  /// [userPoolDomain] Required.
  const GetListenerDefaultActionAuthenticateCognito({
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

  factory GetListenerDefaultActionAuthenticateCognito.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultActionAuthenticateCognito(
      authenticationRequestExtraParams: pulumi.Input.fromValue((map['authenticationRequestExtraParams'] as Map).cast<String, String>()),
      onUnauthenticatedRequest: pulumi.Input.fromValue(map['onUnauthenticatedRequest'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      sessionCookieName: pulumi.Input.fromValue(map['sessionCookieName'] as String),
      sessionTimeout: pulumi.Input.fromValue((map['sessionTimeout'] as num).toInt()),
      userPoolArn: pulumi.Input.fromValue(map['userPoolArn'] as String),
      userPoolClientId: pulumi.Input.fromValue(map['userPoolClientId'] as String),
      userPoolDomain: pulumi.Input.fromValue(map['userPoolDomain'] as String),
    );
  }
}
