// ignore_for_file: unused_element, unnecessary_cast

/// Encryption configuration for a Cloud Spanner database.
class EncryptionConfig15 {
  /// The Cloud KMS key to be used for encrypting and decrypting the database. Values are of the form `projects//locations//keyRings//cryptoKeys/`.
  final String? kmsKeyName;

  EncryptionConfig15({
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

  factory EncryptionConfig15.fromMap(Map<String, dynamic> map) {
    return EncryptionConfig15(
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
    );
  }
}
