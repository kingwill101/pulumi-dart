// ignore_for_file: unused_element, unnecessary_cast

/// EncryptionConfig describes the encryption config of a cluster that is encrypted with a CMEK (customer-managed encryption key).
class EncryptionConfigResponseDatamigrationV1 {
  /// The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]
  final String kmsKeyName;

  EncryptionConfigResponseDatamigrationV1({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory EncryptionConfigResponseDatamigrationV1.fromMap(
      Map<String, dynamic> map) {
    return EncryptionConfigResponseDatamigrationV1(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
