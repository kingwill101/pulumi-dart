// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestinationEncryptionSseKms {
  /// KMS key ARN.
  final pulumi.Input<String> keyId;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestinationEncryptionSseKms].
  /// [keyId] KMS key ARN.
  const StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestinationEncryptionSseKms({
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': keyId,
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestinationEncryptionSseKms.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestinationEncryptionSseKms(
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
    );
  }
}
