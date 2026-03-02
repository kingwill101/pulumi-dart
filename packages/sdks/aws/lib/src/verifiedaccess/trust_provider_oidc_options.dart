// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrustProviderOidcOptions {
  final pulumi.Input<String>? authorizationEndpoint;
  final pulumi.Input<String>? clientId;
  final pulumi.Input<String> clientSecret;
  final pulumi.Input<String>? issuer;
  final pulumi.Input<String>? scope;
  final pulumi.Input<String>? tokenEndpoint;
  final pulumi.Input<String>? userInfoEndpoint;

  /// Creates a new [TrustProviderOidcOptions].
  /// [authorizationEndpoint] Optional.
  /// [clientId] Optional.
  /// [clientSecret] Required.
  /// [issuer] Optional.
  /// [scope] Optional.
  /// [tokenEndpoint] Optional.
  /// [userInfoEndpoint] Optional.
  TrustProviderOidcOptions({
    this.authorizationEndpoint,
    this.clientId,
    required this.clientSecret,
    this.issuer,
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
      'scope': ?scope,
      'tokenEndpoint': ?tokenEndpoint,
      'userInfoEndpoint': ?userInfoEndpoint,
    };
  }

  factory TrustProviderOidcOptions.fromMap(Map<String, dynamic> map) {
    return TrustProviderOidcOptions(
      authorizationEndpoint: map['authorizationEndpoint'] == null ? null : (map['authorizationEndpoint'] as String).input(),
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      clientSecret: (map['clientSecret'] as String).input(),
      issuer: map['issuer'] == null ? null : (map['issuer'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
      tokenEndpoint: map['tokenEndpoint'] == null ? null : (map['tokenEndpoint'] as String).input(),
      userInfoEndpoint: map['userInfoEndpoint'] == null ? null : (map['userInfoEndpoint'] as String).input(),
    );
  }
}

