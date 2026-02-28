// ignore_for_file: unused_element, unnecessary_cast

class GetRepositoryEncryptionConfiguration {
  /// Encryption type to use for the repository, either `AES256` or `KMS`.
  final String encryptionType;

  /// If `encryption_type` is `KMS`, the ARN of the KMS key used.
  final String kmsKey;

  /// Creates a new [GetRepositoryEncryptionConfiguration].
  /// [encryptionType] Encryption type to use for the repository, either `AES256` or `KMS`.
  /// [kmsKey] If `encryption_type` is `KMS`, the ARN of the KMS key used.
  GetRepositoryEncryptionConfiguration({
    required this.encryptionType,
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encryptionType'] = encryptionType;
    map['kmsKey'] = kmsKey;
    return map;
  }

  factory GetRepositoryEncryptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetRepositoryEncryptionConfiguration(
      encryptionType: map['encryptionType'] as String,
      kmsKey: map['kmsKey'] as String,
    );
  }
}
