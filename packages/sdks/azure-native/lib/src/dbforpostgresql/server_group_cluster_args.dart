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
      'authConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ServerGroupClusterAuthConfig,
            Map<String, dynamic>
          >(authConfig, (value) => value.toMap()),
      'citusVersion': ?citusVersion,
      'clusterName': ?clusterName,
      'coordinatorEnablePublicIpAccess': ?coordinatorEnablePublicIpAccess,
      'coordinatorServerEdition': ?coordinatorServerEdition,
      'coordinatorStorageQuotaInMb': ?coordinatorStorageQuotaInMb,
      'coordinatorVCores': ?coordinatorVCores,
      'dataEncryption':
          ?pulumi.Input.mapOptionalInputValue<
            ServerGroupClusterDataEncryption,
            Map<String, dynamic>
          >(dataEncryption, (value) => value.toMap()),
      'databaseName': ?databaseName,
      'enableGeoBackup': ?enableGeoBackup,
      'enableHa': ?enableHa,
      'enableShardsOnCoordinator': ?enableShardsOnCoordinator,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            IdentityProperties,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'maintenanceWindow':
          ?pulumi.Input.mapOptionalInputValue<
            ServerGroupClusterMaintenanceWindow,
            Map<String, dynamic>
          >(maintenanceWindow, (value) => value.toMap()),
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
      administratorLoginPassword: (() {
        final guardedValue = map['administratorLoginPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      authConfig: (() {
        final guardedValue = map['authConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServerGroupClusterAuthConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      citusVersion: (() {
        final guardedValue = map['citusVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterName: (() {
        final guardedValue = map['clusterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      coordinatorEnablePublicIpAccess: (() {
        final guardedValue = map['coordinatorEnablePublicIpAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      coordinatorServerEdition: (() {
        final guardedValue = map['coordinatorServerEdition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      coordinatorStorageQuotaInMb: (() {
        final guardedValue = map['coordinatorStorageQuotaInMb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      coordinatorVCores: (() {
        final guardedValue = map['coordinatorVCores'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      dataEncryption: (() {
        final guardedValue = map['dataEncryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServerGroupClusterDataEncryption.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      databaseName: (() {
        final guardedValue = map['databaseName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableGeoBackup: (() {
        final guardedValue = map['enableGeoBackup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableHa: (() {
        final guardedValue = map['enableHa'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableShardsOnCoordinator: (() {
        final guardedValue = map['enableShardsOnCoordinator'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IdentityProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maintenanceWindow: (() {
        final guardedValue = map['maintenanceWindow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServerGroupClusterMaintenanceWindow.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      nodeCount: (() {
        final guardedValue = map['nodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      nodeEnablePublicIpAccess: (() {
        final guardedValue = map['nodeEnablePublicIpAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      nodeServerEdition: (() {
        final guardedValue = map['nodeServerEdition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeStorageQuotaInMb: (() {
        final guardedValue = map['nodeStorageQuotaInMb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      nodeVCores: (() {
        final guardedValue = map['nodeVCores'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      pointInTimeUTC: (() {
        final guardedValue = map['pointInTimeUTC'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      postgresqlVersion: (() {
        final guardedValue = map['postgresqlVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preferredPrimaryZone: (() {
        final guardedValue = map['preferredPrimaryZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sourceLocation: (() {
        final guardedValue = map['sourceLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceResourceId: (() {
        final guardedValue = map['sourceResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
