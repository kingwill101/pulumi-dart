// ignore_for_file: unused_element, unnecessary_cast

class GetRegionInstanceTemplateDiskDiskEncryptionKey {
  /// The self link of the encryption key that is stored in Google Cloud KMS
  final String kmsKeySelfLink;

  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  final String kmsKeyServiceAccount;

  /// Creates a new [GetRegionInstanceTemplateDiskDiskEncryptionKey].
  /// [kmsKeySelfLink] The self link of the encryption key that is stored in Google Cloud KMS
  /// [kmsKeyServiceAccount] The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  GetRegionInstanceTemplateDiskDiskEncryptionKey({
    required this.kmsKeySelfLink,
    required this.kmsKeyServiceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeySelfLink': kmsKeySelfLink,
      'kmsKeyServiceAccount': kmsKeyServiceAccount,
    };
  }

  factory GetRegionInstanceTemplateDiskDiskEncryptionKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionInstanceTemplateDiskDiskEncryptionKey(
      kmsKeySelfLink: map['kmsKeySelfLink'] as String,
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] as String,
    );
  }
}
