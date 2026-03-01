// ignore_for_file: unused_element, unnecessary_cast

class StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseKms {
  /// KMS key ARN.
  final String keyId;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseKms].
  /// [keyId] KMS key ARN.
  StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseKms({
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keyId': keyId};
  }

  factory StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseKms.fromMap(
    Map<String, dynamic> map,
  ) {
    return StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseKms(
      keyId: map['keyId'] as String,
    );
  }
}
