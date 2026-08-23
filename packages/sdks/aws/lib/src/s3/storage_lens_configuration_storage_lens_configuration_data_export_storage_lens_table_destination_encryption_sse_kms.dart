// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestinationEncryptionSseKms {
  /// KMS key ARN.
  final pulumi.Input<String> keyId;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestinationEncryptionSseKms].
  /// [keyId] KMS key ARN.
  const StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestinationEncryptionSseKms({
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': keyId,
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestinationEncryptionSseKms.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestinationEncryptionSseKms(
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
    );
  }
}
