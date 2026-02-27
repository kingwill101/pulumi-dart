// ignore_for_file: unused_element, unnecessary_cast

/// Encryption settings for the service.
class EncryptionConfigResponseMetastoreV1 {
  /// The fully qualified customer provided Cloud KMS key name to use for customer data encryption, in the following form:projects/{project_number}/locations/{location_id}/keyRings/{key_ring_id}/cryptoKeys/{crypto_key_id}.
  final String kmsKey;

  EncryptionConfigResponseMetastoreV1({
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKey'] = kmsKey;
    return map;
  }

  factory EncryptionConfigResponseMetastoreV1.fromMap(
      Map<String, dynamic> map) {
    return EncryptionConfigResponseMetastoreV1(
      kmsKey: map['kmsKey'] as String,
    );
  }
}
