// ignore_for_file: unused_element, unnecessary_cast

/// EncryptionConfig describes the encryption config of a cluster that is encrypted with a CMEK (customer-managed encryption key).
class EncryptionConfigResponse {
  /// The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]
  final String kmsKeyName;

  /// Creates a new [EncryptionConfigResponse].
  /// [kmsKeyName] The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]
  EncryptionConfigResponse({required this.kmsKeyName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyName': kmsKeyName};
  }

  factory EncryptionConfigResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigResponse(kmsKeyName: map['kmsKeyName'] as String);
  }
}
