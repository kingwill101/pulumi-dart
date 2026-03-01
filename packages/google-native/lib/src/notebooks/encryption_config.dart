// ignore_for_file: unused_element, unnecessary_cast

/// Represents a custom encryption key configuration that can be applied to a resource. This will encrypt all disks in Virtual Machine.
class EncryptionConfig {
  /// The Cloud KMS resource identifier of the customer-managed encryption key used to protect a resource, such as a disks. It has the following format: `projects/{PROJECT_ID}/locations/{REGION}/keyRings/{KEY_RING_NAME}/cryptoKeys/{KEY_NAME}`
  final String? kmsKey;

  /// Creates a new [EncryptionConfig].
  /// [kmsKey] The Cloud KMS resource identifier of the customer-managed encryption key used to protect a resource, such as a disks. It has the following format: `projects/{PROJECT_ID}/locations/{REGION}/keyRings/{KEY_RING_NAME}/cryptoKeys/{KEY_NAME}`
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
