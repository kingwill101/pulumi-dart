// ignore_for_file: unused_element, unnecessary_cast

class GetAuthorityKeySpec {
  /// The algorithm to use for creating a managed Cloud KMS key for a for a simplified
  /// experience. All managed keys will be have their ProtectionLevel as HSM. Possible values: ["SIGN_HASH_ALGORITHM_UNSPECIFIED", "RSA_PSS_2048_SHA256", "RSA_PSS_3072_SHA256", "RSA_PSS_4096_SHA256", "RSA_PKCS1_2048_SHA256", "RSA_PKCS1_3072_SHA256", "RSA_PKCS1_4096_SHA256", "EC_P256_SHA256", "EC_P384_SHA384"]
  final String algorithm;

  /// The resource name for an existing Cloud KMS CryptoKeyVersion in the format
  /// 'projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*'.
  final String cloudKmsKeyVersion;

  GetAuthorityKeySpec({
    required this.algorithm,
    required this.cloudKmsKeyVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['algorithm'] = algorithm;
    map['cloudKmsKeyVersion'] = cloudKmsKeyVersion;
    return map;
  }

  factory GetAuthorityKeySpec.fromMap(Map<String, dynamic> map) {
    return GetAuthorityKeySpec(
      algorithm: map['algorithm'] as String,
      cloudKmsKeyVersion: map['cloudKmsKeyVersion'] as String,
    );
  }
}
