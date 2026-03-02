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

  factory TrustProviderNativeApplicationOidcOptions.fromMap(Map<String, dynamic> map) {
    return TrustProviderNativeApplicationOidcOptions(
      authorizationEndpoint: map['authorizationEndpoint'] == null ? null : ((map['authorizationEndpoint'] as String).input()).input(),
      clientId: map['clientId'] == null ? null : ((map['clientId'] as String).input()).input(),
      clientSecret: (map['clientSecret'] as String).input(),
      issuer: map['issuer'] == null ? null : ((map['issuer'] as String).input()).input(),
      publicSigningKeyEndpoint: map['publicSigningKeyEndpoint'] == null ? null : ((map['publicSigningKeyEndpoint'] as String).input()).input(),
      scope: map['scope'] == null ? null : ((map['scope'] as String).input()).input(),
      tokenEndpoint: map['tokenEndpoint'] == null ? null : ((map['tokenEndpoint'] as String).input()).input(),
      userInfoEndpoint: map['userInfoEndpoint'] == null ? null : ((map['userInfoEndpoint'] as String).input()).input(),
    );
  }
}

