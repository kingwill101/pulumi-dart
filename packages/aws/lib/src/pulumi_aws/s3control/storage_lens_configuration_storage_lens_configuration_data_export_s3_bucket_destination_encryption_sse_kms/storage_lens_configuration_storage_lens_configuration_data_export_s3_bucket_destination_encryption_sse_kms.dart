// ignore_for_file: unused_element, unnecessary_cast

class StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseKms {
  /// KMS key ARN.
  final String keyId;

  StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseKms({
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyId'] = keyId;
    return map;
  }

  factory StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseKms.fromMap(
      Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseKms(
      keyId: map['keyId'] as String,
    );
  }
}
