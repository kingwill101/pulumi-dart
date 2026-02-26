// ignore_for_file: unused_element, unnecessary_cast

class GetClusterContinuousBackupInfoEncryptionInfo {
  /// Output only. Type of encryption.
  final String encryptionType;

  /// Output only. Cloud KMS key versions that are being used to protect the database or the backup.
  final List<String> kmsKeyVersions;

  GetClusterContinuousBackupInfoEncryptionInfo({
    required this.encryptionType,
    required this.kmsKeyVersions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encryptionType'] = encryptionType;
    map['kmsKeyVersions'] = kmsKeyVersions;
    return map;
  }

  factory GetClusterContinuousBackupInfoEncryptionInfo.fromMap(
      Map<String, dynamic> map) {
    return GetClusterContinuousBackupInfoEncryptionInfo(
      encryptionType: map['encryptionType'] as String,
      kmsKeyVersions: (map['kmsKeyVersions'] as List).cast<String>(),
    );
  }
}
