// ignore_for_file: unused_element, unnecessary_cast

/// Represents a custom encryption key configuration that can be applied to a resource. This will encrypt all disks in Virtual Machine.
class EncryptionConfigResponse {
  /// The Cloud KMS resource identifier of the customer-managed encryption key used to protect a resource, such as a disks. It has the following format: `projects/{PROJECT_ID}/locations/{REGION}/keyRings/{KEY_RING_NAME}/cryptoKeys/{KEY_NAME}`
  final String kmsKey;

  /// Creates a new [EncryptionConfigResponse].
  /// [kmsKey] The Cloud KMS resource identifier of the customer-managed encryption key used to protect a resource, such as a disks. It has the following format: `projects/{PROJECT_ID}/locations/{REGION}/keyRings/{KEY_RING_NAME}/cryptoKeys/{KEY_NAME}`
  EncryptionConfigResponse({
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKey'] = kmsKey;
    return map;
  }

  factory EncryptionConfigResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigResponse(
      kmsKey: map['kmsKey'] as String,
    );
  }
}
