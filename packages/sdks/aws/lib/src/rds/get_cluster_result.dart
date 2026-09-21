// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_master_user_secret.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// ARN of the cluster.
  final String? arn;
  /// Availability Zones of the RDS cluster.
  final List<String>? availabilityZones;
  /// Target backtrack window, in seconds.
  final int? backtrackWindow;
  /// Days to retain backups for.
  final int? backupRetentionPeriod;
  final String? clusterIdentifier;
  /// List of RDS Instances that are a part of this cluster.
  final List<String>? clusterMembers;
  /// RDS Cluster Resource ID.
  final String? clusterResourceId;
  /// Scalability mode of the cluster.
  final String? clusterScalabilityType;
  /// Mode of Database Insights that is enabled for the cluster.
  final String? databaseInsightsMode;
  /// Name for an automatically created database on cluster creation.
  final String? databaseName;
  /// Cluster parameter group associated with the cluster.
  final String? dbClusterParameterGroupName;
  /// DB subnet group associated with the cluster.
  final String? dbSubnetGroupName;
  /// System ID of the cluster.
  final String? dbSystemId;
  /// Whether the cluster has deletion protection enabled.
  final bool? deletionProtection;
  /// List of log types exported to CloudWatch Logs.
  final List<String>? enabledCloudwatchLogsExports;
  /// DNS address of the RDS instance.
  final String? endpoint;
  /// Database engine.
  final String? engine;
  /// Database engine mode.
  final String? engineMode;
  /// Database engine version.
  final String? engineVersion;
  /// Name of the final snapshot taken when the cluster is deleted.
  final String? finalSnapshotIdentifier;
  /// Route53 Hosted Zone ID of the endpoint.
  final String? hostedZoneId;
  /// Whether mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled.
  final bool? iamDatabaseAuthenticationEnabled;
  /// IAM roles associated with the cluster.
  final List<String>? iamRoles;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Amazon Web Services KMS key identifier that is used to encrypt the secret.
  final String? kmsKeyId;
  /// Block that specifies the master user secret. Only available when `manageMasterUserPassword` is set to `true`. Documented below.
  final List<GetClusterMasterUserSecret>? masterUserSecrets;
  /// Master username for the database.
  final String? masterUsername;
  /// Interval, in seconds, between points when Enhanced Monitoring metrics are collected for the cluster.
  final int? monitoringInterval;
  /// ARN of the IAM role used by RDS to send Enhanced Monitoring metrics to CloudWatch Logs.
  final String? monitoringRoleArn;
  /// Network type of the cluster.
  final String? networkType;
  /// Port on which the DB accepts connections.
  final int? port;
  /// Daily time range during which automated backups are created.
  final String? preferredBackupWindow;
  /// Weekly time range during which system maintenance can occur.
  final String? preferredMaintenanceWindow;
  /// Read-only endpoint for the cluster, automatically load-balanced across replicas.
  final String? readerEndpoint;
  final String? region;
  /// ARN of the source DB cluster or DB instance if this DB cluster is created as a read replica.
  final String? replicationSourceIdentifier;
  /// Whether the DB cluster is encrypted.
  final bool? storageEncrypted;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;
  /// Order in which minor and major version upgrades are applied to the cluster.
  final String? upgradeRolloutOrder;
  /// VPC security groups the cluster belongs to.
  final List<String>? vpcSecurityGroupIds;

  /// Creates a new [GetClusterResult].
  /// [arn] ARN of the cluster.
  /// [availabilityZones] Availability Zones of the RDS cluster.
  /// [backtrackWindow] Target backtrack window, in seconds.
  /// [backupRetentionPeriod] Days to retain backups for.
  /// [clusterIdentifier] Optional.
  /// [clusterMembers] List of RDS Instances that are a part of this cluster.
  /// [clusterResourceId] RDS Cluster Resource ID.
  /// [clusterScalabilityType] Scalability mode of the cluster.
  /// [databaseInsightsMode] Mode of Database Insights that is enabled for the cluster.
  /// [databaseName] Name for an automatically created database on cluster creation.
  /// [dbClusterParameterGroupName] Cluster parameter group associated with the cluster.
  /// [dbSubnetGroupName] DB subnet group associated with the cluster.
  /// [dbSystemId] System ID of the cluster.
  /// [deletionProtection] Whether the cluster has deletion protection enabled.
  /// [enabledCloudwatchLogsExports] List of log types exported to CloudWatch Logs.
  /// [endpoint] DNS address of the RDS instance.
  /// [engine] Database engine.
  /// [engineMode] Database engine mode.
  /// [engineVersion] Database engine version.
  /// [finalSnapshotIdentifier] Name of the final snapshot taken when the cluster is deleted.
  /// [hostedZoneId] Route53 Hosted Zone ID of the endpoint.
  /// [iamDatabaseAuthenticationEnabled] Whether mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled.
  /// [iamRoles] IAM roles associated with the cluster.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyId] Amazon Web Services KMS key identifier that is used to encrypt the secret.
  /// [masterUserSecrets] Block that specifies the master user secret. Only available when `manageMasterUserPassword` is set to `true`. Documented below.
  /// [masterUsername] Master username for the database.
  /// [monitoringInterval] Interval, in seconds, between points when Enhanced Monitoring metrics are collected for the cluster.
  /// [monitoringRoleArn] ARN of the IAM role used by RDS to send Enhanced Monitoring metrics to CloudWatch Logs.
  /// [networkType] Network type of the cluster.
  /// [port] Port on which the DB accepts connections.
  /// [preferredBackupWindow] Daily time range during which automated backups are created.
  /// [preferredMaintenanceWindow] Weekly time range during which system maintenance can occur.
  /// [readerEndpoint] Read-only endpoint for the cluster, automatically load-balanced across replicas.
  /// [region] Optional.
  /// [replicationSourceIdentifier] ARN of the source DB cluster or DB instance if this DB cluster is created as a read replica.
  /// [storageEncrypted] Whether the DB cluster is encrypted.
  /// [tags] Map of tags assigned to the resource.
  /// [upgradeRolloutOrder] Order in which minor and major version upgrades are applied to the cluster.
  /// [vpcSecurityGroupIds] VPC security groups the cluster belongs to.
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
      backtrackWindow: (() { final guardedValue = map['backtrackWindow']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      backupRetentionPeriod: (() { final guardedValue = map['backupRetentionPeriod']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
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
      monitoringInterval: (() { final guardedValue = map['monitoringInterval']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      monitoringRoleArn: (() { final guardedValue = map['monitoringRoleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
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
