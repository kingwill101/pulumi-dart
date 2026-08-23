// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_master_user_secret.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  final String arn;
  final List<String> availabilityZones;
  final int backtrackWindow;
  final int backupRetentionPeriod;
  final String clusterIdentifier;
  final List<String> clusterMembers;
  final String clusterResourceId;
  final String clusterScalabilityType;
  final String databaseInsightsMode;
  final String databaseName;
  final String dbClusterParameterGroupName;
  final String dbSubnetGroupName;
  final String dbSystemId;
  final bool deletionProtection;
  final List<String> enabledCloudwatchLogsExports;
  final String endpoint;
  final String engine;
  final String engineMode;
  final String engineVersion;
  final String finalSnapshotIdentifier;
  final String hostedZoneId;
  final bool iamDatabaseAuthenticationEnabled;
  final List<String> iamRoles;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String kmsKeyId;
  final List<GetClusterMasterUserSecret> masterUserSecrets;
  final String masterUsername;
  final int monitoringInterval;
  final String monitoringRoleArn;
  final String networkType;
  final int port;
  final String preferredBackupWindow;
  final String preferredMaintenanceWindow;
  final String readerEndpoint;
  final String region;
  final String replicationSourceIdentifier;
  final bool storageEncrypted;
  /// A map of tags assigned to the resource.
  final Map<String, String> tags;
  final String upgradeRolloutOrder;
  final List<String> vpcSecurityGroupIds;

  /// Creates a new [GetClusterResult].
  /// [arn] Required.
  /// [availabilityZones] Required.
  /// [backtrackWindow] Required.
  /// [backupRetentionPeriod] Required.
  /// [clusterIdentifier] Required.
  /// [clusterMembers] Required.
  /// [clusterResourceId] Required.
  /// [clusterScalabilityType] Required.
  /// [databaseInsightsMode] Required.
  /// [databaseName] Required.
  /// [dbClusterParameterGroupName] Required.
  /// [dbSubnetGroupName] Required.
  /// [dbSystemId] Required.
  /// [deletionProtection] Required.
  /// [enabledCloudwatchLogsExports] Required.
  /// [endpoint] Required.
  /// [engine] Required.
  /// [engineMode] Required.
  /// [engineVersion] Required.
  /// [finalSnapshotIdentifier] Required.
  /// [hostedZoneId] Required.
  /// [iamDatabaseAuthenticationEnabled] Required.
  /// [iamRoles] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyId] Required.
  /// [masterUserSecrets] Required.
  /// [masterUsername] Required.
  /// [monitoringInterval] Required.
  /// [monitoringRoleArn] Required.
  /// [networkType] Required.
  /// [port] Required.
  /// [preferredBackupWindow] Required.
  /// [preferredMaintenanceWindow] Required.
  /// [readerEndpoint] Required.
  /// [region] Required.
  /// [replicationSourceIdentifier] Required.
  /// [storageEncrypted] Required.
  /// [tags] A map of tags assigned to the resource.
  /// [upgradeRolloutOrder] Required.
  /// [vpcSecurityGroupIds] Required.
  const GetClusterResult({
    required this.arn,
    required this.availabilityZones,
    required this.backtrackWindow,
    required this.backupRetentionPeriod,
    required this.clusterIdentifier,
    required this.clusterMembers,
    required this.clusterResourceId,
    required this.clusterScalabilityType,
    required this.databaseInsightsMode,
    required this.databaseName,
    required this.dbClusterParameterGroupName,
    required this.dbSubnetGroupName,
    required this.dbSystemId,
    required this.deletionProtection,
    required this.enabledCloudwatchLogsExports,
    required this.endpoint,
    required this.engine,
    required this.engineMode,
    required this.engineVersion,
    required this.finalSnapshotIdentifier,
    required this.hostedZoneId,
    required this.iamDatabaseAuthenticationEnabled,
    required this.iamRoles,
    required this.id,
    required this.kmsKeyId,
    required this.masterUserSecrets,
    required this.masterUsername,
    required this.monitoringInterval,
    required this.monitoringRoleArn,
    required this.networkType,
    required this.port,
    required this.preferredBackupWindow,
    required this.preferredMaintenanceWindow,
    required this.readerEndpoint,
    required this.region,
    required this.replicationSourceIdentifier,
    required this.storageEncrypted,
    required this.tags,
    required this.upgradeRolloutOrder,
    required this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'availabilityZones': availabilityZones,
      'backtrackWindow': backtrackWindow,
      'backupRetentionPeriod': backupRetentionPeriod,
      'clusterIdentifier': clusterIdentifier,
      'clusterMembers': clusterMembers,
      'clusterResourceId': clusterResourceId,
      'clusterScalabilityType': clusterScalabilityType,
      'databaseInsightsMode': databaseInsightsMode,
      'databaseName': databaseName,
      'dbClusterParameterGroupName': dbClusterParameterGroupName,
      'dbSubnetGroupName': dbSubnetGroupName,
      'dbSystemId': dbSystemId,
      'deletionProtection': deletionProtection,
      'enabledCloudwatchLogsExports': enabledCloudwatchLogsExports,
      'endpoint': endpoint,
      'engine': engine,
      'engineMode': engineMode,
      'engineVersion': engineVersion,
      'finalSnapshotIdentifier': finalSnapshotIdentifier,
      'hostedZoneId': hostedZoneId,
      'iamDatabaseAuthenticationEnabled': iamDatabaseAuthenticationEnabled,
      'iamRoles': iamRoles,
      'id': id,
      'kmsKeyId': kmsKeyId,
      'masterUserSecrets': pulumi.Input.encodeList<GetClusterMasterUserSecret, Map<String, dynamic>>(masterUserSecrets, (value) => value.toMap()),
      'masterUsername': masterUsername,
      'monitoringInterval': monitoringInterval,
      'monitoringRoleArn': monitoringRoleArn,
      'networkType': networkType,
      'port': port,
      'preferredBackupWindow': preferredBackupWindow,
      'preferredMaintenanceWindow': preferredMaintenanceWindow,
      'readerEndpoint': readerEndpoint,
      'region': region,
      'replicationSourceIdentifier': replicationSourceIdentifier,
      'storageEncrypted': storageEncrypted,
      'tags': tags,
      'upgradeRolloutOrder': upgradeRolloutOrder,
      'vpcSecurityGroupIds': vpcSecurityGroupIds,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      arn: map['arn'] as String,
      availabilityZones: (map['availabilityZones'] as List).cast<String>(),
      backtrackWindow: map['backtrackWindow'] as int,
      backupRetentionPeriod: map['backupRetentionPeriod'] as int,
      clusterIdentifier: map['clusterIdentifier'] as String,
      clusterMembers: (map['clusterMembers'] as List).cast<String>(),
      clusterResourceId: map['clusterResourceId'] as String,
      clusterScalabilityType: map['clusterScalabilityType'] as String,
      databaseInsightsMode: map['databaseInsightsMode'] as String,
      databaseName: map['databaseName'] as String,
      dbClusterParameterGroupName: map['dbClusterParameterGroupName'] as String,
      dbSubnetGroupName: map['dbSubnetGroupName'] as String,
      dbSystemId: map['dbSystemId'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      enabledCloudwatchLogsExports: (map['enabledCloudwatchLogsExports'] as List).cast<String>(),
      endpoint: map['endpoint'] as String,
      engine: map['engine'] as String,
      engineMode: map['engineMode'] as String,
      engineVersion: map['engineVersion'] as String,
      finalSnapshotIdentifier: map['finalSnapshotIdentifier'] as String,
      hostedZoneId: map['hostedZoneId'] as String,
      iamDatabaseAuthenticationEnabled: map['iamDatabaseAuthenticationEnabled'] as bool,
      iamRoles: (map['iamRoles'] as List).cast<String>(),
      id: map['id'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      masterUserSecrets: pulumi.Input.decodeList<GetClusterMasterUserSecret>(map['masterUserSecrets']!, (value) => GetClusterMasterUserSecret.fromMap((value as Map).cast<String, dynamic>())),
      masterUsername: map['masterUsername'] as String,
      monitoringInterval: map['monitoringInterval'] as int,
      monitoringRoleArn: map['monitoringRoleArn'] as String,
      networkType: map['networkType'] as String,
      port: map['port'] as int,
      preferredBackupWindow: map['preferredBackupWindow'] as String,
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] as String,
      readerEndpoint: map['readerEndpoint'] as String,
      region: map['region'] as String,
      replicationSourceIdentifier: map['replicationSourceIdentifier'] as String,
      storageEncrypted: map['storageEncrypted'] as bool,
      tags: (map['tags'] as Map).cast<String, String>(),
      upgradeRolloutOrder: map['upgradeRolloutOrder'] as String,
      vpcSecurityGroupIds: (map['vpcSecurityGroupIds'] as List).cast<String>(),
    );
  }
}
