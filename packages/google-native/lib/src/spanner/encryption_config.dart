// ignore_for_file: unused_element, unnecessary_cast

/// Encryption configuration for a Cloud Spanner database.
class EncryptionConfig {
  /// The Cloud KMS key to be used for encrypting and decrypting the database. Values are of the form `projects//locations//keyRings//cryptoKeys/`.
  final String? kmsKeyName;

  /// Creates a new [EncryptionConfig].
  /// [kmsKeyName] The Cloud KMS key to be used for encrypting and decrypting the database. Values are of the form `projects//locations//keyRings//cryptoKeys/`.
  EncryptionConfig({this.kmsKeyName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyName': ?kmsKeyName};
  }

  factory EncryptionConfig.fromMap(Map<String, dynamic> map) {
    return EncryptionConfig(
      kmsKeyName: map['kmsKeyName'] == null
          ? null
          : map['kmsKeyName'] as String,
    );
  }
}
