// ignore_for_file: unused_element, unnecessary_cast

/// Encryption configuration (i.e. CMEK).
class EncryptionConfig {
  /// Name of the CMEK key in KMS (input parameter).
  final String? kmsKeyName;

  /// Creates a new [EncryptionConfig].
  /// [kmsKeyName] Name of the CMEK key in KMS (input parameter).
  EncryptionConfig({
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

  factory EncryptionConfig.fromMap(Map<String, dynamic> map) {
    return EncryptionConfig(
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
    );
  }
}
