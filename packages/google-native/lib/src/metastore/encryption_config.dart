// ignore_for_file: unused_element, unnecessary_cast

/// Encryption settings for the service.
class EncryptionConfig {
  /// The fully qualified customer provided Cloud KMS key name to use for customer data encryption, in the following form:projects/{project_number}/locations/{location_id}/keyRings/{key_ring_id}/cryptoKeys/{crypto_key_id}.
  final String? kmsKey;

  /// Creates a new [EncryptionConfig].
  /// [kmsKey] The fully qualified customer provided Cloud KMS key name to use for customer data encryption, in the following form:projects/{project_number}/locations/{location_id}/keyRings/{key_ring_id}/cryptoKeys/{crypto_key_id}.
  EncryptionConfig({this.kmsKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKey': ?kmsKey};
  }

  factory EncryptionConfig.fromMap(Map<String, dynamic> map) {
    return EncryptionConfig(
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
    );
  }
}
