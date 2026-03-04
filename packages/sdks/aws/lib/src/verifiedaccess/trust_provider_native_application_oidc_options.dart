// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrustProviderNativeApplicationOidcOptions {
  final pulumi.Input<String>? authorizationEndpoint;
  final pulumi.Input<String>? clientId;
  final pulumi.Input<String> clientSecret;
  final pulumi.Input<String>? issuer;
  final pulumi.Input<String>? publicSigningKeyEndpoint;
  final pulumi.Input<String>? scope;
  final pulumi.Input<String>? tokenEndpoint;
  final pulumi.Input<String>? userInfoEndpoint;

  /// Creates a new [TrustProviderNativeApplicationOidcOptions].
  /// [authorizationEndpoint] Optional.
  /// [clientId] Optional.
  /// [clientSecret] Required.
  /// [issuer] Optional.
  /// [publicSigningKeyEndpoint] Optional.
  /// [scope] Optional.
  /// [tokenEndpoint] Optional.
  /// [userInfoEndpoint] Optional.
  TrustProviderNativeApplicationOidcOptions({
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

  factory TrustProviderNativeApplicationOidcOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return TrustProviderNativeApplicationOidcOptions(
      authorizationEndpoint: (() {
        final guardedValue = map['authorizationEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientId: (() {
        final guardedValue = map['clientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
      issuer: (() {
        final guardedValue = map['issuer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicSigningKeyEndpoint: (() {
        final guardedValue = map['publicSigningKeyEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scope: (() {
        final guardedValue = map['scope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tokenEndpoint: (() {
        final guardedValue = map['tokenEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userInfoEndpoint: (() {
        final guardedValue = map['userInfoEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
