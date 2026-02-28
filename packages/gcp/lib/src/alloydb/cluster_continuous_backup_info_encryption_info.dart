// ignore_for_file: unused_element, unnecessary_cast

class ClusterContinuousBackupInfoEncryptionInfo {
  /// (Output)
  /// Output only. Type of encryption.
  final String? encryptionType;

  /// (Output)
  /// Output only. Cloud KMS key versions that are being used to protect the database or the backup.
  final List<String>? kmsKeyVersions;

  /// Creates a new [ClusterContinuousBackupInfoEncryptionInfo].
  /// [encryptionType] (Output)
  /// [kmsKeyVersions] (Output)
  ClusterContinuousBackupInfoEncryptionInfo({
    this.encryptionType,
    this.kmsKeyVersions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionTypeValue = encryptionType;
    if (encryptionTypeValue != null) {
      map['encryptionType'] = encryptionTypeValue;
    }
    final kmsKeyVersionsValue = kmsKeyVersions;
    if (kmsKeyVersionsValue != null) {
      map['kmsKeyVersions'] = kmsKeyVersionsValue;
    }
    return map;
  }

  factory ClusterContinuousBackupInfoEncryptionInfo.fromMap(
      Map<String, dynamic> map) {
    return ClusterContinuousBackupInfoEncryptionInfo(
      encryptionType: map['encryptionType'] == null
          ? null
          : map['encryptionType'] as String,
      kmsKeyVersions: map['kmsKeyVersions'] == null
          ? null
          : (map['kmsKeyVersions'] as List).cast<String>(),
    );
  }
}
