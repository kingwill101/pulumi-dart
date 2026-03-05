// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkforceOidcConfig {
  /// A string to string map of identifiers specific to the custom identity provider (IdP) being used.
  final pulumi.Input<Map<String, String>>? authenticationRequestExtraParams;
  /// The OIDC IdP authorization endpoint used to configure your private workforce.
  final pulumi.Input<String> authorizationEndpoint;
  /// The OIDC IdP client ID used to configure your private workforce.
  final pulumi.Input<String> clientId;
  /// The OIDC IdP client secret used to configure your private workforce.
  final pulumi.Input<String> clientSecret;
  /// The OIDC IdP issuer used to configure your private workforce.
  final pulumi.Input<String> issuer;
  /// The OIDC IdP JSON Web Key Set (Jwks) URI used to configure your private workforce.
  final pulumi.Input<String> jwksUri;
  /// The OIDC IdP logout endpoint used to configure your private workforce.
  final pulumi.Input<String> logoutEndpoint;
  /// An array of string identifiers used to refer to the specific pieces of user data or claims that the client application wants to access.
  final pulumi.Input<String>? scope;
  /// The OIDC IdP token endpoint used to configure your private workforce.
  final pulumi.Input<String> tokenEndpoint;
  /// The OIDC IdP user information endpoint used to configure your private workforce.
  final pulumi.Input<String> userInfoEndpoint;

  /// Creates a new [WorkforceOidcConfig].
  /// [authenticationRequestExtraParams] A string to string map of identifiers specific to the custom identity provider (IdP) being used.
  /// [authorizationEndpoint] The OIDC IdP authorization endpoint used to configure your private workforce.
  /// [clientId] The OIDC IdP client ID used to configure your private workforce.
  /// [clientSecret] The OIDC IdP client secret used to configure your private workforce.
  /// [issuer] The OIDC IdP issuer used to configure your private workforce.
  /// [jwksUri] The OIDC IdP JSON Web Key Set (Jwks) URI used to configure your private workforce.
  /// [logoutEndpoint] The OIDC IdP logout endpoint used to configure your private workforce.
  /// [scope] An array of string identifiers used to refer to the specific pieces of user data or claims that the client application wants to access.
  /// [tokenEndpoint] The OIDC IdP token endpoint used to configure your private workforce.
  /// [userInfoEndpoint] The OIDC IdP user information endpoint used to configure your private workforce.
  WorkforceOidcConfig({
    this.authenticationRequestExtraParams,
    required this.authorizationEndpoint,
    required this.clientId,
    required this.clientSecret,
    required this.issuer,
    required this.jwksUri,
    required this.logoutEndpoint,
    this.scope,
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
      'jwksUri': jwksUri,
      'logoutEndpoint': logoutEndpoint,
      'scope': ?scope,
      'tokenEndpoint': tokenEndpoint,
      'userInfoEndpoint': userInfoEndpoint,
    };
  }

  factory WorkforceOidcConfig.fromMap(Map<String, dynamic> map) {
    return WorkforceOidcConfig(
      authenticationRequestExtraParams: (() { final guardedValue = map['authenticationRequestExtraParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      authorizationEndpoint: pulumi.Input.fromValue(map['authorizationEndpoint'] as String),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      jwksUri: pulumi.Input.fromValue(map['jwksUri'] as String),
      logoutEndpoint: pulumi.Input.fromValue(map['logoutEndpoint'] as String),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenEndpoint: pulumi.Input.fromValue(map['tokenEndpoint'] as String),
      userInfoEndpoint: pulumi.Input.fromValue(map['userInfoEndpoint'] as String),
    );
  }
}

