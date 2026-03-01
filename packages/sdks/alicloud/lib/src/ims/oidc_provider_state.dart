// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OidcProvider resources.
class OidcProviderState {
  /// ARN of OIDC identity provider.
  final pulumi.Input<String>? arn;
  /// Client ID.
  final pulumi.Input<List<String>>? clientIds;
  /// Creation Time (UTC time).
  final pulumi.Input<String>? createTime;
  /// Description of OIDC identity provider.
  final pulumi.Input<String>? description;
  /// The authentication fingerprint of the HTTPS CA certificate.
  final pulumi.Input<List<String>>? fingerprints;
  /// The earliest time when an external IdP is allowed to issue an ID Token. If the iat field in the ID Token is greater than the current time, the request is rejected.
  /// Unit: hours. Value range: 1~168.
  final pulumi.Input<int>? issuanceLimitTime;
  /// The issuer URL of the OIDC identity provider.
  final pulumi.Input<String>? issuerUrl;
  /// The name of the OIDC identity provider.
  final pulumi.Input<String>? oidcProviderName;

  /// Creates a new [OidcProviderState].
  /// [arn] ARN of OIDC identity provider.
  /// [clientIds] Client ID.
  /// [createTime] Creation Time (UTC time).
  /// [description] Description of OIDC identity provider.
  /// [fingerprints] The authentication fingerprint of the HTTPS CA certificate.
  /// [issuanceLimitTime] The earliest time when an external IdP is allowed to issue an ID Token. If the iat field in the ID Token is greater than the current time, the request is rejected.
  /// [issuerUrl] The issuer URL of the OIDC identity provider.
  /// [oidcProviderName] The name of the OIDC identity provider.
  OidcProviderState({
    pulumi.Output<String>? arn,
    pulumi.Output<List<String>>? clientIds,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? fingerprints,
    pulumi.Output<int>? issuanceLimitTime,
    pulumi.Output<String>? issuerUrl,
    pulumi.Output<String>? oidcProviderName,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      clientIds = pulumi.Input.asOptionalInput<List<String>>(clientIds),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      fingerprints = pulumi.Input.asOptionalInput<List<String>>(fingerprints),
      issuanceLimitTime = pulumi.Input.asOptionalInput<int>(issuanceLimitTime),
      issuerUrl = pulumi.Input.asOptionalInput<String>(issuerUrl),
      oidcProviderName = pulumi.Input.asOptionalInput<String>(oidcProviderName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'clientIds': ?clientIds,
      'createTime': ?createTime,
      'description': ?description,
      'fingerprints': ?fingerprints,
      'issuanceLimitTime': ?issuanceLimitTime,
      'issuerUrl': ?issuerUrl,
      'oidcProviderName': ?oidcProviderName,
    };
  }

  factory OidcProviderState.fromMap(Map<String, dynamic> map) {
    return OidcProviderState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      clientIds: map['clientIds'] == null ? null : pulumi.Output.create<List<String>>((map['clientIds'] as List).cast<String>()),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fingerprints: map['fingerprints'] == null ? null : pulumi.Output.create<List<String>>((map['fingerprints'] as List).cast<String>()),
      issuanceLimitTime: map['issuanceLimitTime'] == null ? null : pulumi.Output.create<int>(map['issuanceLimitTime'] as int),
      issuerUrl: map['issuerUrl'] == null ? null : pulumi.Output.create<String>(map['issuerUrl'] as String),
      oidcProviderName: map['oidcProviderName'] == null ? null : pulumi.Output.create<String>(map['oidcProviderName'] as String),
    );
  }
}

