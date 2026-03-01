// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getPublicKey.
class GetPublicKeyResult {
  /// Key ARN of the asymmetric CMK from which the public key was downloaded.
  final String arn;

  /// Type of the public key that was downloaded.
  final String customerMasterKeySpec;

  /// Encryption algorithms that AWS KMS supports for this key. Only set when the `key_usage` of the public key is `ENCRYPT_DECRYPT`.
  final List<String> encryptionAlgorithms;
  final List<String>? grantTokens;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String keyId;

  /// Permitted use of the public key. Valid values are `ENCRYPT_DECRYPT` or `SIGN_VERIFY`
  final String keyUsage;

  /// Exported public key. The value is a DER-encoded X.509 public key, also known as SubjectPublicKeyInfo (SPKI), as defined in [RFC 5280](https://tools.ietf.org/html/rfc5280). The value is Base64-encoded.
  final String publicKey;

  /// Exported public key. The value is Privacy Enhanced Mail (PEM) encoded.
  final String publicKeyPem;
  final String region;

  /// Signing algorithms that AWS KMS supports for this key. Only set when the `key_usage` of the public key is `SIGN_VERIFY`.
  final List<String> signingAlgorithms;

  /// Creates a new [GetPublicKeyResult].
  /// [arn] Key ARN of the asymmetric CMK from which the public key was downloaded.
  /// [customerMasterKeySpec] Type of the public key that was downloaded.
  /// [encryptionAlgorithms] Encryption algorithms that AWS KMS supports for this key. Only set when the `key_usage` of the public key is `ENCRYPT_DECRYPT`.
  /// [grantTokens] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyId] Required.
  /// [keyUsage] Permitted use of the public key. Valid values are `ENCRYPT_DECRYPT` or `SIGN_VERIFY`
  /// [publicKey] Exported public key. The value is a DER-encoded X.509 public key, also known as SubjectPublicKeyInfo (SPKI), as defined in [RFC 5280](https://tools.ietf.org/html/rfc5280). The value is Base64-encoded.
  /// [publicKeyPem] Exported public key. The value is Privacy Enhanced Mail (PEM) encoded.
  /// [region] Required.
  /// [signingAlgorithms] Signing algorithms that AWS KMS supports for this key. Only set when the `key_usage` of the public key is `SIGN_VERIFY`.
  GetPublicKeyResult({
    required this.arn,
    required this.customerMasterKeySpec,
    required this.encryptionAlgorithms,
    this.grantTokens,
    required this.id,
    required this.keyId,
    required this.keyUsage,
    required this.publicKey,
    required this.publicKeyPem,
    required this.region,
    required this.signingAlgorithms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'customerMasterKeySpec': customerMasterKeySpec,
      'encryptionAlgorithms': encryptionAlgorithms,
      'grantTokens': ?grantTokens,
      'id': id,
      'keyId': keyId,
      'keyUsage': keyUsage,
      'publicKey': publicKey,
      'publicKeyPem': publicKeyPem,
      'region': region,
      'signingAlgorithms': signingAlgorithms,
    };
  }

  factory GetPublicKeyResult.fromMap(Map<String, dynamic> map) {
    return GetPublicKeyResult(
      arn: map['arn'] as String,
      customerMasterKeySpec: map['customerMasterKeySpec'] as String,
      encryptionAlgorithms: (map['encryptionAlgorithms'] as List)
          .cast<String>(),
      grantTokens: map['grantTokens'] == null
          ? null
          : (map['grantTokens'] as List).cast<String>(),
      id: map['id'] as String,
      keyId: map['keyId'] as String,
      keyUsage: map['keyUsage'] as String,
      publicKey: map['publicKey'] as String,
      publicKeyPem: map['publicKeyPem'] as String,
      region: map['region'] as String,
      signingAlgorithms: (map['signingAlgorithms'] as List).cast<String>(),
    );
  }
}
