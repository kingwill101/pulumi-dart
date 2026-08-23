// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discovery_get_storage_container_args_doc}
/// Arguments for getStorageContainer.
/// {@endtemplate}
/// {@macro pulumi_discovery_get_storage_container_args_doc}
class GetStorageContainerArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the StorageContainer
  final pulumi.Input<String> storageContainerName;

  /// Creates a new [GetStorageContainerArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageContainerName] The name of the StorageContainer
  const GetStorageContainerArgs({
    required this.resourceGroupName,
    required this.storageContainerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'storageContainerName': storageContainerName,
    };
  }

  factory GetStorageContainerArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageContainerArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageContainerName: pulumi.Input.fromValue(map['storageContainerName'] as String),
    );
  }
}
