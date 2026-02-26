// ignore_for_file: unused_element, unnecessary_cast

/// Defined a customer managed encryption key that will be used to encrypt Backup artifacts.
class EncryptionKeyResponse2 {
  /// Optional. Google Cloud KMS encryption key. Format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`
  final String gcpKmsEncryptionKey;

  EncryptionKeyResponse2({
    required this.gcpKmsEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcpKmsEncryptionKey'] = gcpKmsEncryptionKey;
    return map;
  }

  factory EncryptionKeyResponse2.fromMap(Map<String, dynamic> map) {
    return EncryptionKeyResponse2(
      gcpKmsEncryptionKey: map['gcpKmsEncryptionKey'] as String,
    );
  }
}
