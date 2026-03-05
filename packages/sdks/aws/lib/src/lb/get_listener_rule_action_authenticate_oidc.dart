// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerRuleActionAuthenticateOidc {
  /// Set of additional parameters for the request.
  /// Detailed below.
  final pulumi.Input<Map<String, String>> authenticationRequestExtraParams;
  /// The authorization endpoint of the IdP.
  final pulumi.Input<String> authorizationEndpoint;
  /// OAuth 2.0 client identifier.
  final pulumi.Input<String> clientId;
  /// Issuer of the JWT.
  final pulumi.Input<String> issuer;
  /// Behavior when the client is not authenticated.
  final pulumi.Input<String> onUnauthenticatedRequest;
  /// Set of user claims requested.
  final pulumi.Input<String> scope;
  /// Name of the cookie used to maintain session information.
  final pulumi.Input<String> sessionCookieName;
  /// Maximum duration of the authentication session in seconds.
  final pulumi.Input<int> sessionTimeout;
  /// The token endpoint of the IdP.
  final pulumi.Input<String> tokenEndpoint;
  /// The user info endpoint of the IdP.
  final pulumi.Input<String> userInfoEndpoint;

  /// Creates a new [GetListenerRuleActionAuthenticateOidc].
  /// [authenticationRequestExtraParams] Set of additional parameters for the request.
  /// [authorizationEndpoint] The authorization endpoint of the IdP.
  /// [clientId] OAuth 2.0 client identifier.
  /// [issuer] Issuer of the JWT.
  /// [onUnauthenticatedRequest] Behavior when the client is not authenticated.
  /// [scope] Set of user claims requested.
  /// [sessionCookieName] Name of the cookie used to maintain session information.
  /// [sessionTimeout] Maximum duration of the authentication session in seconds.
  /// [tokenEndpoint] The token endpoint of the IdP.
  /// [userInfoEndpoint] The user info endpoint of the IdP.
  GetListenerRuleActionAuthenticateOidc({
    required this.authenticationRequestExtraParams,
    required this.authorizationEndpoint,
    required this.clientId,
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
      'issuer': issuer,
      'onUnauthenticatedRequest': onUnauthenticatedRequest,
      'scope': scope,
      'sessionCookieName': sessionCookieName,
      'sessionTimeout': sessionTimeout,
      'tokenEndpoint': tokenEndpoint,
      'userInfoEndpoint': userInfoEndpoint,
    };
  }

  factory GetListenerRuleActionAuthenticateOidc.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleActionAuthenticateOidc(
      authenticationRequestExtraParams: pulumi.Input.fromValue((map['authenticationRequestExtraParams'] as Map).cast<String, String>()),
      authorizationEndpoint: pulumi.Input.fromValue(map['authorizationEndpoint'] as String),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
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

