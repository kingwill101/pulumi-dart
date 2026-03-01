// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_exascale_database_storage_vault_high_capacity_database_storage.dart';

/// Result data returned by getExascaleDatabaseStorageVault.
class GetExascaleDatabaseStorageVaultResult {
  /// The size of additional Flash Cache in percentage of High Capacity database storage.
  final int additionalFlashCachePercentage;
  /// Exadata Database Storage Vault description.
  final String description;
  /// The user-friendly name for the Exadata Database Storage Vault.
  final String displayName;
  /// A `high_capacity_database_storage` block as defined below.
  final List<GetExascaleDatabaseStorageVaultHighCapacityDatabaseStorage> highCapacityDatabaseStorages;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Additional information about the current lifecycle state.
  final String lifecycleDetails;
  /// Exadata Database Storage Vault lifecycle state enum.
  final String lifecycleState;
  /// The Azure Region where the Exadata Database Storage Vault exists.
  final String location;
  final String name;
  /// The URL of the resource in the OCI console.
  final String ociUrl;
  /// The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the Exadata Database Storage Vault.
  final String ocid;
  final String resourceGroupName;
  /// The time zone of the Exadata Database Storage Vault.
  final String timeZone;
  /// The number of Exadata virtual machine clusters used the Exadata Database Storage Vault.
  final int virtualMachineClusterCount;
  /// The Exadata Database Storage Vault Azure zones.
  final List<String> zones;

  /// Creates a new [GetExascaleDatabaseStorageVaultResult].
  /// [additionalFlashCachePercentage] The size of additional Flash Cache in percentage of High Capacity database storage.
  /// [description] Exadata Database Storage Vault description.
  /// [displayName] The user-friendly name for the Exadata Database Storage Vault.
  /// [highCapacityDatabaseStorages] A `high_capacity_database_storage` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lifecycleDetails] Additional information about the current lifecycle state.
  /// [lifecycleState] Exadata Database Storage Vault lifecycle state enum.
  /// [location] The Azure Region where the Exadata Database Storage Vault exists.
  /// [name] Required.
  /// [ociUrl] The URL of the resource in the OCI console.
  /// [ocid] The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the Exadata Database Storage Vault.
  /// [resourceGroupName] Required.
  /// [timeZone] The time zone of the Exadata Database Storage Vault.
  /// [virtualMachineClusterCount] The number of Exadata virtual machine clusters used the Exadata Database Storage Vault.
  /// [zones] The Exadata Database Storage Vault Azure zones.
  GetExascaleDatabaseStorageVaultResult({
    required this.additionalFlashCachePercentage,
    required this.description,
    required this.displayName,
    required this.highCapacityDatabaseStorages,
    required this.id,
    required this.lifecycleDetails,
    required this.lifecycleState,
    required this.location,
    required this.name,
    required this.ociUrl,
    required this.ocid,
    required this.resourceGroupName,
    required this.timeZone,
    required this.virtualMachineClusterCount,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalFlashCachePercentage': additionalFlashCachePercentage,
      'description': description,
      'displayName': displayName,
      'highCapacityDatabaseStorages': pulumi.Input.encodeList<GetExascaleDatabaseStorageVaultHighCapacityDatabaseStorage, Map<String, dynamic>>(highCapacityDatabaseStorages, (value) => value.toMap()),
      'id': id,
      'lifecycleDetails': lifecycleDetails,
      'lifecycleState': lifecycleState,
      'location': location,
      'name': name,
      'ociUrl': ociUrl,
      'ocid': ocid,
      'resourceGroupName': resourceGroupName,
      'timeZone': timeZone,
      'virtualMachineClusterCount': virtualMachineClusterCount,
      'zones': zones,
    };
  }

  factory GetExascaleDatabaseStorageVaultResult.fromMap(Map<String, dynamic> map) {
    return GetExascaleDatabaseStorageVaultResult(
      additionalFlashCachePercentage: map['additionalFlashCachePercentage'] as int,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      highCapacityDatabaseStorages: pulumi.Input.decodeList<GetExascaleDatabaseStorageVaultHighCapacityDatabaseStorage>(map['highCapacityDatabaseStorages'], (value) => GetExascaleDatabaseStorageVaultHighCapacityDatabaseStorage.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      lifecycleDetails: map['lifecycleDetails'] as String,
      lifecycleState: map['lifecycleState'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      ociUrl: map['ociUrl'] as String,
      ocid: map['ocid'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      timeZone: map['timeZone'] as String,
      virtualMachineClusterCount: map['virtualMachineClusterCount'] as int,
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}

