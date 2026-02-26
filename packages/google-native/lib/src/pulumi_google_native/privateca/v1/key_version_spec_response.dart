// ignore_for_file: unused_element, unnecessary_cast

/// A Cloud KMS key configuration that a CertificateAuthority will use.
class KeyVersionSpecResponse {
  /// The algorithm to use for creating a managed Cloud KMS key for a for a simplified experience. All managed keys will be have their ProtectionLevel as `HSM`.
  final String algorithm;

  /// The resource name for an existing Cloud KMS CryptoKeyVersion in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`. This option enables full flexibility in the key's capabilities and properties.
  final String cloudKmsKeyVersion;

  KeyVersionSpecResponse({
    required this.algorithm,
    required this.cloudKmsKeyVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['algorithm'] = algorithm;
    map['cloudKmsKeyVersion'] = cloudKmsKeyVersion;
    return map;
  }

  factory KeyVersionSpecResponse.fromMap(Map<String, dynamic> map) {
    return KeyVersionSpecResponse(
      algorithm: map['algorithm'] as String,
      cloudKmsKeyVersion: map['cloudKmsKeyVersion'] as String,
    );
  }
}
