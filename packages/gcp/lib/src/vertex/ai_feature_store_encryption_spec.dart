// ignore_for_file: unused_element, unnecessary_cast

class AiFeatureStoreEncryptionSpec {
  /// The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource. Has the form: projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key. The key needs to be in the same region as where the compute resource is created.
  final String kmsKeyName;

  /// Creates a new [AiFeatureStoreEncryptionSpec].
  /// [kmsKeyName] The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource. Has the form: projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key. The key needs to be in the same region as where the compute resource is created.
  AiFeatureStoreEncryptionSpec({required this.kmsKeyName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyName': kmsKeyName};
  }

  factory AiFeatureStoreEncryptionSpec.fromMap(Map<String, dynamic> map) {
    return AiFeatureStoreEncryptionSpec(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
