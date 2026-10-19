// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrustProviderNativeApplicationOidcOptions {
  /// OIDC authorization endpoint.
  final pulumi.Input<String?>? authorizationEndpoint;
  /// OAuth 2.0 client identifier.
  final pulumi.Input<String?>? clientId;
  /// OAuth 2.0 client secret.
  final pulumi.Input<String> clientSecret;
  /// OIDC issuer identifier of the IdP.
  final pulumi.Input<String?>? issuer;
  /// OIDC public signing key endpoint.
  final pulumi.Input<String?>? publicSigningKeyEndpoint;
  /// OpenID Connect (OIDC) scope specified.
  final pulumi.Input<String?>? scope;
  /// OIDC token endpoint.
  final pulumi.Input<String?>? tokenEndpoint;
  /// OIDC user info endpoint.
  final pulumi.Input<String?>? userInfoEndpoint;

  /// Creates a new [TrustProviderNativeApplicationOidcOptions].
  /// [authorizationEndpoint] OIDC authorization endpoint.
  /// [clientId] OAuth 2.0 client identifier.
  /// [clientSecret] OAuth 2.0 client secret.
  /// [issuer] OIDC issuer identifier of the IdP.
  /// [publicSigningKeyEndpoint] OIDC public signing key endpoint.
  /// [scope] OpenID Connect (OIDC) scope specified.
  /// [tokenEndpoint] OIDC token endpoint.
  /// [userInfoEndpoint] OIDC user info endpoint.
  const TrustProviderNativeApplicationOidcOptions({
    this.authorizationEndpoint,
    this.clientId,
    required this.clientSecret,
    this.issuer,
    this.publicSigningKeyEndpoint,
    this.scope,
    this.tokenEndpoint,
    this.userInfoEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationEndpoint': ?authorizationEndpoint,
      'clientId': ?clientId,
      'clientSecret': clientSecret,
      'issuer': ?issuer,
      'publicSigningKeyEndpoint': ?publicSigningKeyEndpoint,
      'scope': ?scope,
      'tokenEndpoint': ?tokenEndpoint,
      'userInfoEndpoint': ?userInfoEndpoint,
    };
  }

  factory TrustProviderNativeApplicationOidcOptions.fromMap(Map<String, dynamic> map) {
    return TrustProviderNativeApplicationOidcOptions(
      authorizationEndpoint: (() { final guardedValue = map['authorizationEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicSigningKeyEndpoint: (() { final guardedValue = map['publicSigningKeyEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenEndpoint: (() { final guardedValue = map['tokenEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userInfoEndpoint: (() { final guardedValue = map['userInfoEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
