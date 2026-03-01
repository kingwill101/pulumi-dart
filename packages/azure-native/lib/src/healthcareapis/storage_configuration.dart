// ignore_for_file: unused_element, unnecessary_cast


/// The configuration of connected storage
class StorageConfiguration {
  /// The filesystem name of connected storage account.
  final String? fileSystemName;
  /// The resource id of connected storage account.
  final String? storageResourceId;

  /// Creates a new [StorageConfiguration].
  /// [fileSystemName] The filesystem name of connected storage account.
  /// [storageResourceId] The resource id of connected storage account.
  StorageConfiguration({
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
      fileSystemName: map['fileSystemName'] == null ? null : map['fileSystemName'] as String,
      storageResourceId: map['storageResourceId'] == null ? null : map['storageResourceId'] as String,
    );
  }
}

