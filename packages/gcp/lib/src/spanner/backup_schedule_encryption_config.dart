// ignore_for_file: unused_element, unnecessary_cast

class BackupScheduleEncryptionConfig {
  /// The encryption type of backups created by the backup schedule.
  /// Possible values are USE_DATABASE_ENCRYPTION, GOOGLE_DEFAULT_ENCRYPTION, or CUSTOMER_MANAGED_ENCRYPTION.
  /// If you use CUSTOMER_MANAGED_ENCRYPTION, you must specify a kmsKeyName.
  /// If your backup type is incremental-backup, the encryption type must be GOOGLE_DEFAULT_ENCRYPTION.
  /// Possible values are: `USE_DATABASE_ENCRYPTION`, `GOOGLE_DEFAULT_ENCRYPTION`, `CUSTOMER_MANAGED_ENCRYPTION`.
  final String encryptionType;

  /// The resource name of the Cloud KMS key to use for encryption.
  /// Format: 'projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey}'
  final String? kmsKeyName;

  /// Fully qualified name of the KMS keys to use to encrypt this database. The keys must exist
  /// in the same locations as the Spanner Database.
  final List<String>? kmsKeyNames;

  /// Creates a new [BackupScheduleEncryptionConfig].
  /// [encryptionType] The encryption type of backups created by the backup schedule.
  /// [kmsKeyName] The resource name of the Cloud KMS key to use for encryption.
  /// [kmsKeyNames] Fully qualified name of the KMS keys to use to encrypt this database. The keys must exist
  BackupScheduleEncryptionConfig({
    required this.encryptionType,
    this.kmsKeyName,
    this.kmsKeyNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encryptionType'] = encryptionType;
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    final kmsKeyNamesValue = kmsKeyNames;
    if (kmsKeyNamesValue != null) {
      map['kmsKeyNames'] = kmsKeyNamesValue;
    }
    return map;
  }

  factory BackupScheduleEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return BackupScheduleEncryptionConfig(
      encryptionType: map['encryptionType'] as String,
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      kmsKeyNames: map['kmsKeyNames'] == null
          ? null
          : (map['kmsKeyNames'] as List).cast<String>(),
    );
  }
}
