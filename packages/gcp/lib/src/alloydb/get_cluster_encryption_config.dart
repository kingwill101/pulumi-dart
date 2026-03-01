// ignore_for_file: unused_element, unnecessary_cast

class GetClusterEncryptionConfig {
  /// The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME].
  final String kmsKeyName;

  /// Creates a new [GetClusterEncryptionConfig].
  /// [kmsKeyName] The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME].
  GetClusterEncryptionConfig({required this.kmsKeyName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyName': kmsKeyName};
  }

  factory GetClusterEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterEncryptionConfig(kmsKeyName: map['kmsKeyName'] as String);
  }
}
