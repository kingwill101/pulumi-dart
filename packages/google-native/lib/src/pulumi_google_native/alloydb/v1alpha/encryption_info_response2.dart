// ignore_for_file: unused_element, unnecessary_cast

/// EncryptionInfo describes the encryption information of a cluster or a backup.
class EncryptionInfoResponse2 {
  /// Type of encryption.
  final String encryptionType;

  /// Cloud KMS key versions that are being used to protect the database or the backup.
  final List<String> kmsKeyVersions;

  EncryptionInfoResponse2({
    required this.encryptionType,
    required this.kmsKeyVersions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encryptionType'] = encryptionType;
    map['kmsKeyVersions'] = kmsKeyVersions;
    return map;
  }

  factory EncryptionInfoResponse2.fromMap(Map<String, dynamic> map) {
    return EncryptionInfoResponse2(
      encryptionType: map['encryptionType'] as String,
      kmsKeyVersions: (map['kmsKeyVersions'] as List).cast<String>(),
    );
  }
}
