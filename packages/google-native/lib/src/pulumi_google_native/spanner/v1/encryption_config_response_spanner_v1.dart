// ignore_for_file: unused_element, unnecessary_cast

/// Encryption configuration for a Cloud Spanner database.
class EncryptionConfigResponseSpannerV1 {
  /// The Cloud KMS key to be used for encrypting and decrypting the database. Values are of the form `projects//locations//keyRings//cryptoKeys/`.
  final String kmsKeyName;

  EncryptionConfigResponseSpannerV1({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory EncryptionConfigResponseSpannerV1.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigResponseSpannerV1(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
