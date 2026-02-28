// ignore_for_file: unused_element, unnecessary_cast

/// Customer's encryption key.
class CustomerEncryptionKeyResponse {
  /// The name of the encryption key that is stored in Google Cloud KMS. For example: "kmsKeyName": "projects/kms_project_id/locations/region/keyRings/ key_region/cryptoKeys/key The fully-qualifed key name may be returned for resource GET requests. For example: "kmsKeyName": "projects/kms_project_id/locations/region/keyRings/ key_region/cryptoKeys/key /cryptoKeyVersions/1
  final String kmsKeyName;

  /// Creates a new [CustomerEncryptionKeyResponse].
  /// [kmsKeyName] The name of the encryption key that is stored in Google Cloud KMS. For example: "kmsKeyName": "projects/kms_project_id/locations/region/keyRings/ key_region/cryptoKeys/key The fully-qualifed key name may be returned for resource GET requests. For example: "kmsKeyName": "projects/kms_project_id/locations/region/keyRings/ key_region/cryptoKeys/key /cryptoKeyVersions/1
  CustomerEncryptionKeyResponse({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory CustomerEncryptionKeyResponse.fromMap(Map<String, dynamic> map) {
    return CustomerEncryptionKeyResponse(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
