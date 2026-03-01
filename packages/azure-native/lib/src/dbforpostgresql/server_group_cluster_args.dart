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
    String? administratorLoginPassword,
    ServerGroupClusterAuthConfig? authConfig,
    String? citusVersion,
    String? clusterName,
    bool? coordinatorEnablePublicIpAccess,
    String? coordinatorServerEdition,
    int? coordinatorStorageQuotaInMb,
    int? coordinatorVCores,
    ServerGroupClusterDataEncryption? dataEncryption,
    String? databaseName,
    bool? enableGeoBackup,
    bool? enableHa,
    bool? enableShardsOnCoordinator,
    IdentityProperties? identity,
    String? location,
    ServerGroupClusterMaintenanceWindow? maintenanceWindow,
    int? nodeCount,
    bool? nodeEnablePublicIpAccess,
    String? nodeServerEdition,
    int? nodeStorageQuotaInMb,
    int? nodeVCores,
    String? pointInTimeUTC,
    String? postgresqlVersion,
    String? preferredPrimaryZone,
    required String resourceGroupName,
    String? sourceLocation,
    String? sourceResourceId,
    Map<String, String>? tags,
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
      administratorLoginPassword: map['administratorLoginPassword'] == null ? null : map['administratorLoginPassword'] as String,
      authConfig: map['authConfig'] == null ? null : ServerGroupClusterAuthConfig.fromMap((map['authConfig'] as Map).cast<String, dynamic>()),
      citusVersion: map['citusVersion'] == null ? null : map['citusVersion'] as String,
      clusterName: map['clusterName'] == null ? null : map['clusterName'] as String,
      coordinatorEnablePublicIpAccess: map['coordinatorEnablePublicIpAccess'] == null ? null : map['coordinatorEnablePublicIpAccess'] as bool,
      coordinatorServerEdition: map['coordinatorServerEdition'] == null ? null : map['coordinatorServerEdition'] as String,
      coordinatorStorageQuotaInMb: map['coordinatorStorageQuotaInMb'] == null ? null : map['coordinatorStorageQuotaInMb'] as int,
      coordinatorVCores: map['coordinatorVCores'] == null ? null : map['coordinatorVCores'] as int,
      dataEncryption: map['dataEncryption'] == null ? null : ServerGroupClusterDataEncryption.fromMap((map['dataEncryption'] as Map).cast<String, dynamic>()),
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
      enableGeoBackup: map['enableGeoBackup'] == null ? null : map['enableGeoBackup'] as bool,
      enableHa: map['enableHa'] == null ? null : map['enableHa'] as bool,
      enableShardsOnCoordinator: map['enableShardsOnCoordinator'] == null ? null : map['enableShardsOnCoordinator'] as bool,
      identity: map['identity'] == null ? null : IdentityProperties.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      maintenanceWindow: map['maintenanceWindow'] == null ? null : ServerGroupClusterMaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>()),
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
      nodeEnablePublicIpAccess: map['nodeEnablePublicIpAccess'] == null ? null : map['nodeEnablePublicIpAccess'] as bool,
      nodeServerEdition: map['nodeServerEdition'] == null ? null : map['nodeServerEdition'] as String,
      nodeStorageQuotaInMb: map['nodeStorageQuotaInMb'] == null ? null : map['nodeStorageQuotaInMb'] as int,
      nodeVCores: map['nodeVCores'] == null ? null : map['nodeVCores'] as int,
      pointInTimeUTC: map['pointInTimeUTC'] == null ? null : map['pointInTimeUTC'] as String,
      postgresqlVersion: map['postgresqlVersion'] == null ? null : map['postgresqlVersion'] as String,
      preferredPrimaryZone: map['preferredPrimaryZone'] == null ? null : map['preferredPrimaryZone'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sourceLocation: map['sourceLocation'] == null ? null : map['sourceLocation'] as String,
      sourceResourceId: map['sourceResourceId'] == null ? null : map['sourceResourceId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

