// ignore_for_file: unused_element, unnecessary_cast

/// Represents a custom encryption key configuration that can be applied to a resource. This will encrypt all disks in Virtual Machine.
class EncryptionConfigNotebooksV1 {
  /// The Cloud KMS resource identifier of the customer-managed encryption key used to protect a resource, such as a disks. It has the following format: `projects/{PROJECT_ID}/locations/{REGION}/keyRings/{KEY_RING_NAME}/cryptoKeys/{KEY_NAME}`
  final String? kmsKey;

  EncryptionConfigNotebooksV1({
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

  factory EncryptionConfigNotebooksV1.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigNotebooksV1(
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
    );
  }
}
