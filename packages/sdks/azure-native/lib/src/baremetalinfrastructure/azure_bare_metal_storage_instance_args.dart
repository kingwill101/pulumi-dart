// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_bare_metal_storage_instance_identity.dart';
import 'storage_properties.dart';

/// {@template pulumi_baremetalinfrastructure_azure_bare_metal_storage_instance_args_doc}
/// The set of arguments for AzureBareMetalStorageInstance.
/// {@endtemplate}
/// {@macro pulumi_baremetalinfrastructure_azure_bare_metal_storage_instance_args_doc}
class AzureBareMetalStorageInstanceArgs {
  /// Name of the Azure Bare Metal Storage Instance, also known as the ResourceName.
  final pulumi.Input<String>? azureBareMetalStorageInstanceName;
  /// Specifies the AzureBareMetaStorageInstance unique ID.
  final pulumi.Input<String>? azureBareMetalStorageInstanceUniqueIdentifier;
  /// The identity of Azure Bare Metal Storage Instance, if configured.
  final pulumi.Input<AzureBareMetalStorageInstanceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the storage properties for the AzureBareMetalStorage instance.
  final pulumi.Input<StorageProperties>? storageProperties;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AzureBareMetalStorageInstanceArgs].
  /// [azureBareMetalStorageInstanceName] Name of the Azure Bare Metal Storage Instance, also known as the ResourceName.
  /// [azureBareMetalStorageInstanceUniqueIdentifier] Specifies the AzureBareMetaStorageInstance unique ID.
  /// [identity] The identity of Azure Bare Metal Storage Instance, if configured.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageProperties] Specifies the storage properties for the AzureBareMetalStorage instance.
  /// [tags] Resource tags.
  AzureBareMetalStorageInstanceArgs({
    this.azureBareMetalStorageInstanceName,
    this.azureBareMetalStorageInstanceUniqueIdentifier,
    this.identity,
    this.location,
    required this.resourceGroupName,
    this.storageProperties,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBareMetalStorageInstanceName': ?azureBareMetalStorageInstanceName,
      'azureBareMetalStorageInstanceUniqueIdentifier': ?azureBareMetalStorageInstanceUniqueIdentifier,
      'identity': ?pulumi.Input.mapOptionalInputValue<AzureBareMetalStorageInstanceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'storageProperties': ?pulumi.Input.mapOptionalInputValue<StorageProperties, Map<String, dynamic>>(storageProperties, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory AzureBareMetalStorageInstanceArgs.fromMap(Map<String, dynamic> map) {
    return AzureBareMetalStorageInstanceArgs(
      azureBareMetalStorageInstanceName: map['azureBareMetalStorageInstanceName'] == null ? null : (map['azureBareMetalStorageInstanceName']! as String).input(),
      azureBareMetalStorageInstanceUniqueIdentifier: map['azureBareMetalStorageInstanceUniqueIdentifier'] == null ? null : (map['azureBareMetalStorageInstanceUniqueIdentifier']! as String).input(),
      identity: map['identity'] == null ? null : (AzureBareMetalStorageInstanceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storageProperties: map['storageProperties'] == null ? null : (StorageProperties.fromMap((map['storageProperties']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

