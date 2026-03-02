// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration of connected storage
class StorageConfigurationResponse {
  /// The filesystem name of connected storage account.
  final pulumi.Input<String>? fileSystemName;
  /// The resource id of connected storage account.
  final pulumi.Input<String>? storageResourceId;

  /// Creates a new [StorageConfigurationResponse].
  /// [fileSystemName] The filesystem name of connected storage account.
  /// [storageResourceId] The resource id of connected storage account.
  StorageConfigurationResponse({
    this.fileSystemName,
    this.storageResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemName': ?fileSystemName,
      'storageResourceId': ?storageResourceId,
    };
  }

  factory StorageConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return StorageConfigurationResponse(
      fileSystemName: map['fileSystemName'] == null ? null : (map['fileSystemName']! as String).input(),
      storageResourceId: map['storageResourceId'] == null ? null : (map['storageResourceId']! as String).input(),
    );
  }
}

