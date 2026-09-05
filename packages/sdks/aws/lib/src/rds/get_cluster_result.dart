// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_master_user_secret.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  final String? arn;
  final List<String>? availabilityZones;
  final int? backtrackWindow;
  final int? backupRetentionPeriod;
  final String? clusterIdentifier;
  final List<String>? clusterMembers;
  final String? clusterResourceId;
  final String? clusterScalabilityType;
  final String? databaseInsightsMode;
  final String? databaseName;
  final String? dbClusterParameterGroupName;
  final String? dbSubnetGroupName;
  final String? dbSystemId;
  final bool? deletionProtection;
  final List<String>? enabledCloudwatchLogsExports;
  final String? endpoint;
  final String? engine;
  final String? engineMode;
  final String? engineVersion;
  final String? finalSnapshotIdentifier;
  final String? hostedZoneId;
  final bool? iamDatabaseAuthenticationEnabled;
  final List<String>? iamRoles;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? kmsKeyId;
  final List<GetClusterMasterUserSecret>? masterUserSecrets;
  final String? masterUsername;
  final int? monitoringInterval;
  final String? monitoringRoleArn;
  final String? networkType;
  final int? port;
  final String? preferredBackupWindow;
  final String? preferredMaintenanceWindow;
  final String? readerEndpoint;
  final String? region;
  final String? replicationSourceIdentifier;
  final bool? storageEncrypted;
  /// A map of tags assigned to the resource.
  final Map<String, String>? tags;
  final String? upgradeRolloutOrder;
  final List<String>? vpcSecurityGroupIds;

  /// Creates a new [GetClusterResult].
  /// [arn] Optional.
  /// [availabilityZones] Optional.
  /// [backtrackWindow] Optional.
  /// [backupRetentionPeriod] Optional.
  /// [clusterIdentifier] Optional.
  /// [clusterMembers] Optional.
  /// [clusterResourceId] Optional.
  /// [clusterScalabilityType] Optional.
  /// [databaseInsightsMode] Optional.
  /// [databaseName] Optional.
  /// [dbClusterParameterGroupName] Optional.
  /// [dbSubnetGroupName] Optional.
  /// [dbSystemId] Optional.
  /// [deletionProtection] Optional.
  /// [enabledCloudwatchLogsExports] Optional.
  /// [endpoint] Optional.
  /// [engine] Optional.
  /// [engineMode] Optional.
  /// [engineVersion] Optional.
  /// [finalSnapshotIdentifier] Optional.
  /// [hostedZoneId] Optional.
  /// [iamDatabaseAuthenticationEnabled] Optional.
  /// [iamRoles] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyId] Optional.
  /// [masterUserSecrets] Optional.
  /// [masterUsername] Optional.
  /// [monitoringInterval] Optional.
  /// [monitoringRoleArn] Optional.
  /// [networkType] Optional.
  /// [port] Optional.
  /// [preferredBackupWindow] Optional.
  /// [preferredMaintenanceWindow] Optional.
  /// [readerEndpoint] Optional.
  /// [region] Optional.
  /// [replicationSourceIdentifier] Optional.
  /// [storageEncrypted] Optional.
  /// [tags] A map of tags assigned to the resource.
  /// [upgradeRolloutOrder] Optional.
  /// [vpcSecurityGroupIds] Optional.
  const GetClusterResult({
    this.arn,
    this.availabilityZones,
    this.backtrackWindow,
    this.backupRetentionPeriod,
    this.clusterIdentifier,
    this.clusterMembers,
    this.clusterResourceId,
    this.clusterScalabilityType,
    this.databaseInsightsMode,
    this.databaseName,
    this.dbClusterParameterGroupName,
    this.dbSubnetGroupName,
    this.dbSystemId,
    this.deletionProtection,
    this.enabledCloudwatchLogsExports,
    this.endpoint,
    this.engine,
    this.engineMode,
    this.engineVersion,
    this.finalSnapshotIdentifier,
    this.hostedZoneId,
    this.iamDatabaseAuthenticationEnabled,
    this.iamRoles,
    this.id,
    this.kmsKeyId,
    this.masterUserSecrets,
    this.masterUsername,
    this.monitoringInterval,
    this.monitoringRoleArn,
    this.networkType,
    this.port,
    this.preferredBackupWindow,
    this.preferredMaintenanceWindow,
    this.readerEndpoint,
    this.region,
    this.replicationSourceIdentifier,
    this.storageEncrypted,
    this.tags,
    this.upgradeRolloutOrder,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZones': ?availabilityZones,
      'backtrackWindow': ?backtrackWindow,
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'clusterIdentifier': ?clusterIdentifier,
      'clusterMembers': ?clusterMembers,
      'clusterResourceId': ?clusterResourceId,
      'clusterScalabilityType': ?clusterScalabilityType,
      'databaseInsightsMode': ?databaseInsightsMode,
      'databaseName': ?databaseName,
      'dbClusterParameterGroupName': ?dbClusterParameterGroupName,
      'dbSubnetGroupName': ?dbSubnetGroupName,
      'dbSystemId': ?dbSystemId,
      'deletionProtection': ?deletionProtection,
      'enabledCloudwatchLogsExports': ?enabledCloudwatchLogsExports,
      'endpoint': ?endpoint,
      'engine': ?engine,
      'engineMode': ?engineMode,
      'engineVersion': ?engineVersion,
      'finalSnapshotIdentifier': ?finalSnapshotIdentifier,
      'hostedZoneId': ?hostedZoneId,
      'iamDatabaseAuthenticationEnabled': ?iamDatabaseAuthenticationEnabled,
      'iamRoles': ?iamRoles,
      'id': ?id,
      'kmsKeyId': ?kmsKeyId,
      'masterUserSecrets': ?(() { final guardedValue = masterUserSecrets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterMasterUserSecret, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'masterUsername': ?masterUsername,
      'monitoringInterval': ?monitoringInterval,
      'monitoringRoleArn': ?monitoringRoleArn,
      'networkType': ?networkType,
      'port': ?port,
      'preferredBackupWindow': ?preferredBackupWindow,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'readerEndpoint': ?readerEndpoint,
      'region': ?region,
      'replicationSourceIdentifier': ?replicationSourceIdentifier,
      'storageEncrypted': ?storageEncrypted,
      'tags': ?tags,
      'upgradeRolloutOrder': ?upgradeRolloutOrder,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      backtrackWindow: (() { final guardedValue = map['backtrackWindow']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      backupRetentionPeriod: (() { final guardedValue = map['backupRetentionPeriod']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      clusterIdentifier: (() { final guardedValue = map['clusterIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterMembers: (() { final guardedValue = map['clusterMembers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      clusterResourceId: (() { final guardedValue = map['clusterResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterScalabilityType: (() { final guardedValue = map['clusterScalabilityType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseInsightsMode: (() { final guardedValue = map['databaseInsightsMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbClusterParameterGroupName: (() { final guardedValue = map['dbClusterParameterGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbSubnetGroupName: (() { final guardedValue = map['dbSubnetGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbSystemId: (() { final guardedValue = map['dbSystemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enabledCloudwatchLogsExports: (() { final guardedValue = map['enabledCloudwatchLogsExports']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engineMode: (() { final guardedValue = map['engineMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      finalSnapshotIdentifier: (() { final guardedValue = map['finalSnapshotIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostedZoneId: (() { final guardedValue = map['hostedZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      iamDatabaseAuthenticationEnabled: (() { final guardedValue = map['iamDatabaseAuthenticationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      iamRoles: (() { final guardedValue = map['iamRoles']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      masterUserSecrets: (() { final guardedValue = map['masterUserSecrets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterMasterUserSecret>(guardedValue, (value) => GetClusterMasterUserSecret.fromMap((value as Map).cast<String, dynamic>())); })(),
      masterUsername: (() { final guardedValue = map['masterUsername']; if (guardedValue == null) return null; return guardedValue as String; })(),
      monitoringInterval: (() { final guardedValue = map['monitoringInterval']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      monitoringRoleArn: (() { final guardedValue = map['monitoringRoleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      preferredBackupWindow: (() { final guardedValue = map['preferredBackupWindow']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preferredMaintenanceWindow: (() { final guardedValue = map['preferredMaintenanceWindow']; if (guardedValue == null) return null; return guardedValue as String; })(),
      readerEndpoint: (() { final guardedValue = map['readerEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicationSourceIdentifier: (() { final guardedValue = map['replicationSourceIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageEncrypted: (() { final guardedValue = map['storageEncrypted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      upgradeRolloutOrder: (() { final guardedValue = map['upgradeRolloutOrder']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcSecurityGroupIds: (() { final guardedValue = map['vpcSecurityGroupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
