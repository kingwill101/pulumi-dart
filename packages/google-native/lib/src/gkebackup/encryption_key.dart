// ignore_for_file: unused_element, unnecessary_cast

/// Defined a customer managed encryption key that will be used to encrypt Backup artifacts.
class EncryptionKey {
  /// Optional. Google Cloud KMS encryption key. Format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`
  final String? gcpKmsEncryptionKey;

  /// Creates a new [EncryptionKey].
  /// [gcpKmsEncryptionKey] Optional. Google Cloud KMS encryption key. Format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`
  EncryptionKey({
    this.gcpKmsEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gcpKmsEncryptionKeyValue = gcpKmsEncryptionKey;
    if (gcpKmsEncryptionKeyValue != null) {
      map['gcpKmsEncryptionKey'] = gcpKmsEncryptionKeyValue;
    }
    return map;
  }

  factory EncryptionKey.fromMap(Map<String, dynamic> map) {
    return EncryptionKey(
      gcpKmsEncryptionKey: map['gcpKmsEncryptionKey'] == null
          ? null
          : map['gcpKmsEncryptionKey'] as String,
    );
  }
}
