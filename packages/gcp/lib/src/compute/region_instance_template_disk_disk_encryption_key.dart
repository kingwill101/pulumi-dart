// ignore_for_file: unused_element, unnecessary_cast

class RegionInstanceTemplateDiskDiskEncryptionKey {
  /// The self link of the encryption key that is stored in Google Cloud KMS
  final String? kmsKeySelfLink;

  /// The service account being used for the
  /// encryption request for the given KMS key. If absent, the Compute Engine
  /// default service account is used.
  final String? kmsKeyServiceAccount;

  /// Creates a new [RegionInstanceTemplateDiskDiskEncryptionKey].
  /// [kmsKeySelfLink] The self link of the encryption key that is stored in Google Cloud KMS
  /// [kmsKeyServiceAccount] The service account being used for the
  RegionInstanceTemplateDiskDiskEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeySelfLink': ?kmsKeySelfLink,
      'kmsKeyServiceAccount': ?kmsKeyServiceAccount,
    };
  }

  factory RegionInstanceTemplateDiskDiskEncryptionKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionInstanceTemplateDiskDiskEncryptionKey(
      kmsKeySelfLink: map['kmsKeySelfLink'] == null
          ? null
          : map['kmsKeySelfLink'] as String,
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] == null
          ? null
          : map['kmsKeyServiceAccount'] as String,
    );
  }
}
