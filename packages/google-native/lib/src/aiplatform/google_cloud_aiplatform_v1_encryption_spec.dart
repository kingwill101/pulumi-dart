// ignore_for_file: unused_element, unnecessary_cast

/// Represents a customer-managed encryption key spec that can be applied to a top-level resource.
class GoogleCloudAiplatformV1EncryptionSpec {
  /// The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. The key needs to be in the same region as where the compute resource is created.
  final String kmsKeyName;

  /// Creates a new [GoogleCloudAiplatformV1EncryptionSpec].
  /// [kmsKeyName] The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. The key needs to be in the same region as where the compute resource is created.
  GoogleCloudAiplatformV1EncryptionSpec({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory GoogleCloudAiplatformV1EncryptionSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1EncryptionSpec(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
