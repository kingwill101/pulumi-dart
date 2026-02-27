// ignore_for_file: unused_element, unnecessary_cast

/// Encryption configuration for a Cloud Spanner database.
class EncryptionConfigSpannerV1 {
  /// The Cloud KMS key to be used for encrypting and decrypting the database. Values are of the form `projects//locations//keyRings//cryptoKeys/`.
  final String? kmsKeyName;

  EncryptionConfigSpannerV1({
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

  factory EncryptionConfigSpannerV1.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigSpannerV1(
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
    );
  }
}
