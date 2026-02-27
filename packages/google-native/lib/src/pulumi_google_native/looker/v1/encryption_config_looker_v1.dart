// ignore_for_file: unused_element, unnecessary_cast

/// Encryption configuration (i.e. CMEK).
class EncryptionConfigLookerV1 {
  /// Name of the CMEK key in KMS (input parameter).
  final String? kmsKeyName;

  EncryptionConfigLookerV1({
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

  factory EncryptionConfigLookerV1.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigLookerV1(
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
    );
  }
}
