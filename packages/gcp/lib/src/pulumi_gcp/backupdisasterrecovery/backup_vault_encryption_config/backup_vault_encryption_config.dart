// ignore_for_file: unused_element, unnecessary_cast

class BackupVaultEncryptionConfig {
  /// The Resource name of the Cloud KMS key to be used to encrypt new backups. The key must be in the same location as the backup vault. The key must be a Cloud KMS CryptoKey.
  final String? kmsKeyName;

  BackupVaultEncryptionConfig({
    this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    return map;
  }

  factory BackupVaultEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return BackupVaultEncryptionConfig(
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
    );
  }
}
