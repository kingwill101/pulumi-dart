// ignore_for_file: unused_element, unnecessary_cast

/// EncryptionInfo describes the encryption information of a cluster or a backup.
class EncryptionInfoResponseAlloydbV1alpha {
  /// Type of encryption.
  final String encryptionType;

  /// Cloud KMS key versions that are being used to protect the database or the backup.
  final List<String> kmsKeyVersions;

  /// Creates a new [EncryptionInfoResponseAlloydbV1alpha].
  /// [encryptionType] Type of encryption.
  /// [kmsKeyVersions] Cloud KMS key versions that are being used to protect the database or the backup.
  EncryptionInfoResponseAlloydbV1alpha({
    required this.encryptionType,
    required this.kmsKeyVersions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encryptionType'] = encryptionType;
    map['kmsKeyVersions'] = kmsKeyVersions;
    return map;
  }

  factory EncryptionInfoResponseAlloydbV1alpha.fromMap(
      Map<String, dynamic> map) {
    return EncryptionInfoResponseAlloydbV1alpha(
      encryptionType: map['encryptionType'] as String,
      kmsKeyVersions: (map['kmsKeyVersions'] as List).cast<String>(),
    );
  }
}
