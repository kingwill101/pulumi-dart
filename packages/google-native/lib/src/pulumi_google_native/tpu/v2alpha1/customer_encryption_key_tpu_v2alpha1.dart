// ignore_for_file: unused_element, unnecessary_cast

/// Customer's encryption key.
class CustomerEncryptionKeyTpuV2alpha1 {
  /// The name of the encryption key that is stored in Google Cloud KMS. For example: "kmsKeyName": "projects/kms_project_id/locations/region/keyRings/ key_region/cryptoKeys/key The fully-qualifed key name may be returned for resource GET requests. For example: "kmsKeyName": "projects/kms_project_id/locations/region/keyRings/ key_region/cryptoKeys/key /cryptoKeyVersions/1
  final String? kmsKeyName;

  CustomerEncryptionKeyTpuV2alpha1({
    this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    return map;
  }

  factory CustomerEncryptionKeyTpuV2alpha1.fromMap(Map<String, dynamic> map) {
    return CustomerEncryptionKeyTpuV2alpha1(
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
    );
  }
}
