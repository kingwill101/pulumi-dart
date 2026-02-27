// ignore_for_file: unused_element, unnecessary_cast

/// Encryption settings for the service.
class EncryptionConfigMetastoreV1alpha {
  /// The fully qualified customer provided Cloud KMS key name to use for customer data encryption, in the following form:projects/{project_number}/locations/{location_id}/keyRings/{key_ring_id}/cryptoKeys/{crypto_key_id}.
  final String? kmsKey;

  EncryptionConfigMetastoreV1alpha({
    this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    return map;
  }

  factory EncryptionConfigMetastoreV1alpha.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigMetastoreV1alpha(
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
    );
  }
}
