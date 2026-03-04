// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ims_oidc_provider_oidc_provider_args_doc}
/// The set of arguments for OidcProvider.
/// {@endtemplate}
/// {@macro pulumi_ims_oidc_provider_oidc_provider_args_doc}
class OidcProviderArgs {
  /// Client ID.
  final pulumi.Input<List<String>>? clientIds;

  /// Description of OIDC identity provider.
  final pulumi.Input<String>? description;

  /// The authentication fingerprint of the HTTPS CA certificate.
  final pulumi.Input<List<String>>? fingerprints;

  /// The earliest time when an external IdP is allowed to issue an ID Token. If the iat field in the ID Token is greater than the current time, the request is rejected.
  /// Unit: hours. Value range: 1~168.
  final pulumi.Input<int>? issuanceLimitTime;

  /// The issuer URL of the OIDC identity provider.
  final pulumi.Input<String> issuerUrl;

  /// The name of the OIDC identity provider.
  final pulumi.Input<String> oidcProviderName;

  /// Creates a new [OidcProviderArgs].
  /// [clientIds] Client ID.
  /// [description] Description of OIDC identity provider.
  /// [fingerprints] The authentication fingerprint of the HTTPS CA certificate.
  /// [issuanceLimitTime] The earliest time when an external IdP is allowed to issue an ID Token. If the iat field in the ID Token is greater than the current time, the request is rejected.
  /// [issuerUrl] The issuer URL of the OIDC identity provider.
  /// [oidcProviderName] The name of the OIDC identity provider.
  OidcProviderArgs({
    this.clientIds,
    this.description,
    this.fingerprints,
    this.issuanceLimitTime,
    required this.issuerUrl,
    required this.oidcProviderName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIds': ?clientIds,
      'description': ?description,
      'fingerprints': ?fingerprints,
      'issuanceLimitTime': ?issuanceLimitTime,
      'issuerUrl': issuerUrl,
      'oidcProviderName': oidcProviderName,
    };
  }

  factory OidcProviderArgs.fromMap(Map<String, dynamic> map) {
    return OidcProviderArgs(
      clientIds: (() {
        final guardedValue = map['clientIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fingerprints: (() {
        final guardedValue = map['fingerprints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      issuanceLimitTime: (() {
        final guardedValue = map['issuanceLimitTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      issuerUrl: pulumi.Input.fromValue(map['issuerUrl'] as String),
      oidcProviderName: pulumi.Input.fromValue(
        map['oidcProviderName'] as String,
      ),
    );
  }
}
