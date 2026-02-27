// ignore_for_file: unused_element, unnecessary_cast

/// Represents a custom encryption key configuration that can be applied to a resource. This will encrypt all disks in Virtual Machine.
class EncryptionConfigResponseNotebooksV1 {
  /// The Cloud KMS resource identifier of the customer-managed encryption key used to protect a resource, such as a disks. It has the following format: `projects/{PROJECT_ID}/locations/{REGION}/keyRings/{KEY_RING_NAME}/cryptoKeys/{KEY_NAME}`
  final String kmsKey;

  EncryptionConfigResponseNotebooksV1({
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKey'] = kmsKey;
    return map;
  }

  factory EncryptionConfigResponseNotebooksV1.fromMap(
      Map<String, dynamic> map) {
    return EncryptionConfigResponseNotebooksV1(
      kmsKey: map['kmsKey'] as String,
    );
  }
}
