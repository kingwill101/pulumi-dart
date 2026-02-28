// ignore_for_file: unused_element, unnecessary_cast

class GetClusterEncryptionInfo {
  /// Output only. Type of encryption.
  final String encryptionType;

  /// Output only. Cloud KMS key versions that are being used to protect the database or the backup.
  final List<String> kmsKeyVersions;

  /// Creates a new [GetClusterEncryptionInfo].
  /// [encryptionType] Output only. Type of encryption.
  /// [kmsKeyVersions] Output only. Cloud KMS key versions that are being used to protect the database or the backup.
  GetClusterEncryptionInfo({
    required this.encryptionType,
    required this.kmsKeyVersions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encryptionType'] = encryptionType;
    map['kmsKeyVersions'] = kmsKeyVersions;
    return map;
  }

  factory GetClusterEncryptionInfo.fromMap(Map<String, dynamic> map) {
    return GetClusterEncryptionInfo(
      encryptionType: map['encryptionType'] as String,
      kmsKeyVersions: (map['kmsKeyVersions'] as List).cast<String>(),
    );
  }
}
