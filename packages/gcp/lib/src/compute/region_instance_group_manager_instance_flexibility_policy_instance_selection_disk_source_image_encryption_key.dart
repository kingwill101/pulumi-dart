// ignore_for_file: unused_element, unnecessary_cast

class RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceImageEncryptionKey {
  /// , The self link of the encryption key that is stored in Google Cloud KMS. Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.
  /// - - -
  final String? kmsKeySelfLink;

  /// , The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  final String? kmsKeyServiceAccount;

  /// , Specifies a 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to either encrypt or decrypt this resource. Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.
  final String? rawKey;

  /// , Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.
  final String? rsaEncryptedKey;

  /// Creates a new [RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceImageEncryptionKey].
  /// [kmsKeySelfLink] , The self link of the encryption key that is stored in Google Cloud KMS. Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.
  /// [kmsKeyServiceAccount] , The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  /// [rawKey] , Specifies a 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to either encrypt or decrypt this resource. Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.
  /// [rsaEncryptedKey] , Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.
  RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceImageEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeySelfLinkValue = kmsKeySelfLink;
    if (kmsKeySelfLinkValue != null) {
      map['kmsKeySelfLink'] = kmsKeySelfLinkValue;
    }
    final kmsKeyServiceAccountValue = kmsKeyServiceAccount;
    if (kmsKeyServiceAccountValue != null) {
      map['kmsKeyServiceAccount'] = kmsKeyServiceAccountValue;
    }
    final rawKeyValue = rawKey;
    if (rawKeyValue != null) {
      map['rawKey'] = rawKeyValue;
    }
    final rsaEncryptedKeyValue = rsaEncryptedKey;
    if (rsaEncryptedKeyValue != null) {
      map['rsaEncryptedKey'] = rsaEncryptedKeyValue;
    }
    return map;
  }

  factory RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceImageEncryptionKey.fromMap(
      Map<String, dynamic> map) {
    return RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceImageEncryptionKey(
      kmsKeySelfLink: map['kmsKeySelfLink'] == null
          ? null
          : map['kmsKeySelfLink'] as String,
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] == null
          ? null
          : map['kmsKeyServiceAccount'] as String,
      rawKey: map['rawKey'] == null ? null : map['rawKey'] as String,
      rsaEncryptedKey: map['rsaEncryptedKey'] == null
          ? null
          : map['rsaEncryptedKey'] as String,
    );
  }
}
