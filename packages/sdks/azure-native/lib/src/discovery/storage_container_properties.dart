// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_net_app_files_store.dart';

/// Storage Container properties
class StorageContainerProperties {
  /// Storage store properties
  final pulumi.Input<AzureNetAppFilesStore> storageStore;

  /// Creates a new [StorageContainerProperties].
  /// [storageStore] Storage store properties
  const StorageContainerProperties({
    required this.storageStore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageStore': pulumi.Input.mapInputValue<AzureNetAppFilesStore, Map<String, dynamic>>(storageStore, (value) => value.toMap()),
    };
  }

  factory StorageContainerProperties.fromMap(Map<String, dynamic> map) {
    return StorageContainerProperties(
      storageStore: pulumi.Input.fromValue(AzureNetAppFilesStore.fromMap((map['storageStore']! as Map).cast<String, dynamic>())),
    );
  }
}
