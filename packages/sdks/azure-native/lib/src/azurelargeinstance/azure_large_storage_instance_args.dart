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
      'azureLargeStorageInstanceUniqueIdentifier':
          ?azureLargeStorageInstanceUniqueIdentifier,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedServiceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'storageProperties':
          ?pulumi.Input.mapOptionalInputValue<
            StorageProperties,
            Map<String, dynamic>
          >(storageProperties, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory AzureLargeStorageInstanceArgs.fromMap(Map<String, dynamic> map) {
    return AzureLargeStorageInstanceArgs(
      azureLargeStorageInstanceName: (() {
        final guardedValue = map['azureLargeStorageInstanceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      azureLargeStorageInstanceUniqueIdentifier: (() {
        final guardedValue = map['azureLargeStorageInstanceUniqueIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedServiceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      storageProperties: (() {
        final guardedValue = map['storageProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StorageProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
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
