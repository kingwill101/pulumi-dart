// ignore_for_file: unused_element, unnecessary_cast

class CaPoolEncryptionSpec {
  /// The resource name for an existing Cloud KMS key in the format
  /// `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final String? cloudKmsKey;

  /// Creates a new [CaPoolEncryptionSpec].
  /// [cloudKmsKey] The resource name for an existing Cloud KMS key in the format
  CaPoolEncryptionSpec({
    this.cloudKmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudKmsKeyValue = cloudKmsKey;
    if (cloudKmsKeyValue != null) {
      map['cloudKmsKey'] = cloudKmsKeyValue;
    }
    return map;
  }

  factory CaPoolEncryptionSpec.fromMap(Map<String, dynamic> map) {
    return CaPoolEncryptionSpec(
      cloudKmsKey:
          map['cloudKmsKey'] == null ? null : map['cloudKmsKey'] as String,
    );
  }
}
