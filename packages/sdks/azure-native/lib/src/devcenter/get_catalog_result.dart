// ignore_for_file: unused_element, unnecessary_cast

import 'git_catalog_response.dart';
import 'sync_stats_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCatalog.
class GetCatalogResult {
  /// Properties for an Azure DevOps catalog type.
  final GitCatalogResponse? adoGit;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The connection state of the catalog.
  final String? connectionState;
  /// Properties for a GitHub catalog type.
  final GitCatalogResponse? gitHub;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// When the catalog was last connected.
  final String? lastConnectionTime;
  /// Stats of the latest synchronization.
  final SyncStatsResponse? lastSyncStats;
  /// When the catalog was last synced.
  final String? lastSyncTime;
  /// The name of the resource
  final String? name;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// The synchronization state of the catalog.
  final String? syncState;
  /// Indicates the type of sync that is configured for the catalog.
  final String? syncType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetCatalogResult({
    this.adoGit,
    this.azureApiVersion,
    this.connectionState,
    this.gitHub,
    this.id,
    this.lastConnectionTime,
    this.lastSyncStats,
    this.lastSyncTime,
    this.name,
    this.provisioningState,
    this.syncState,
    this.syncType,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adoGit': ?adoGit?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'connectionState': ?connectionState,
      'gitHub': ?gitHub?.toMap(),
      'id': ?id,
      'lastConnectionTime': ?lastConnectionTime,
      'lastSyncStats': ?lastSyncStats?.toMap(),
      'lastSyncTime': ?lastSyncTime,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'syncState': ?syncState,
      'syncType': ?syncType,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetCatalogResult.fromMap(Map<String, dynamic> map) {
    return GetCatalogResult(
      adoGit: (() { final guardedValue = map['adoGit']; if (guardedValue == null) return null; return GitCatalogResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionState: (() { final guardedValue = map['connectionState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gitHub: (() { final guardedValue = map['gitHub']; if (guardedValue == null) return null; return GitCatalogResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastConnectionTime: (() { final guardedValue = map['lastConnectionTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastSyncStats: (() { final guardedValue = map['lastSyncStats']; if (guardedValue == null) return null; return SyncStatsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lastSyncTime: (() { final guardedValue = map['lastSyncTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      syncState: (() { final guardedValue = map['syncState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      syncType: (() { final guardedValue = map['syncType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
