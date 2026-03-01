// ignore_for_file: unused_element, unnecessary_cast


/// Preferences related to the Encryption.
class EncryptionPreferences {
  /// Defines secondary layer of software-based encryption enablement.
  final String? doubleEncryption;
  /// Defines Hardware level encryption (Only for disk)
  final String? hardwareEncryption;

  /// Creates a new [EncryptionPreferences].
  /// [doubleEncryption] Defines secondary layer of software-based encryption enablement.
  /// [hardwareEncryption] Defines Hardware level encryption (Only for disk)
  EncryptionPreferences({
    this.doubleEncryption,
    this.hardwareEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doubleEncryption': ?doubleEncryption,
      'hardwareEncryption': ?hardwareEncryption,
    };
  }

  factory EncryptionPreferences.fromMap(Map<String, dynamic> map) {
    return EncryptionPreferences(
      doubleEncryption: map['doubleEncryption'] == null ? null : map['doubleEncryption'] as String,
      hardwareEncryption: map['hardwareEncryption'] == null ? null : map['hardwareEncryption'] as String,
    );
  }
}

