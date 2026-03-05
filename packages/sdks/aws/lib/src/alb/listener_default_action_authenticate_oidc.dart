// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerDefaultActionAuthenticateOidc {
  /// Query parameters to include in the redirect request to the authorization endpoint. Max: 10.
  final pulumi.Input<Map<String, String>>? authenticationRequestExtraParams;
  /// Authorization endpoint of the IdP.
  final pulumi.Input<String> authorizationEndpoint;
  /// OAuth 2.0 client identifier.
  final pulumi.Input<String> clientId;
  /// OAuth 2.0 client secret.
  final pulumi.Input<String> clientSecret;
  /// OIDC issuer identifier of the IdP.
  final pulumi.Input<String> issuer;
  /// Behavior if the user is not authenticated. Valid values: `deny`, `allow` and `authenticate`
  final pulumi.Input<String>? onUnauthenticatedRequest;
  /// Set of user claims to be requested from the IdP.
  final pulumi.Input<String>? scope;
  /// Name of the cookie used to maintain session information.
  final pulumi.Input<String>? sessionCookieName;
  /// Maximum duration of the authentication session, in seconds.
  final pulumi.Input<int>? sessionTimeout;
  /// Token endpoint of the IdP.
  final pulumi.Input<String> tokenEndpoint;
  /// User info endpoint of the IdP.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> userInfoEndpoint;

  /// Creates a new [ListenerDefaultActionAuthenticateOidc].
  /// [authenticationRequestExtraParams] Query parameters to include in the redirect request to the authorization endpoint. Max: 10.
  /// [authorizationEndpoint] Authorization endpoint of the IdP.
  /// [clientId] OAuth 2.0 client identifier.
  /// [clientSecret] OAuth 2.0 client secret.
  /// [issuer] OIDC issuer identifier of the IdP.
  /// [onUnauthenticatedRequest] Behavior if the user is not authenticated. Valid values: `deny`, `allow` and `authenticate`
  /// [scope] Set of user claims to be requested from the IdP.
  /// [sessionCookieName] Name of the cookie used to maintain session information.
  /// [sessionTimeout] Maximum duration of the authentication session, in seconds.
  /// [tokenEndpoint] Token endpoint of the IdP.
  /// [userInfoEndpoint] User info endpoint of the IdP.
  ListenerDefaultActionAuthenticateOidc({
    this.authenticationRequestExtraParams,
    required this.authorizationEndpoint,
    required this.clientId,
    required this.clientSecret,
    required this.issuer,
    this.onUnauthenticatedRequest,
    this.scope,
    this.sessionCookieName,
    this.sessionTimeout,
    required this.tokenEndpoint,
    required this.userInfoEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationRequestExtraParams': ?authenticationRequestExtraParams,
      'authorizationEndpoint': authorizationEndpoint,
      'clientId': clientId,
      'clientSecret': clientSecret,
      'issuer': issuer,
      'onUnauthenticatedRequest': ?onUnauthenticatedRequest,
      'scope': ?scope,
      'sessionCookieName': ?sessionCookieName,
      'sessionTimeout': ?sessionTimeout,
      'tokenEndpoint': tokenEndpoint,
      'userInfoEndpoint': userInfoEndpoint,
    };
  }

  factory ListenerDefaultActionAuthenticateOidc.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultActionAuthenticateOidc(
      authenticationRequestExtraParams: (() { final guardedValue = map['authenticationRequestExtraParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      authorizationEndpoint: pulumi.Input.fromValue(map['authorizationEndpoint'] as String),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      onUnauthenticatedRequest: (() { final guardedValue = map['onUnauthenticatedRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionCookieName: (() { final guardedValue = map['sessionCookieName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionTimeout: (() { final guardedValue = map['sessionTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tokenEndpoint: pulumi.Input.fromValue(map['tokenEndpoint'] as String),
      userInfoEndpoint: pulumi.Input.fromValue(map['userInfoEndpoint'] as String),
    );
  }
}

