// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_azurestackhci_storage_container_args_doc}
/// The set of arguments for StorageContainer.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_storage_container_args_doc}
class StorageContainerArgs {
  /// The extendedLocation of the resource.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Path of the storage container on the disk
  final pulumi.Input<String> path;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the storage container
  final pulumi.Input<String>? storageContainerName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [StorageContainerArgs].
  /// [extendedLocation] The extendedLocation of the resource.
  /// [location] The geo-location where the resource lives
  /// [path] Path of the storage container on the disk
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageContainerName] Name of the storage container
  /// [tags] Resource tags.
  StorageContainerArgs({
    this.extendedLocation,
    this.location,
    required this.path,
    required this.resourceGroupName,
    this.storageContainerName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'path': path,
      'resourceGroupName': resourceGroupName,
      'storageContainerName': ?storageContainerName,
      'tags': ?tags,
    };
  }

  factory StorageContainerArgs.fromMap(Map<String, dynamic> map) {
    return StorageContainerArgs(
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      path: (map['path'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storageContainerName: map['storageContainerName'] == null ? null : (map['storageContainerName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

