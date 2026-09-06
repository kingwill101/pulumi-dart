// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_container_properties.dart';

/// {@template pulumi_discovery_storage_container_args_doc}
/// The set of arguments for StorageContainer.
/// {@endtemplate}
/// {@macro pulumi_discovery_storage_container_args_doc}
class StorageContainerArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<StorageContainerProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the StorageContainer
  final pulumi.Input<String?>? storageContainerName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [StorageContainerArgs].
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageContainerName] The name of the StorageContainer
  /// [tags] Resource tags.
  const StorageContainerArgs({
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.storageContainerName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<StorageContainerProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'storageContainerName': ?storageContainerName,
      'tags': ?tags,
    };
  }

  factory StorageContainerArgs.fromMap(Map<String, dynamic> map) {
    return StorageContainerArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageContainerProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageContainerName: (() { final guardedValue = map['storageContainerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
