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
  GetListenerDefaultActionAuthenticateOidc({
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
      authenticationRequestExtraParams: ((map['authenticationRequestExtraParams'] as Map).cast<String, String>()).input(),
      authorizationEndpoint: (map['authorizationEndpoint'] as String).input(),
      clientId: (map['clientId'] as String).input(),
      clientSecret: (map['clientSecret'] as String).input(),
      issuer: (map['issuer'] as String).input(),
      onUnauthenticatedRequest: (map['onUnauthenticatedRequest'] as String).input(),
      scope: (map['scope'] as String).input(),
      sessionCookieName: (map['sessionCookieName'] as String).input(),
      sessionTimeout: (map['sessionTimeout'] as int).input(),
      tokenEndpoint: (map['tokenEndpoint'] as String).input(),
      userInfoEndpoint: (map['userInfoEndpoint'] as String).input(),
    );
  }
}

