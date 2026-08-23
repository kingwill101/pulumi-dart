// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AuthenticateOidcConfig
class AuthenticateOidcConfigResponse {
  /// The query parameters (up to 10) to include in the redirect request to the authorization endpoint.
  final pulumi.Input<Map<String, String>>? authenticationRequestExtraParams;
  /// The authorization endpoint of the IdP. This must be a full URL, including the HTTPS protocol, the domain, and the path.
  final pulumi.Input<String>? authorizationEndpoint;
  /// The OAuth 2.0 client identifier.
  final pulumi.Input<String>? clientId;
  /// The OAuth 2.0 client secret. This parameter is required if you are creating a rule. If you are modifying a rule, you can omit this parameter if you set ``UseExistingClientSecret`` to true.
  final pulumi.Input<String>? clientSecret;
  /// The OIDC issuer identifier of the IdP. This must be a full URL, including the HTTPS protocol, the domain, and the path.
  final pulumi.Input<String>? issuer;
  /// The behavior if the user is not authenticated. The following are possible values:  +  deny```` - Return an HTTP 401 Unauthorized error.  +  allow```` - Allow the request to be forwarded to the target.  +  authenticate```` - Redirect the request to the IdP authorization endpoint. This is the default value.
  final pulumi.Input<String>? onUnauthenticatedRequest;
  /// The set of user claims to be requested from the IdP. The default is ``openid``. To verify which scope values your IdP supports and how to separate multiple values, see the documentation for your IdP.
  final pulumi.Input<String>? scope;
  /// The name of the cookie used to maintain session information. The default is AWSELBAuthSessionCookie.
  final pulumi.Input<String>? sessionCookieName;
  /// The maximum duration of the authentication session, in seconds. The default is 604800 seconds (7 days).
  final pulumi.Input<String>? sessionTimeout;
  /// The token endpoint of the IdP. This must be a full URL, including the HTTPS protocol, the domain, and the path.
  final pulumi.Input<String>? tokenEndpoint;
  /// Indicates whether to use the existing client secret when modifying a rule. If you are creating a rule, you can omit this parameter or set it to false.
  final pulumi.Input<bool>? useExistingClientSecret;
  /// The user info endpoint of the IdP. This must be a full URL, including the HTTPS protocol, the domain, and the path.
  final pulumi.Input<String>? userInfoEndpoint;

  /// Creates a new [AuthenticateOidcConfigResponse].
  /// [authenticationRequestExtraParams] The query parameters (up to 10) to include in the redirect request to the authorization endpoint.
  /// [authorizationEndpoint] The authorization endpoint of the IdP. This must be a full URL, including the HTTPS protocol, the domain, and the path.
  /// [clientId] The OAuth 2.0 client identifier.
  /// [clientSecret] The OAuth 2.0 client secret. This parameter is required if you are creating a rule. If you are modifying a rule, you can omit this parameter if you set ``UseExistingClientSecret`` to true.
  /// [issuer] The OIDC issuer identifier of the IdP. This must be a full URL, including the HTTPS protocol, the domain, and the path.
  /// [onUnauthenticatedRequest] The behavior if the user is not authenticated. The following are possible values:  +  deny```` - Return an HTTP 401 Unauthorized error.  +  allow```` - Allow the request to be forwarded to the target.  +  authenticate```` - Redirect the request to the IdP authorization endpoint. This is the default value.
  /// [scope] The set of user claims to be requested from the IdP. The default is ``openid``. To verify which scope values your IdP supports and how to separate multiple values, see the documentation for your IdP.
  /// [sessionCookieName] The name of the cookie used to maintain session information. The default is AWSELBAuthSessionCookie.
  /// [sessionTimeout] The maximum duration of the authentication session, in seconds. The default is 604800 seconds (7 days).
  /// [tokenEndpoint] The token endpoint of the IdP. This must be a full URL, including the HTTPS protocol, the domain, and the path.
  /// [useExistingClientSecret] Indicates whether to use the existing client secret when modifying a rule. If you are creating a rule, you can omit this parameter or set it to false.
  /// [userInfoEndpoint] The user info endpoint of the IdP. This must be a full URL, including the HTTPS protocol, the domain, and the path.
  const AuthenticateOidcConfigResponse({
    this.authenticationRequestExtraParams,
    this.authorizationEndpoint,
    this.clientId,
    this.clientSecret,
    this.issuer,
    this.onUnauthenticatedRequest,
    this.scope,
    this.sessionCookieName,
    this.sessionTimeout,
    this.tokenEndpoint,
    this.useExistingClientSecret,
    this.userInfoEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationRequestExtraParams': ?authenticationRequestExtraParams,
      'authorizationEndpoint': ?authorizationEndpoint,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'issuer': ?issuer,
      'onUnauthenticatedRequest': ?onUnauthenticatedRequest,
      'scope': ?scope,
      'sessionCookieName': ?sessionCookieName,
      'sessionTimeout': ?sessionTimeout,
      'tokenEndpoint': ?tokenEndpoint,
      'useExistingClientSecret': ?useExistingClientSecret,
      'userInfoEndpoint': ?userInfoEndpoint,
    };
  }

  factory AuthenticateOidcConfigResponse.fromMap(Map<String, dynamic> map) {
    return AuthenticateOidcConfigResponse(
      authenticationRequestExtraParams: (() { final guardedValue = map['authenticationRequestExtraParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      authorizationEndpoint: (() { final guardedValue = map['authorizationEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onUnauthenticatedRequest: (() { final guardedValue = map['onUnauthenticatedRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionCookieName: (() { final guardedValue = map['sessionCookieName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionTimeout: (() { final guardedValue = map['sessionTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenEndpoint: (() { final guardedValue = map['tokenEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useExistingClientSecret: (() { final guardedValue = map['useExistingClientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userInfoEndpoint: (() { final guardedValue = map['userInfoEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
