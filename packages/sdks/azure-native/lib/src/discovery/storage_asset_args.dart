// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_asset_properties.dart';

/// {@template pulumi_discovery_storage_asset_args_doc}
/// The set of arguments for StorageAsset.
/// {@endtemplate}
/// {@macro pulumi_discovery_storage_asset_args_doc}
class StorageAssetArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<StorageAssetProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the StorageAsset
  final pulumi.Input<String?>? storageAssetName;
  /// The name of the StorageContainer
  final pulumi.Input<String> storageContainerName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [StorageAssetArgs].
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageAssetName] The name of the StorageAsset
  /// [storageContainerName] The name of the StorageContainer
  /// [tags] Resource tags.
  const StorageAssetArgs({
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.storageAssetName,
    required this.storageContainerName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<StorageAssetProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'storageAssetName': ?storageAssetName,
      'storageContainerName': storageContainerName,
      'tags': ?tags,
    };
  }

  factory StorageAssetArgs.fromMap(Map<String, dynamic> map) {
    return StorageAssetArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageAssetProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageAssetName: (() { final guardedValue = map['storageAssetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageContainerName: pulumi.Input.fromValue(map['storageContainerName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
