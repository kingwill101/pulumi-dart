// ignore_for_file: unused_element, unnecessary_cast


/// Represents a custom encryption key configuration that can be applied to a resource.
class GoogleCloudMlV1EncryptionConfigResponse {
  /// The Cloud KMS resource identifier of the customer-managed encryption key used to protect a resource, such as a training job. It has the following format: `projects/{PROJECT_ID}/locations/{REGION}/keyRings/{KEY_RING_NAME}/cryptoKeys/{KEY_NAME}`
  final String kmsKeyName;

  /// Creates a new [GoogleCloudMlV1EncryptionConfigResponse].
  /// [kmsKeyName] The Cloud KMS resource identifier of the customer-managed encryption key used to protect a resource, such as a training job. It has the following format: `projects/{PROJECT_ID}/locations/{REGION}/keyRings/{KEY_RING_NAME}/cryptoKeys/{KEY_NAME}`
  GoogleCloudMlV1EncryptionConfigResponse({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory GoogleCloudMlV1EncryptionConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1EncryptionConfigResponse(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}

