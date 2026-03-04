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
      'extendedLocation':
          ?pulumi.Input.mapOptionalInputValue<
            ExtendedLocation,
            Map<String, dynamic>
          >(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'path': path,
      'resourceGroupName': resourceGroupName,
      'storageContainerName': ?storageContainerName,
      'tags': ?tags,
    };
  }

  factory StorageContainerArgs.fromMap(Map<String, dynamic> map) {
    return StorageContainerArgs(
      extendedLocation: (() {
        final guardedValue = map['extendedLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExtendedLocation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      path: pulumi.Input.fromValue(map['path'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      storageContainerName: (() {
        final guardedValue = map['storageContainerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
