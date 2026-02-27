// ignore_for_file: unused_element, unnecessary_cast

class RepositoryCreationTemplateEncryptionConfiguration {
  /// The encryption type to use for any created repositories. Valid values are `AES256` or `KMS`. Defaults to `AES256`.
  final String? encryptionType;

  /// The ARN of the KMS key to use when `encryption_type` is `KMS`. If not specified, uses the default AWS managed key for ECR.
  final String? kmsKey;

  RepositoryCreationTemplateEncryptionConfiguration({
    this.encryptionType,
    this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionTypeValue = encryptionType;
    if (encryptionTypeValue != null) {
      map['encryptionType'] = encryptionTypeValue;
    }
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    return map;
  }

  factory RepositoryCreationTemplateEncryptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return RepositoryCreationTemplateEncryptionConfiguration(
      encryptionType: map['encryptionType'] == null
          ? null
          : map['encryptionType'] as String,
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
    );
  }
}
