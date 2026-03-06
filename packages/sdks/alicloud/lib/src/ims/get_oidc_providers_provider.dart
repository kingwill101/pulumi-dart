// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOidcProvidersProvider {
  /// ARN of OIDC identity provider.
  final pulumi.Input<String> arn;
  /// Client ID.
  final pulumi.Input<List<String>> clientIds;
  /// Creation Time (UTC time).
  final pulumi.Input<String> createTime;
  /// Description of OIDC identity provider.
  final pulumi.Input<String> description;
  /// The authentication fingerprint of the HTTPS CA certificate.
  final pulumi.Input<List<String>> fingerprints;
  /// The ID of the resource supplied above.
  final pulumi.Input<String> id;
  /// The earliest time when an external IdP is allowed to issue an ID Token. If the iat field in the ID Token is greater than the current time, the request is rejected.Unit: hours. Value range: 1~168.
  final pulumi.Input<int> issuanceLimitTime;
  /// The issuer URL of the OIDC identity provider.
  final pulumi.Input<String> issuerUrl;
  /// The name of the OIDC identity provider.
  final pulumi.Input<String> oidcProviderName;
  /// Modification Time (UTC time).
  final pulumi.Input<String> updateTime;

  /// Creates a new [GetOidcProvidersProvider].
  /// [arn] ARN of OIDC identity provider.
  /// [clientIds] Client ID.
  /// [createTime] Creation Time (UTC time).
  /// [description] Description of OIDC identity provider.
  /// [fingerprints] The authentication fingerprint of the HTTPS CA certificate.
  /// [id] The ID of the resource supplied above.
  /// [issuanceLimitTime] The earliest time when an external IdP is allowed to issue an ID Token. If the iat field in the ID Token is greater than the current time, the request is rejected.Unit: hours. Value range: 1~168.
  /// [issuerUrl] The issuer URL of the OIDC identity provider.
  /// [oidcProviderName] The name of the OIDC identity provider.
  /// [updateTime] Modification Time (UTC time).
  const GetOidcProvidersProvider({
    required this.arn,
    required this.clientIds,
    required this.createTime,
    required this.description,
    required this.fingerprints,
    required this.id,
    required this.issuanceLimitTime,
    required this.issuerUrl,
    required this.oidcProviderName,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'clientIds': clientIds,
      'createTime': createTime,
      'description': description,
      'fingerprints': fingerprints,
      'id': id,
      'issuanceLimitTime': issuanceLimitTime,
      'issuerUrl': issuerUrl,
      'oidcProviderName': oidcProviderName,
      'updateTime': updateTime,
    };
  }

  factory GetOidcProvidersProvider.fromMap(Map<String, dynamic> map) {
    return GetOidcProvidersProvider(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      clientIds: pulumi.Input.fromValue((map['clientIds'] as List).cast<String>()),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      fingerprints: pulumi.Input.fromValue((map['fingerprints'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      issuanceLimitTime: pulumi.Input.fromValue(map['issuanceLimitTime'] as int),
      issuerUrl: pulumi.Input.fromValue(map['issuerUrl'] as String),
      oidcProviderName: pulumi.Input.fromValue(map['oidcProviderName'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}

