// ignore_for_file: unused_element, unnecessary_cast

class AiTensorboardEncryptionSpec {
  /// The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource.
  /// Has the form: projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key. The key needs to be in the same region as where the resource is created.
  final String kmsKeyName;

  /// Creates a new [AiTensorboardEncryptionSpec].
  /// [kmsKeyName] The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource.
  AiTensorboardEncryptionSpec({required this.kmsKeyName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyName': kmsKeyName};
  }

  factory AiTensorboardEncryptionSpec.fromMap(Map<String, dynamic> map) {
    return AiTensorboardEncryptionSpec(kmsKeyName: map['kmsKeyName'] as String);
  }
}
