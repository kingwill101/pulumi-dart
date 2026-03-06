// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the endpoints used for the custom Open ID Connect provider.
class OpenIdConnectConfig {
  /// The endpoint to be used to make an authorization request.
  final pulumi.Input<String>? authorizationEndpoint;
  /// The endpoint that provides the keys necessary to validate the token.
  final pulumi.Input<String>? certificationUri;
  /// The endpoint that issues the token.
  final pulumi.Input<String>? issuer;
  /// The endpoint to be used to request a token.
  final pulumi.Input<String>? tokenEndpoint;
  /// The endpoint that contains all the configuration endpoints for the provider.
  final pulumi.Input<String>? wellKnownOpenIdConfiguration;

  /// Creates a new [OpenIdConnectConfig].
  /// [authorizationEndpoint] The endpoint to be used to make an authorization request.
  /// [certificationUri] The endpoint that provides the keys necessary to validate the token.
  /// [issuer] The endpoint that issues the token.
  /// [tokenEndpoint] The endpoint to be used to request a token.
  /// [wellKnownOpenIdConfiguration] The endpoint that contains all the configuration endpoints for the provider.
  const OpenIdConnectConfig({
    this.authorizationEndpoint,
    this.certificationUri,
    this.issuer,
    this.tokenEndpoint,
    this.wellKnownOpenIdConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationEndpoint': ?authorizationEndpoint,
      'certificationUri': ?certificationUri,
      'issuer': ?issuer,
      'tokenEndpoint': ?tokenEndpoint,
      'wellKnownOpenIdConfiguration': ?wellKnownOpenIdConfiguration,
    };
  }

  factory OpenIdConnectConfig.fromMap(Map<String, dynamic> map) {
    return OpenIdConnectConfig(
      authorizationEndpoint: (() { final guardedValue = map['authorizationEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificationUri: (() { final guardedValue = map['certificationUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenEndpoint: (() { final guardedValue = map['tokenEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wellKnownOpenIdConfiguration: (() { final guardedValue = map['wellKnownOpenIdConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

