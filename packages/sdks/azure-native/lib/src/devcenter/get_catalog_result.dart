// ignore_for_file: unused_element, unnecessary_cast

import 'git_catalog_response.dart';
import 'sync_stats_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCatalog.
class GetCatalogResult {
  /// Properties for an Azure DevOps catalog type.
  final GitCatalogResponse? adoGit;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The connection state of the catalog.
  final String connectionState;
  /// Properties for a GitHub catalog type.
  final GitCatalogResponse? gitHub;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// When the catalog was last connected.
  final String lastConnectionTime;
  /// Stats of the latest synchronization.
  final SyncStatsResponse lastSyncStats;
  /// When the catalog was last synced.
  final String lastSyncTime;
  /// The name of the resource
  final String name;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// The synchronization state of the catalog.
  final String syncState;
  /// Indicates the type of sync that is configured for the catalog.
  final String? syncType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetCatalogResult].
  /// [adoGit] Properties for an Azure DevOps catalog type.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectionState] The connection state of the catalog.
  /// [gitHub] Properties for a GitHub catalog type.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastConnectionTime] When the catalog was last connected.
  /// [lastSyncStats] Stats of the latest synchronization.
  /// [lastSyncTime] When the catalog was last synced.
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the resource.
  /// [syncState] The synchronization state of the catalog.
  /// [syncType] Indicates the type of sync that is configured for the catalog.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetCatalogResult({
    this.adoGit,
    required this.azureApiVersion,
    required this.connectionState,
    this.gitHub,
    required this.id,
    required this.lastConnectionTime,
    required this.lastSyncStats,
    required this.lastSyncTime,
    required this.name,
    required this.provisioningState,
    required this.syncState,
    this.syncType,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adoGit': ?adoGit == null ? null : adoGit!.toMap(),
      'azureApiVersion': azureApiVersion,
      'connectionState': connectionState,
      'gitHub': ?gitHub == null ? null : gitHub!.toMap(),
      'id': id,
      'lastConnectionTime': lastConnectionTime,
      'lastSyncStats': lastSyncStats.toMap(),
      'lastSyncTime': lastSyncTime,
      'name': name,
      'provisioningState': provisioningState,
      'syncState': syncState,
      'syncType': ?syncType,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetCatalogResult.fromMap(Map<String, dynamic> map) {
    return GetCatalogResult(
      adoGit: map['adoGit'] == null ? null : GitCatalogResponse.fromMap((map['adoGit']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      connectionState: map['connectionState'] as String,
      gitHub: map['gitHub'] == null ? null : GitCatalogResponse.fromMap((map['gitHub']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      lastConnectionTime: map['lastConnectionTime'] as String,
      lastSyncStats: SyncStatsResponse.fromMap((map['lastSyncStats'] as Map).cast<String, dynamic>()),
      lastSyncTime: map['lastSyncTime'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      syncState: map['syncState'] as String,
      syncType: map['syncType'] == null ? null : map['syncType']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

