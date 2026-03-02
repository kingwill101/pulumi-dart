// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';
import 'storage_properties.dart';

/// {@template pulumi_azurelargeinstance_azure_large_storage_instance_args_doc}
/// The set of arguments for AzureLargeStorageInstance.
/// {@endtemplate}
/// {@macro pulumi_azurelargeinstance_azure_large_storage_instance_args_doc}
class AzureLargeStorageInstanceArgs {
  /// Name of the AzureLargeStorageInstance.
  final pulumi.Input<String>? azureLargeStorageInstanceName;
  /// Specifies the AzureLargeStorageInstance unique ID.
  final pulumi.Input<String>? azureLargeStorageInstanceUniqueIdentifier;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the storage properties for the AzureLargeStorage instance.
  final pulumi.Input<StorageProperties>? storageProperties;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AzureLargeStorageInstanceArgs].
  /// [azureLargeStorageInstanceName] Name of the AzureLargeStorageInstance.
  /// [azureLargeStorageInstanceUniqueIdentifier] Specifies the AzureLargeStorageInstance unique ID.
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageProperties] Specifies the storage properties for the AzureLargeStorage instance.
  /// [tags] Resource tags.
  AzureLargeStorageInstanceArgs({
    this.azureLargeStorageInstanceName,
    this.azureLargeStorageInstanceUniqueIdentifier,
    this.identity,
    this.location,
    required this.resourceGroupName,
    this.storageProperties,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureLargeStorageInstanceName': ?azureLargeStorageInstanceName,
      'azureLargeStorageInstanceUniqueIdentifier': ?azureLargeStorageInstanceUniqueIdentifier,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'storageProperties': ?pulumi.Input.mapOptionalInputValue<StorageProperties, Map<String, dynamic>>(storageProperties, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory AzureLargeStorageInstanceArgs.fromMap(Map<String, dynamic> map) {
    return AzureLargeStorageInstanceArgs(
      azureLargeStorageInstanceName: map['azureLargeStorageInstanceName'] == null ? null : (map['azureLargeStorageInstanceName'] as String).input(),
      azureLargeStorageInstanceUniqueIdentifier: map['azureLargeStorageInstanceUniqueIdentifier'] == null ? null : (map['azureLargeStorageInstanceUniqueIdentifier'] as String).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storageProperties: map['storageProperties'] == null ? null : (StorageProperties.fromMap((map['storageProperties'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

