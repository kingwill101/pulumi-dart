// ignore_for_file: unused_element, unnecessary_cast

class AiReasoningEngineEncryptionSpec {
  /// Required. The Cloud KMS resource identifier of the customer managed
  /// encryption key used to protect a resource. Has the form:
  /// projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key.
  /// The key needs to be in the same region as where the compute resource
  /// is created.
  final String kmsKeyName;

  AiReasoningEngineEncryptionSpec({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory AiReasoningEngineEncryptionSpec.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineEncryptionSpec(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
