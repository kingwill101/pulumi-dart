// ignore_for_file: unused_element, unnecessary_cast

/// Defined a customer managed encryption key that will be used to encrypt Backup artifacts.
class EncryptionKeyResponse {
  /// Optional. Google Cloud KMS encryption key. Format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`
  final String gcpKmsEncryptionKey;

  /// Creates a new [EncryptionKeyResponse].
  /// [gcpKmsEncryptionKey] Optional. Google Cloud KMS encryption key. Format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`
  EncryptionKeyResponse({
    required this.gcpKmsEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcpKmsEncryptionKey'] = gcpKmsEncryptionKey;
    return map;
  }

  factory EncryptionKeyResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionKeyResponse(
      gcpKmsEncryptionKey: map['gcpKmsEncryptionKey'] as String,
    );
  }
}
