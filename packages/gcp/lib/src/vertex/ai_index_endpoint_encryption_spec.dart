// ignore_for_file: unused_element, unnecessary_cast

class AiIndexEndpointEncryptionSpec {
  /// Required. The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. The key needs to be in the same region as where the compute resource is created.
  final String kmsKeyName;

  /// Creates a new [AiIndexEndpointEncryptionSpec].
  /// [kmsKeyName] Required. The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. The key needs to be in the same region as where the compute resource is created.
  AiIndexEndpointEncryptionSpec({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory AiIndexEndpointEncryptionSpec.fromMap(Map<String, dynamic> map) {
    return AiIndexEndpointEncryptionSpec(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
