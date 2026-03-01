// ignore_for_file: unused_element, unnecessary_cast

class DiskDiskEncryptionKey {
  /// The self link of the encryption key used to encrypt the disk. Also called KmsKeyName
  /// in the cloud console. Your project's Compute Engine System service account
  /// (`service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com`) must have
  /// `roles/cloudkms.cryptoKeyEncrypterDecrypter` to use this feature.
  /// See https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys
  final String? kmsKeySelfLink;

  /// The service account used for the encryption request for the given KMS key.
  /// If absent, the Compute Engine Service Agent service account is used.
  final String? kmsKeyServiceAccount;

  /// Specifies a 256-bit customer-supplied encryption key, encoded in
  /// RFC 4648 base64 to either encrypt or decrypt this resource.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? rawKey;

  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit
  /// customer-supplied encryption key to either encrypt or decrypt
  /// this resource. You can provide either the rawKey or the rsaEncryptedKey.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? rsaEncryptedKey;

  /// (Output)
  /// The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
  /// encryption key that protects this resource.
  final String? sha256;

  /// Creates a new [DiskDiskEncryptionKey].
  /// [kmsKeySelfLink] The self link of the encryption key used to encrypt the disk. Also called KmsKeyName
  /// [kmsKeyServiceAccount] The service account used for the encryption request for the given KMS key.
  /// [rawKey] Specifies a 256-bit customer-supplied encryption key, encoded in
  /// [rsaEncryptedKey] Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit
  /// [sha256] (Output)
  DiskDiskEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
    this.sha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeySelfLink': ?kmsKeySelfLink,
      'kmsKeyServiceAccount': ?kmsKeyServiceAccount,
      'rawKey': ?rawKey,
      'rsaEncryptedKey': ?rsaEncryptedKey,
      'sha256': ?sha256,
    };
  }

  factory DiskDiskEncryptionKey.fromMap(Map<String, dynamic> map) {
    return DiskDiskEncryptionKey(
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
      sha256: map['sha256'] == null ? null : map['sha256'] as String,
    );
  }
}
