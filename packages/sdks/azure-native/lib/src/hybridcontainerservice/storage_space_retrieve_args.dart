// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_spaces_extended_location.dart';
import 'storage_spaces_properties.dart';

/// {@template pulumi_hybridcontainerservice_storage_space_retrieve_args_doc}
/// The set of arguments for StorageSpaceRetrieve.
/// {@endtemplate}
/// {@macro pulumi_hybridcontainerservice_storage_space_retrieve_args_doc}
class StorageSpaceRetrieveArgs {
  final pulumi.Input<StorageSpacesExtendedLocation>? extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// HybridAKSStorageSpec defines the desired state of HybridAKSStorage
  final pulumi.Input<StorageSpacesProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Parameter for the name of the storage object
  final pulumi.Input<String>? storageSpacesName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [StorageSpaceRetrieveArgs].
  /// [extendedLocation] Optional.
  /// [location] The geo-location where the resource lives
  /// [properties] HybridAKSStorageSpec defines the desired state of HybridAKSStorage
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageSpacesName] Parameter for the name of the storage object
  /// [tags] Resource tags.
  StorageSpaceRetrieveArgs({
    this.extendedLocation,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.storageSpacesName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<StorageSpacesExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<StorageSpacesProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'storageSpacesName': ?storageSpacesName,
      'tags': ?tags,
    };
  }

  factory StorageSpaceRetrieveArgs.fromMap(Map<String, dynamic> map) {
    return StorageSpaceRetrieveArgs(
      extendedLocation: map['extendedLocation'] == null ? null : (StorageSpacesExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      properties: map['properties'] == null ? null : (StorageSpacesProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storageSpacesName: map['storageSpacesName'] == null ? null : (map['storageSpacesName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

