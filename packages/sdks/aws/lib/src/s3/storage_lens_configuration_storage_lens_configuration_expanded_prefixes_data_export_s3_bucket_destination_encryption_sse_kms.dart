// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportS3BucketDestinationEncryptionSseKms {
  /// KMS key ARN.
  final pulumi.Input<String> keyId;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportS3BucketDestinationEncryptionSseKms].
  /// [keyId] KMS key ARN.
  const StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportS3BucketDestinationEncryptionSseKms({
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': keyId,
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportS3BucketDestinationEncryptionSseKms.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportS3BucketDestinationEncryptionSseKms(
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
    );
  }
}
