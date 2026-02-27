// ignore_for_file: unused_element, unnecessary_cast

/// Customer's encryption key.
class CustomerEncryptionKeyResponseTpuV2alpha1 {
  /// The name of the encryption key that is stored in Google Cloud KMS. For example: "kmsKeyName": "projects/kms_project_id/locations/region/keyRings/ key_region/cryptoKeys/key The fully-qualifed key name may be returned for resource GET requests. For example: "kmsKeyName": "projects/kms_project_id/locations/region/keyRings/ key_region/cryptoKeys/key /cryptoKeyVersions/1
  final String kmsKeyName;

  CustomerEncryptionKeyResponseTpuV2alpha1({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory CustomerEncryptionKeyResponseTpuV2alpha1.fromMap(
      Map<String, dynamic> map) {
    return CustomerEncryptionKeyResponseTpuV2alpha1(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
