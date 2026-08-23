// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_net_app_files_store_response.dart';

/// Storage Container properties
class StorageContainerPropertiesResponse {
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Storage store properties
  final pulumi.Input<AzureNetAppFilesStoreResponse> storageStore;

  /// Creates a new [StorageContainerPropertiesResponse].
  /// [provisioningState] The status of the last operation.
  /// [storageStore] Storage store properties
  const StorageContainerPropertiesResponse({
    required this.provisioningState,
    required this.storageStore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'storageStore': pulumi.Input.mapInputValue<AzureNetAppFilesStoreResponse, Map<String, dynamic>>(storageStore, (value) => value.toMap()),
    };
  }

  factory StorageContainerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StorageContainerPropertiesResponse(
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      storageStore: pulumi.Input.fromValue(AzureNetAppFilesStoreResponse.fromMap((map['storageStore']! as Map).cast<String, dynamic>())),
    );
  }
}
