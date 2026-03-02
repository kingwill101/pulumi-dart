// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseKms {
  /// KMS key ARN.
  final pulumi.Input<String> keyId;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseKms].
  /// [keyId] KMS key ARN.
  StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseKms({
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': keyId,
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseKms.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseKms(
      keyId: (map['keyId'] as String).input(),
    );
  }
}

