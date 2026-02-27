// ignore_for_file: unused_element, unnecessary_cast

/// EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
class EncryptionConfigResponseAlloydbV1beta {
  /// The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]
  final String kmsKeyName;

  EncryptionConfigResponseAlloydbV1beta({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory EncryptionConfigResponseAlloydbV1beta.fromMap(
      Map<String, dynamic> map) {
    return EncryptionConfigResponseAlloydbV1beta(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
