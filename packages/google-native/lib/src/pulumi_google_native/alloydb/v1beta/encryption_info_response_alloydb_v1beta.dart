// ignore_for_file: unused_element, unnecessary_cast

/// EncryptionInfo describes the encryption information of a cluster or a backup.
class EncryptionInfoResponseAlloydbV1beta {
  /// Type of encryption.
  final String encryptionType;

  /// Cloud KMS key versions that are being used to protect the database or the backup.
  final List<String> kmsKeyVersions;

  EncryptionInfoResponseAlloydbV1beta({
    required this.encryptionType,
    required this.kmsKeyVersions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encryptionType'] = encryptionType;
    map['kmsKeyVersions'] = kmsKeyVersions;
    return map;
  }

  factory EncryptionInfoResponseAlloydbV1beta.fromMap(
      Map<String, dynamic> map) {
    return EncryptionInfoResponseAlloydbV1beta(
      encryptionType: map['encryptionType'] as String,
      kmsKeyVersions: (map['kmsKeyVersions'] as List).cast<String>(),
    );
  }
}
