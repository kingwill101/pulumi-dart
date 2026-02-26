// ignore_for_file: unused_element, unnecessary_cast

class BackupPlanBackupConfigEncryptionKey {
  /// Google Cloud KMS encryption key. Format: projects/*/locations/*/keyRings/*/cryptoKeys/*
  final String gcpKmsEncryptionKey;

  BackupPlanBackupConfigEncryptionKey({
    required this.gcpKmsEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcpKmsEncryptionKey'] = gcpKmsEncryptionKey;
    return map;
  }

  factory BackupPlanBackupConfigEncryptionKey.fromMap(
      Map<String, dynamic> map) {
    return BackupPlanBackupConfigEncryptionKey(
      gcpKmsEncryptionKey: map['gcpKmsEncryptionKey'] as String,
    );
  }
}
