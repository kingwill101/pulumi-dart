// ignore_for_file: unused_element, unnecessary_cast

/// Defined a customer managed encryption key that will be used to encrypt Backup artifacts.
class EncryptionKeyGkebackupV1 {
  /// Optional. Google Cloud KMS encryption key. Format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`
  final String? gcpKmsEncryptionKey;

  EncryptionKeyGkebackupV1({
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

  factory EncryptionKeyGkebackupV1.fromMap(Map<String, dynamic> map) {
    return EncryptionKeyGkebackupV1(
      gcpKmsEncryptionKey: map['gcpKmsEncryptionKey'] == null
          ? null
          : map['gcpKmsEncryptionKey'] as String,
    );
  }
}
