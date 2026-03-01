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
    pulumi.Output<String>? azureLargeStorageInstanceName,
    pulumi.Output<String>? azureLargeStorageInstanceUniqueIdentifier,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<StorageProperties>? storageProperties,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      azureLargeStorageInstanceName = pulumi.Input.asOptionalInput<String>(azureLargeStorageInstanceName),
      azureLargeStorageInstanceUniqueIdentifier = pulumi.Input.asOptionalInput<String>(azureLargeStorageInstanceUniqueIdentifier),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageProperties = pulumi.Input.asOptionalInput<StorageProperties>(storageProperties),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      azureLargeStorageInstanceName: map['azureLargeStorageInstanceName'] == null ? null : pulumi.Output.create<String>(map['azureLargeStorageInstanceName'] as String),
      azureLargeStorageInstanceUniqueIdentifier: map['azureLargeStorageInstanceUniqueIdentifier'] == null ? null : pulumi.Output.create<String>(map['azureLargeStorageInstanceUniqueIdentifier'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageProperties: map['storageProperties'] == null ? null : pulumi.Output.create<StorageProperties>(StorageProperties.fromMap((map['storageProperties'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

