// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerDefaultActionAuthenticateOidc {
  final pulumi.Input<Map<String, String>> authenticationRequestExtraParams;
  final pulumi.Input<String> authorizationEndpoint;
  final pulumi.Input<String> clientId;
  final pulumi.Input<String> clientSecret;
  final pulumi.Input<String> issuer;
  final pulumi.Input<String> onUnauthenticatedRequest;
  final pulumi.Input<String> scope;
  final pulumi.Input<String> sessionCookieName;
  final pulumi.Input<int> sessionTimeout;
  final pulumi.Input<String> tokenEndpoint;
  final pulumi.Input<String> userInfoEndpoint;

  /// Creates a new [GetListenerDefaultActionAuthenticateOidc].
  /// [authenticationRequestExtraParams] Required.
  /// [authorizationEndpoint] Required.
  /// [clientId] Required.
  /// [clientSecret] Required.
  /// [issuer] Required.
  /// [onUnauthenticatedRequest] Required.
  /// [scope] Required.
  /// [sessionCookieName] Required.
  /// [sessionTimeout] Required.
  /// [tokenEndpoint] Required.
  /// [userInfoEndpoint] Required.
  const GetListenerDefaultActionAuthenticateOidc({
    required this.authenticationRequestExtraParams,
    required this.authorizationEndpoint,
    required this.clientId,
    required this.clientSecret,
    required this.issuer,
    required this.onUnauthenticatedRequest,
    required this.scope,
    required this.sessionCookieName,
    required this.sessionTimeout,
    required this.tokenEndpoint,
    required this.userInfoEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationRequestExtraParams': authenticationRequestExtraParams,
      'authorizationEndpoint': authorizationEndpoint,
      'clientId': clientId,
      'clientSecret': clientSecret,
      'issuer': issuer,
      'onUnauthenticatedRequest': onUnauthenticatedRequest,
      'scope': scope,
      'sessionCookieName': sessionCookieName,
      'sessionTimeout': sessionTimeout,
      'tokenEndpoint': tokenEndpoint,
      'userInfoEndpoint': userInfoEndpoint,
    };
  }

  factory GetListenerDefaultActionAuthenticateOidc.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultActionAuthenticateOidc(
      authenticationRequestExtraParams: pulumi.Input.fromValue((map['authenticationRequestExtraParams'] as Map).cast<String, String>()),
      authorizationEndpoint: pulumi.Input.fromValue(map['authorizationEndpoint'] as String),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      onUnauthenticatedRequest: pulumi.Input.fromValue(map['onUnauthenticatedRequest'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      sessionCookieName: pulumi.Input.fromValue(map['sessionCookieName'] as String),
      sessionTimeout: pulumi.Input.fromValue(map['sessionTimeout'] as int),
      tokenEndpoint: pulumi.Input.fromValue(map['tokenEndpoint'] as String),
      userInfoEndpoint: pulumi.Input.fromValue(map['userInfoEndpoint'] as String),
    );
  }
}
