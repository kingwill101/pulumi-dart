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
    pulumi.Output<ExtendedLocation>? extendedLocation,
    pulumi.Output<String>? location,
    required pulumi.Output<String> path,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? storageContainerName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      path = pulumi.Input.asInput<String>(path),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageContainerName = pulumi.Input.asOptionalInput<String>(storageContainerName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      path: pulumi.Output.create<String>(map['path'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageContainerName: map['storageContainerName'] == null ? null : pulumi.Output.create<String>(map['storageContainerName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

