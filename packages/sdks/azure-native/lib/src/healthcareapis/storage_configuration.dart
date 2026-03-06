// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration of connected storage
class StorageConfiguration {
  /// The filesystem name of connected storage account.
  final pulumi.Input<String>? fileSystemName;
  /// The resource id of connected storage account.
  final pulumi.Input<String>? storageResourceId;

  /// Creates a new [StorageConfiguration].
  /// [fileSystemName] The filesystem name of connected storage account.
  /// [storageResourceId] The resource id of connected storage account.
  const StorageConfiguration({
    this.fileSystemName,
    this.storageResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemName': ?fileSystemName,
      'storageResourceId': ?storageResourceId,
    };
  }

  factory StorageConfiguration.fromMap(Map<String, dynamic> map) {
    return StorageConfiguration(
      fileSystemName: (() { final guardedValue = map['fileSystemName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageResourceId: (() { final guardedValue = map['storageResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

