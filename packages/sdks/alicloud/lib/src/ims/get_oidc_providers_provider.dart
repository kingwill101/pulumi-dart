// ignore_for_file: unused_element, unnecessary_cast


class GetOidcProvidersProvider {
  /// ARN of OIDC identity provider.
  final String arn;
  /// Client ID.
  final List<String> clientIds;
  /// Creation Time (UTC time).
  final String createTime;
  /// Description of OIDC identity provider.
  final String description;
  /// The authentication fingerprint of the HTTPS CA certificate.
  final List<String> fingerprints;
  /// The ID of the resource supplied above.
  final String id;
  /// The earliest time when an external IdP is allowed to issue an ID Token. If the iat field in the ID Token is greater than the current time, the request is rejected.Unit: hours. Value range: 1~168.
  final int issuanceLimitTime;
  /// The issuer URL of the OIDC identity provider.
  final String issuerUrl;
  /// The name of the OIDC identity provider.
  final String oidcProviderName;
  /// Modification Time (UTC time).
  final String updateTime;

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
  GetOidcProvidersProvider({
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
      arn: map['arn'] as String,
      clientIds: (map['clientIds'] as List).cast<String>(),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      fingerprints: (map['fingerprints'] as List).cast<String>(),
      id: map['id'] as String,
      issuanceLimitTime: map['issuanceLimitTime'] as int,
      issuerUrl: map['issuerUrl'] as String,
      oidcProviderName: map['oidcProviderName'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

