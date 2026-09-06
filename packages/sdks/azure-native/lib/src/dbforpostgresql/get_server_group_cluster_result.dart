// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_properties_response.dart';
import 'server_group_cluster_auth_config_response.dart';
import 'server_group_cluster_data_encryption_response.dart';
import 'server_group_cluster_maintenance_window_response.dart';
import 'server_name_item_response.dart';
import 'simple_private_endpoint_connection_response.dart';
import 'system_data_response.dart';

/// Result data returned by getServerGroupCluster.
class GetServerGroupClusterResult {
  /// Indicates whether the cluster was created using AAD authentication.
  final String? aadAuthEnabled;
  /// The administrator's login name of the servers in the cluster.
  final String? administratorLogin;
  /// Authentication configuration of a cluster.
  final ServerGroupClusterAuthConfigResponse? authConfig;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The Citus extension version on all cluster servers.
  final String? citusVersion;
  /// If public access is enabled on coordinator.
  final bool? coordinatorEnablePublicIpAccess;
  /// The edition of a coordinator server (default: GeneralPurpose). Required for creation.
  final String? coordinatorServerEdition;
  /// The storage of a server in MB. Required for creation. See https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute for more information.
  final int? coordinatorStorageQuotaInMb;
  /// The vCores count of a server (max: 96). Required for creation. See https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute for more information.
  final int? coordinatorVCores;
  /// The data encryption properties of a cluster.
  final ServerGroupClusterDataEncryptionResponse? dataEncryption;
  /// The database name of the cluster. Only one database per cluster is supported.
  final String? databaseName;
  /// The earliest restore point time (ISO8601 format) for the cluster.
  final String? earliestRestoreTime;
  /// If cluster backup is stored in another Azure region in addition to the copy of the backup stored in the cluster's region. Enabled only at the time of cluster creation.
  final bool? enableGeoBackup;
  /// If high availability (HA) is enabled or not for the cluster.
  final bool? enableHa;
  /// If distributed tables are placed on coordinator or not. Should be set to 'true' on single node clusters. Requires shard rebalancing after value is changed.
  final bool? enableShardsOnCoordinator;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Describes the identity of the cluster.
  final IdentityPropertiesResponse? identity;
  /// The geo-location where the resource lives
  final String? location;
  /// Maintenance window of a cluster.
  final ServerGroupClusterMaintenanceWindowResponse? maintenanceWindow;
  /// The name of the resource
  final String? name;
  /// Worker node count of the cluster. When node count is 0, it represents a single node configuration with the ability to create distributed tables on that node. 2 or more worker nodes represent multi-node configuration. Node count value cannot be 1. Required for creation.
  final int? nodeCount;
  /// If public access is enabled on worker nodes.
  final bool? nodeEnablePublicIpAccess;
  /// The edition of a node server (default: MemoryOptimized).
  final String? nodeServerEdition;
  /// The storage in MB on each worker node. See https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute for more information.
  final int? nodeStorageQuotaInMb;
  /// The compute in vCores on each worker node (max: 104). See https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute for more information.
  final int? nodeVCores;
  /// Indicates whether the cluster was created with a password or using AAD authentication.
  final String? passwordEnabled;
  /// Date and time in UTC (ISO8601 format) for cluster restore.
  final String? pointInTimeUTC;
  /// The major PostgreSQL version on all cluster servers.
  final String? postgresqlVersion;
  /// Preferred primary availability zone (AZ) for all cluster servers.
  final String? preferredPrimaryZone;
  /// The private endpoint connections for a cluster.
  final List<SimplePrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// Provisioning state of the cluster
  final String? provisioningState;
  /// The array of read replica clusters.
  final List<String>? readReplicas;
  /// The list of server names in the cluster
  final List<ServerNameItemResponse>? serverNames;
  /// The Azure region of source cluster for read replica clusters.
  final String? sourceLocation;
  /// The resource id of source cluster for read replica clusters.
  final String? sourceResourceId;
  /// A state of a cluster/server that is visible to user.
  final String? state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetServerGroupClusterResult].
  /// [aadAuthEnabled] Indicates whether the cluster was created using AAD authentication.
  /// [administratorLogin] The administrator's login name of the servers in the cluster.
  /// [authConfig] Authentication configuration of a cluster.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [citusVersion] The Citus extension version on all cluster servers.
  /// [coordinatorEnablePublicIpAccess] If public access is enabled on coordinator.
  /// [coordinatorServerEdition] The edition of a coordinator server (default: GeneralPurpose). Required for creation.
  /// [coordinatorStorageQuotaInMb] The storage of a server in MB. Required for creation. See https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute for more information.
  /// [coordinatorVCores] The vCores count of a server (max: 96). Required for creation. See https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute for more information.
  /// [dataEncryption] The data encryption properties of a cluster.
  /// [databaseName] The database name of the cluster. Only one database per cluster is supported.
  /// [earliestRestoreTime] The earliest restore point time (ISO8601 format) for the cluster.
  /// [enableGeoBackup] If cluster backup is stored in another Azure region in addition to the copy of the backup stored in the cluster's region. Enabled only at the time of cluster creation.
  /// [enableHa] If high availability (HA) is enabled or not for the cluster.
  /// [enableShardsOnCoordinator] If distributed tables are placed on coordinator or not. Should be set to 'true' on single node clusters. Requires shard rebalancing after value is changed.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Describes the identity of the cluster.
  /// [location] The geo-location where the resource lives
  /// [maintenanceWindow] Maintenance window of a cluster.
  /// [name] The name of the resource
  /// [nodeCount] Worker node count of the cluster. When node count is 0, it represents a single node configuration with the ability to create distributed tables on that node. 2 or more worker nodes represent multi-node configuration. Node count value cannot be 1. Required for creation.
  /// [nodeEnablePublicIpAccess] If public access is enabled on worker nodes.
  /// [nodeServerEdition] The edition of a node server (default: MemoryOptimized).
  /// [nodeStorageQuotaInMb] The storage in MB on each worker node. See https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute for more information.
  /// [nodeVCores] The compute in vCores on each worker node (max: 104). See https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute for more information.
  /// [passwordEnabled] Indicates whether the cluster was created with a password or using AAD authentication.
  /// [pointInTimeUTC] Date and time in UTC (ISO8601 format) for cluster restore.
  /// [postgresqlVersion] The major PostgreSQL version on all cluster servers.
  /// [preferredPrimaryZone] Preferred primary availability zone (AZ) for all cluster servers.
  /// [privateEndpointConnections] The private endpoint connections for a cluster.
  /// [provisioningState] Provisioning state of the cluster
  /// [readReplicas] The array of read replica clusters.
  /// [serverNames] The list of server names in the cluster
  /// [sourceLocation] The Azure region of source cluster for read replica clusters.
  /// [sourceResourceId] The resource id of source cluster for read replica clusters.
  /// [state] A state of a cluster/server that is visible to user.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetServerGroupClusterResult({
    this.aadAuthEnabled,
    this.administratorLogin,
    this.authConfig,
    this.azureApiVersion,
    this.citusVersion,
    this.coordinatorEnablePublicIpAccess,
    this.coordinatorServerEdition,
    this.coordinatorStorageQuotaInMb,
    this.coordinatorVCores,
    this.dataEncryption,
    this.databaseName,
    this.earliestRestoreTime,
    this.enableGeoBackup,
    this.enableHa,
    this.enableShardsOnCoordinator,
    this.id,
    this.identity,
    this.location,
    this.maintenanceWindow,
    this.name,
    this.nodeCount,
    this.nodeEnablePublicIpAccess,
    this.nodeServerEdition,
    this.nodeStorageQuotaInMb,
    this.nodeVCores,
    this.passwordEnabled,
    this.pointInTimeUTC,
    this.postgresqlVersion,
    this.preferredPrimaryZone,
    this.privateEndpointConnections,
    this.provisioningState,
    this.readReplicas,
    this.serverNames,
    this.sourceLocation,
    this.sourceResourceId,
    this.state,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthEnabled': ?aadAuthEnabled,
      'administratorLogin': ?administratorLogin,
      'authConfig': ?authConfig?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'citusVersion': ?citusVersion,
      'coordinatorEnablePublicIpAccess': ?coordinatorEnablePublicIpAccess,
      'coordinatorServerEdition': ?coordinatorServerEdition,
      'coordinatorStorageQuotaInMb': ?coordinatorStorageQuotaInMb,
      'coordinatorVCores': ?coordinatorVCores,
      'dataEncryption': ?dataEncryption?.toMap(),
      'databaseName': ?databaseName,
      'earliestRestoreTime': ?earliestRestoreTime,
      'enableGeoBackup': ?enableGeoBackup,
      'enableHa': ?enableHa,
      'enableShardsOnCoordinator': ?enableShardsOnCoordinator,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'maintenanceWindow': ?maintenanceWindow?.toMap(),
      'name': ?name,
      'nodeCount': ?nodeCount,
      'nodeEnablePublicIpAccess': ?nodeEnablePublicIpAccess,
      'nodeServerEdition': ?nodeServerEdition,
      'nodeStorageQuotaInMb': ?nodeStorageQuotaInMb,
      'nodeVCores': ?nodeVCores,
      'passwordEnabled': ?passwordEnabled,
      'pointInTimeUTC': ?pointInTimeUTC,
      'postgresqlVersion': ?postgresqlVersion,
      'preferredPrimaryZone': ?preferredPrimaryZone,
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<SimplePrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'readReplicas': ?readReplicas,
      'serverNames': ?(() { final guardedValue = serverNames; if (guardedValue == null) return null; return pulumi.Input.encodeList<ServerNameItemResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sourceLocation': ?sourceLocation,
      'sourceResourceId': ?sourceResourceId,
      'state': ?state,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetServerGroupClusterResult.fromMap(Map<String, dynamic> map) {
    return GetServerGroupClusterResult(
      aadAuthEnabled: (() { final guardedValue = map['aadAuthEnabled']; if (guardedValue == null) return null; return guardedValue as String; })(),
      administratorLogin: (() { final guardedValue = map['administratorLogin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authConfig: (() { final guardedValue = map['authConfig']; if (guardedValue == null) return null; return ServerGroupClusterAuthConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      citusVersion: (() { final guardedValue = map['citusVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      coordinatorEnablePublicIpAccess: (() { final guardedValue = map['coordinatorEnablePublicIpAccess']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      coordinatorServerEdition: (() { final guardedValue = map['coordinatorServerEdition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      coordinatorStorageQuotaInMb: (() { final guardedValue = map['coordinatorStorageQuotaInMb']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      coordinatorVCores: (() { final guardedValue = map['coordinatorVCores']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      dataEncryption: (() { final guardedValue = map['dataEncryption']; if (guardedValue == null) return null; return ServerGroupClusterDataEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      earliestRestoreTime: (() { final guardedValue = map['earliestRestoreTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableGeoBackup: (() { final guardedValue = map['enableGeoBackup']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableHa: (() { final guardedValue = map['enableHa']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableShardsOnCoordinator: (() { final guardedValue = map['enableShardsOnCoordinator']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return ServerGroupClusterMaintenanceWindowResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      nodeEnablePublicIpAccess: (() { final guardedValue = map['nodeEnablePublicIpAccess']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      nodeServerEdition: (() { final guardedValue = map['nodeServerEdition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeStorageQuotaInMb: (() { final guardedValue = map['nodeStorageQuotaInMb']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      nodeVCores: (() { final guardedValue = map['nodeVCores']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      passwordEnabled: (() { final guardedValue = map['passwordEnabled']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pointInTimeUTC: (() { final guardedValue = map['pointInTimeUTC']; if (guardedValue == null) return null; return guardedValue as String; })(),
      postgresqlVersion: (() { final guardedValue = map['postgresqlVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preferredPrimaryZone: (() { final guardedValue = map['preferredPrimaryZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SimplePrivateEndpointConnectionResponse>(guardedValue, (value) => SimplePrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      readReplicas: (() { final guardedValue = map['readReplicas']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      serverNames: (() { final guardedValue = map['serverNames']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServerNameItemResponse>(guardedValue, (value) => ServerNameItemResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      sourceLocation: (() { final guardedValue = map['sourceLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
