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
    pulumi.Output<String>? administratorLoginPassword,
    pulumi.Output<ServerGroupClusterAuthConfig>? authConfig,
    pulumi.Output<String>? citusVersion,
    pulumi.Output<String>? clusterName,
    pulumi.Output<bool>? coordinatorEnablePublicIpAccess,
    pulumi.Output<String>? coordinatorServerEdition,
    pulumi.Output<int>? coordinatorStorageQuotaInMb,
    pulumi.Output<int>? coordinatorVCores,
    pulumi.Output<ServerGroupClusterDataEncryption>? dataEncryption,
    pulumi.Output<String>? databaseName,
    pulumi.Output<bool>? enableGeoBackup,
    pulumi.Output<bool>? enableHa,
    pulumi.Output<bool>? enableShardsOnCoordinator,
    pulumi.Output<IdentityProperties>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<ServerGroupClusterMaintenanceWindow>? maintenanceWindow,
    pulumi.Output<int>? nodeCount,
    pulumi.Output<bool>? nodeEnablePublicIpAccess,
    pulumi.Output<String>? nodeServerEdition,
    pulumi.Output<int>? nodeStorageQuotaInMb,
    pulumi.Output<int>? nodeVCores,
    pulumi.Output<String>? pointInTimeUTC,
    pulumi.Output<String>? postgresqlVersion,
    pulumi.Output<String>? preferredPrimaryZone,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sourceLocation,
    pulumi.Output<String>? sourceResourceId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      administratorLoginPassword = pulumi.Input.asOptionalInput<String>(administratorLoginPassword),
      authConfig = pulumi.Input.asOptionalInput<ServerGroupClusterAuthConfig>(authConfig),
      citusVersion = pulumi.Input.asOptionalInput<String>(citusVersion),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      coordinatorEnablePublicIpAccess = pulumi.Input.asOptionalInput<bool>(coordinatorEnablePublicIpAccess),
      coordinatorServerEdition = pulumi.Input.asOptionalInput<String>(coordinatorServerEdition),
      coordinatorStorageQuotaInMb = pulumi.Input.asOptionalInput<int>(coordinatorStorageQuotaInMb),
      coordinatorVCores = pulumi.Input.asOptionalInput<int>(coordinatorVCores),
      dataEncryption = pulumi.Input.asOptionalInput<ServerGroupClusterDataEncryption>(dataEncryption),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      enableGeoBackup = pulumi.Input.asOptionalInput<bool>(enableGeoBackup),
      enableHa = pulumi.Input.asOptionalInput<bool>(enableHa),
      enableShardsOnCoordinator = pulumi.Input.asOptionalInput<bool>(enableShardsOnCoordinator),
      identity = pulumi.Input.asOptionalInput<IdentityProperties>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceWindow = pulumi.Input.asOptionalInput<ServerGroupClusterMaintenanceWindow>(maintenanceWindow),
      nodeCount = pulumi.Input.asOptionalInput<int>(nodeCount),
      nodeEnablePublicIpAccess = pulumi.Input.asOptionalInput<bool>(nodeEnablePublicIpAccess),
      nodeServerEdition = pulumi.Input.asOptionalInput<String>(nodeServerEdition),
      nodeStorageQuotaInMb = pulumi.Input.asOptionalInput<int>(nodeStorageQuotaInMb),
      nodeVCores = pulumi.Input.asOptionalInput<int>(nodeVCores),
      pointInTimeUTC = pulumi.Input.asOptionalInput<String>(pointInTimeUTC),
      postgresqlVersion = pulumi.Input.asOptionalInput<String>(postgresqlVersion),
      preferredPrimaryZone = pulumi.Input.asOptionalInput<String>(preferredPrimaryZone),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceLocation = pulumi.Input.asOptionalInput<String>(sourceLocation),
      sourceResourceId = pulumi.Input.asOptionalInput<String>(sourceResourceId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      administratorLoginPassword: map['administratorLoginPassword'] == null ? null : pulumi.Output.create<String>(map['administratorLoginPassword'] as String),
      authConfig: map['authConfig'] == null ? null : pulumi.Output.create<ServerGroupClusterAuthConfig>(ServerGroupClusterAuthConfig.fromMap((map['authConfig'] as Map).cast<String, dynamic>())),
      citusVersion: map['citusVersion'] == null ? null : pulumi.Output.create<String>(map['citusVersion'] as String),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      coordinatorEnablePublicIpAccess: map['coordinatorEnablePublicIpAccess'] == null ? null : pulumi.Output.create<bool>(map['coordinatorEnablePublicIpAccess'] as bool),
      coordinatorServerEdition: map['coordinatorServerEdition'] == null ? null : pulumi.Output.create<String>(map['coordinatorServerEdition'] as String),
      coordinatorStorageQuotaInMb: map['coordinatorStorageQuotaInMb'] == null ? null : pulumi.Output.create<int>(map['coordinatorStorageQuotaInMb'] as int),
      coordinatorVCores: map['coordinatorVCores'] == null ? null : pulumi.Output.create<int>(map['coordinatorVCores'] as int),
      dataEncryption: map['dataEncryption'] == null ? null : pulumi.Output.create<ServerGroupClusterDataEncryption>(ServerGroupClusterDataEncryption.fromMap((map['dataEncryption'] as Map).cast<String, dynamic>())),
      databaseName: map['databaseName'] == null ? null : pulumi.Output.create<String>(map['databaseName'] as String),
      enableGeoBackup: map['enableGeoBackup'] == null ? null : pulumi.Output.create<bool>(map['enableGeoBackup'] as bool),
      enableHa: map['enableHa'] == null ? null : pulumi.Output.create<bool>(map['enableHa'] as bool),
      enableShardsOnCoordinator: map['enableShardsOnCoordinator'] == null ? null : pulumi.Output.create<bool>(map['enableShardsOnCoordinator'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<IdentityProperties>(IdentityProperties.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : pulumi.Output.create<ServerGroupClusterMaintenanceWindow>(ServerGroupClusterMaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>())),
      nodeCount: map['nodeCount'] == null ? null : pulumi.Output.create<int>(map['nodeCount'] as int),
      nodeEnablePublicIpAccess: map['nodeEnablePublicIpAccess'] == null ? null : pulumi.Output.create<bool>(map['nodeEnablePublicIpAccess'] as bool),
      nodeServerEdition: map['nodeServerEdition'] == null ? null : pulumi.Output.create<String>(map['nodeServerEdition'] as String),
      nodeStorageQuotaInMb: map['nodeStorageQuotaInMb'] == null ? null : pulumi.Output.create<int>(map['nodeStorageQuotaInMb'] as int),
      nodeVCores: map['nodeVCores'] == null ? null : pulumi.Output.create<int>(map['nodeVCores'] as int),
      pointInTimeUTC: map['pointInTimeUTC'] == null ? null : pulumi.Output.create<String>(map['pointInTimeUTC'] as String),
      postgresqlVersion: map['postgresqlVersion'] == null ? null : pulumi.Output.create<String>(map['postgresqlVersion'] as String),
      preferredPrimaryZone: map['preferredPrimaryZone'] == null ? null : pulumi.Output.create<String>(map['preferredPrimaryZone'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sourceLocation: map['sourceLocation'] == null ? null : pulumi.Output.create<String>(map['sourceLocation'] as String),
      sourceResourceId: map['sourceResourceId'] == null ? null : pulumi.Output.create<String>(map['sourceResourceId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

