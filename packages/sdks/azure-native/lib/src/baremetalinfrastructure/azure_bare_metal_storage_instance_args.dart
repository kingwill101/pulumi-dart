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
      azureBareMetalStorageInstanceName: (() { final guardedValue = map['azureBareMetalStorageInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureBareMetalStorageInstanceUniqueIdentifier: (() { final guardedValue = map['azureBareMetalStorageInstanceUniqueIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureBareMetalStorageInstanceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageProperties: (() { final guardedValue = map['storageProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

