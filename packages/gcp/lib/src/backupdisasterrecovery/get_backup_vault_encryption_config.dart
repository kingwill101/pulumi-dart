// ignore_for_file: unused_element, unnecessary_cast

class GetBackupVaultEncryptionConfig {
  /// The Resource name of the Cloud KMS key to be used to encrypt new backups. The key must be in the same location as the backup vault. The key must be a Cloud KMS CryptoKey.
  final String kmsKeyName;

  /// Creates a new [GetBackupVaultEncryptionConfig].
  /// [kmsKeyName] The Resource name of the Cloud KMS key to be used to encrypt new backups. The key must be in the same location as the backup vault. The key must be a Cloud KMS CryptoKey.
  GetBackupVaultEncryptionConfig({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory GetBackupVaultEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return GetBackupVaultEncryptionConfig(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
