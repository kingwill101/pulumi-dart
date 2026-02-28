// ignore_for_file: unused_element, unnecessary_cast

class DatabaseEncryptionConfiguration {
  /// Type of key; one of `SSE_S3`, `SSE_KMS`, `CSE_KMS`
  final String encryptionOption;

  /// KMS key ARN or ID; required for key types `SSE_KMS` and `CSE_KMS`.
  final String? kmsKey;

  /// Creates a new [DatabaseEncryptionConfiguration].
  /// [encryptionOption] Type of key; one of `SSE_S3`, `SSE_KMS`, `CSE_KMS`
  /// [kmsKey] KMS key ARN or ID; required for key types `SSE_KMS` and `CSE_KMS`.
  DatabaseEncryptionConfiguration({
    required this.encryptionOption,
    this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encryptionOption'] = encryptionOption;
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    return map;
  }

  factory DatabaseEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return DatabaseEncryptionConfiguration(
      encryptionOption: map['encryptionOption'] as String,
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
    );
  }
}
