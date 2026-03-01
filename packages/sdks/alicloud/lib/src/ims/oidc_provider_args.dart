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
    pulumi.Output<List<String>>? clientIds,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? fingerprints,
    pulumi.Output<int>? issuanceLimitTime,
    required pulumi.Output<String> issuerUrl,
    required pulumi.Output<String> oidcProviderName,
  }) :
      clientIds = pulumi.Input.asOptionalInput<List<String>>(clientIds),
      description = pulumi.Input.asOptionalInput<String>(description),
      fingerprints = pulumi.Input.asOptionalInput<List<String>>(fingerprints),
      issuanceLimitTime = pulumi.Input.asOptionalInput<int>(issuanceLimitTime),
      issuerUrl = pulumi.Input.asInput<String>(issuerUrl),
      oidcProviderName = pulumi.Input.asInput<String>(oidcProviderName);

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
      clientIds: map['clientIds'] == null ? null : pulumi.Output.create<List<String>>((map['clientIds'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fingerprints: map['fingerprints'] == null ? null : pulumi.Output.create<List<String>>((map['fingerprints'] as List).cast<String>()),
      issuanceLimitTime: map['issuanceLimitTime'] == null ? null : pulumi.Output.create<int>(map['issuanceLimitTime'] as int),
      issuerUrl: pulumi.Output.create<String>(map['issuerUrl'] as String),
      oidcProviderName: pulumi.Output.create<String>(map['oidcProviderName'] as String),
    );
  }
}

