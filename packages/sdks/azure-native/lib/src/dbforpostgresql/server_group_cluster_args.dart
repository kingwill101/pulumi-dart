// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_properties.dart';
import 'server_group_cluster_auth_config.dart';
import 'server_group_cluster_data_encryption.dart';
import 'server_group_cluster_maintenance_window.dart';

/// {@template pulumi_dbforpostgresql_server_group_cluster_args_doc}
/// The set of arguments for ServerGroupCluster.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_server_group_cluster_args_doc}
class ServerGroupClusterArgs {
  /// The password of the administrator login. Required for creation.
  final pulumi.Input<String>? administratorLoginPassword;
  /// Authentication configuration of a cluster.
  final pulumi.Input<ServerGroupClusterAuthConfig>? authConfig;
  /// The Citus extension version on all cluster servers.
  final pulumi.Input<String>? citusVersion;
  /// The name of the cluster.
  final pulumi.Input<String>? clusterName;
  /// If public access is enabled on coordinator.
  final pulumi.Input<bool>? coordinatorEnablePublicIpAccess;
  /// The edition of a coordinator server (default: GeneralPurpose). Required for creation.
  final pulumi.Input<String>? coordinatorServerEdition;
  /// The storage of a server in MB. Required for creation. See https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute for more information.
  final pulumi.Input<int>? coordinatorStorageQuotaInMb;
  /// The vCores count of a server (max: 96). Required for creation. See https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute for more information.
  final pulumi.Input<int>? coordinatorVCores;
  /// The data encryption properties of a cluster.
  final pulumi.Input<ServerGroupClusterDataEncryption>? dataEncryption;
  /// The database name of the cluster. Only one database per cluster is supported.
  final pulumi.Input<String>? databaseName;
  /// If cluster backup is stored in another Azure region in addition to the copy of the backup stored in the cluster's region. Enabled only at the time of cluster creation.
  final pulumi.Input<bool>? enableGeoBackup;
  /// If high availability (HA) is enabled or not for the cluster.
  final pulumi.Input<bool>? enableHa;
  /// If distributed tables are placed on coordinator or not. Should be set to 'true' on single node clusters. Requires shard rebalancing after value is changed.
  final pulumi.Input<bool>? enableShardsOnCoordinator;
  /// Describes the identity of the cluster.
  final pulumi.Input<IdentityProperties>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Maintenance window of a cluster.
  final pulumi.Input<ServerGroupClusterMaintenanceWindow>? maintenanceWindow;
  /// Worker node count of the cluster. When node count is 0, it represents a single node configuration with the ability to create distributed tables on that node. 2 or more worker nodes represent multi-node configuration. Node count value cannot be 1. Required for creation.
  final pulumi.Input<int>? nodeCount;
  /// If public access is enabled on worker nodes.
  final pulumi.Input<bool>? nodeEnablePublicIpAccess;
  /// The edition of a node server (default: MemoryOptimized).
  final pulumi.Input<String>? nodeServerEdition;
  /// The storage in MB on each worker node. See https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute for more information.
  final pulumi.Input<int>? nodeStorageQuotaInMb;
  /// The compute in vCores on each worker node (max: 104). See https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute for more information.
  final pulumi.Input<int>? nodeVCores;
  /// Date and time in UTC (ISO8601 format) for cluster restore.
  final pulumi.Input<String>? pointInTimeUTC;
  /// The major PostgreSQL version on all cluster servers.
  final pulumi.Input<String>? postgresqlVersion;
  /// Preferred primary availability zone (AZ) for all cluster servers.
  final pulumi.Input<String>? preferredPrimaryZone;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The Azure region of source cluster for read replica clusters.
  final pulumi.Input<String>? sourceLocation;
  /// The resource id of source cluster for read replica clusters.
  final pulumi.Input<String>? sourceResourceId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServerGroupClusterArgs].
  /// [administratorLoginPassword] The password of the administrator login. Required for creation.
  /// [authConfig] Authentication configuration of a cluster.
  /// [citusVersion] The Citus extension version on all cluster servers.
  /// [clusterName] The name of the cluster.
  /// [coordinatorEnablePublicIpAccess] If public access is enabled on coordinator.
  /// [coordinatorServerEdition] The edition of a coordinator server (default: GeneralPurpose). Required for creation.
  /// [coordinatorStorageQuotaInMb] The storage of a server in MB. Required for creation. See https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute for more information.
  /// [coordinatorVCores] The vCores count of a server (max: 96). Required for creation. See https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute for more information.
  /// [dataEncryption] The data encryption properties of a cluster.
  /// [databaseName] The database name of the cluster. Only one database per cluster is supported.
  /// [enableGeoBackup] If cluster backup is stored in another Azure region in addition to the copy of the backup stored in the cluster's region. Enabled only at the time of cluster creation.
  /// [enableHa] If high availability (HA) is enabled or not for the cluster.
  /// [enableShardsOnCoordinator] If distributed tables are placed on coordinator or not. Should be set to 'true' on single node clusters. Requires shard rebalancing after value is changed.
  /// [identity] Describes the identity of the cluster.
  /// [location] The geo-location where the resource lives
  /// [maintenanceWindow] Maintenance window of a cluster.
  /// [nodeCount] Worker node count of the cluster. When node count is 0, it represents a single node configuration with the ability to create distributed tables on that node. 2 or more worker nodes represent multi-node configuration. Node count value cannot be 1. Required for creation.
  /// [nodeEnablePublicIpAccess] If public access is enabled on worker nodes.
  /// [nodeServerEdition] The edition of a node server (default: MemoryOptimized).
  /// [nodeStorageQuotaInMb] The storage in MB on each worker node. See https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute for more information.
  /// [nodeVCores] The compute in vCores on each worker node (max: 104). See https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute for more information.
  /// [pointInTimeUTC] Date and time in UTC (ISO8601 format) for cluster restore.
  /// [postgresqlVersion] The major PostgreSQL version on all cluster servers.
  /// [preferredPrimaryZone] Preferred primary availability zone (AZ) for all cluster servers.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sourceLocation] The Azure region of source cluster for read replica clusters.
  /// [sourceResourceId] The resource id of source cluster for read replica clusters.
  /// [tags] Resource tags.
  ServerGroupClusterArgs({
    this.administratorLoginPassword,
    this.authConfig,
    this.citusVersion,
    this.clusterName,
    this.coordinatorEnablePublicIpAccess,
    this.coordinatorServerEdition,
    this.coordinatorStorageQuotaInMb,
    this.coordinatorVCores,
    this.dataEncryption,
    this.databaseName,
    this.enableGeoBackup,
    this.enableHa,
    this.enableShardsOnCoordinator,
    this.identity,
    this.location,
    this.maintenanceWindow,
    this.nodeCount,
    this.nodeEnablePublicIpAccess,
    this.nodeServerEdition,
    this.nodeStorageQuotaInMb,
    this.nodeVCores,
    this.pointInTimeUTC,
    this.postgresqlVersion,
    this.preferredPrimaryZone,
    required this.resourceGroupName,
    this.sourceLocation,
    this.sourceResourceId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLoginPassword': ?administratorLoginPassword,
      'authConfig': ?pulumi.Input.mapOptionalInputValue<ServerGroupClusterAuthConfig, Map<String, dynamic>>(authConfig, (value) => value.toMap()),
      'citusVersion': ?citusVersion,
      'clusterName': ?clusterName,
      'coordinatorEnablePublicIpAccess': ?coordinatorEnablePublicIpAccess,
      'coordinatorServerEdition': ?coordinatorServerEdition,
      'coordinatorStorageQuotaInMb': ?coordinatorStorageQuotaInMb,
      'coordinatorVCores': ?coordinatorVCores,
      'dataEncryption': ?pulumi.Input.mapOptionalInputValue<ServerGroupClusterDataEncryption, Map<String, dynamic>>(dataEncryption, (value) => value.toMap()),
      'databaseName': ?databaseName,
      'enableGeoBackup': ?enableGeoBackup,
      'enableHa': ?enableHa,
      'enableShardsOnCoordinator': ?enableShardsOnCoordinator,
      'identity': ?pulumi.Input.mapOptionalInputValue<IdentityProperties, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<ServerGroupClusterMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'nodeCount': ?nodeCount,
      'nodeEnablePublicIpAccess': ?nodeEnablePublicIpAccess,
      'nodeServerEdition': ?nodeServerEdition,
      'nodeStorageQuotaInMb': ?nodeStorageQuotaInMb,
      'nodeVCores': ?nodeVCores,
      'pointInTimeUTC': ?pointInTimeUTC,
      'postgresqlVersion': ?postgresqlVersion,
      'preferredPrimaryZone': ?preferredPrimaryZone,
      'resourceGroupName': resourceGroupName,
      'sourceLocation': ?sourceLocation,
      'sourceResourceId': ?sourceResourceId,
      'tags': ?tags,
    };
  }

  factory ServerGroupClusterArgs.fromMap(Map<String, dynamic> map) {
    return ServerGroupClusterArgs(
      administratorLoginPassword: map['administratorLoginPassword'] == null ? null : (map['administratorLoginPassword']! as String).input(),
      authConfig: map['authConfig'] == null ? null : (ServerGroupClusterAuthConfig.fromMap((map['authConfig']! as Map).cast<String, dynamic>())).input(),
      citusVersion: map['citusVersion'] == null ? null : (map['citusVersion']! as String).input(),
      clusterName: map['clusterName'] == null ? null : (map['clusterName']! as String).input(),
      coordinatorEnablePublicIpAccess: map['coordinatorEnablePublicIpAccess'] == null ? null : (map['coordinatorEnablePublicIpAccess']! as bool).input(),
      coordinatorServerEdition: map['coordinatorServerEdition'] == null ? null : (map['coordinatorServerEdition']! as String).input(),
      coordinatorStorageQuotaInMb: map['coordinatorStorageQuotaInMb'] == null ? null : (map['coordinatorStorageQuotaInMb']! as int).input(),
      coordinatorVCores: map['coordinatorVCores'] == null ? null : (map['coordinatorVCores']! as int).input(),
      dataEncryption: map['dataEncryption'] == null ? null : (ServerGroupClusterDataEncryption.fromMap((map['dataEncryption']! as Map).cast<String, dynamic>())).input(),
      databaseName: map['databaseName'] == null ? null : (map['databaseName']! as String).input(),
      enableGeoBackup: map['enableGeoBackup'] == null ? null : (map['enableGeoBackup']! as bool).input(),
      enableHa: map['enableHa'] == null ? null : (map['enableHa']! as bool).input(),
      enableShardsOnCoordinator: map['enableShardsOnCoordinator'] == null ? null : (map['enableShardsOnCoordinator']! as bool).input(),
      identity: map['identity'] == null ? null : (IdentityProperties.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : (ServerGroupClusterMaintenanceWindow.fromMap((map['maintenanceWindow']! as Map).cast<String, dynamic>())).input(),
      nodeCount: map['nodeCount'] == null ? null : (map['nodeCount']! as int).input(),
      nodeEnablePublicIpAccess: map['nodeEnablePublicIpAccess'] == null ? null : (map['nodeEnablePublicIpAccess']! as bool).input(),
      nodeServerEdition: map['nodeServerEdition'] == null ? null : (map['nodeServerEdition']! as String).input(),
      nodeStorageQuotaInMb: map['nodeStorageQuotaInMb'] == null ? null : (map['nodeStorageQuotaInMb']! as int).input(),
      nodeVCores: map['nodeVCores'] == null ? null : (map['nodeVCores']! as int).input(),
      pointInTimeUTC: map['pointInTimeUTC'] == null ? null : (map['pointInTimeUTC']! as String).input(),
      postgresqlVersion: map['postgresqlVersion'] == null ? null : (map['postgresqlVersion']! as String).input(),
      preferredPrimaryZone: map['preferredPrimaryZone'] == null ? null : (map['preferredPrimaryZone']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sourceLocation: map['sourceLocation'] == null ? null : (map['sourceLocation']! as String).input(),
      sourceResourceId: map['sourceResourceId'] == null ? null : (map['sourceResourceId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

