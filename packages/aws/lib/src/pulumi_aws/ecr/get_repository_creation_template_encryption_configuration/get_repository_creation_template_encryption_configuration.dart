// ignore_for_file: unused_element, unnecessary_cast

class GetRepositoryCreationTemplateEncryptionConfiguration {
  /// Encryption type to use for any created repositories, either `AES256` or `KMS`.
  final String encryptionType;

  /// If `encryption_type` is `KMS`, the ARN of the KMS key used.
  final String kmsKey;

  GetRepositoryCreationTemplateEncryptionConfiguration({
    required this.encryptionType,
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encryptionType'] = encryptionType;
    map['kmsKey'] = kmsKey;
    return map;
  }

  factory GetRepositoryCreationTemplateEncryptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetRepositoryCreationTemplateEncryptionConfiguration(
      encryptionType: map['encryptionType'] as String,
      kmsKey: map['kmsKey'] as String,
    );
  }
}
