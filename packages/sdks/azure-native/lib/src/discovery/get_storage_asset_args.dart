// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discovery_get_storage_asset_args_doc}
/// Arguments for getStorageAsset.
/// {@endtemplate}
/// {@macro pulumi_discovery_get_storage_asset_args_doc}
class GetStorageAssetArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the StorageAsset
  final pulumi.Input<String> storageAssetName;
  /// The name of the StorageContainer
  final pulumi.Input<String> storageContainerName;

  /// Creates a new [GetStorageAssetArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageAssetName] The name of the StorageAsset
  /// [storageContainerName] The name of the StorageContainer
  const GetStorageAssetArgs({
    required this.resourceGroupName,
    required this.storageAssetName,
    required this.storageContainerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'storageAssetName': storageAssetName,
      'storageContainerName': storageContainerName,
    };
  }

  factory GetStorageAssetArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageAssetArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageAssetName: pulumi.Input.fromValue(map['storageAssetName'] as String),
      storageContainerName: pulumi.Input.fromValue(map['storageContainerName'] as String),
    );
  }
}
