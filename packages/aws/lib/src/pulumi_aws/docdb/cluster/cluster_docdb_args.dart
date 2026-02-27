// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_restore_to_point_in_time/cluster_restore_to_point_in_time.dart';
import '../cluster_serverless_v2_scaling_configuration/cluster_serverless_v2_scaling_configuration.dart';

/// The set of arguments for Cluster.
class ClusterDocdbArgs {
  /// A value that indicates whether major version upgrades are allowed. Constraints: You must allow major version upgrades when specifying a value for the EngineVersion parameter that is a different major version than the DB cluster's current version.
  final pulumi.Input<bool>? allowMajorVersionUpgrade;

  /// Specifies whether any cluster modifications
  /// are applied immediately, or during the next maintenance window. Default is
  /// `false`.
  final pulumi.Input<bool>? applyImmediately;

  /// A list of EC2 Availability Zones that instances in the DB cluster can be created in.
  /// DocumentDB automatically assigns 3 AZs if less than 3 AZs are configured, which will show as a difference requiring resource recreation next pulumi up.
  /// We recommend specifying 3 AZs or using the `lifecycle` configuration block `ignore_changes` argument if necessary.
  final pulumi.Input<List<String>>? availabilityZones;

  /// The days to retain backups for. Default `1`
  final pulumi.Input<int>? backupRetentionPeriod;

  /// The cluster identifier. If omitted, the provider will assign a random, unique identifier.
  final pulumi.Input<String>? clusterIdentifier;

  /// Creates a unique cluster identifier beginning with the specified prefix. Conflicts with `cluster_identifier`.
  final pulumi.Input<String>? clusterIdentifierPrefix;

  /// List of DocumentDB Instances that are a part of this cluster
  final pulumi.Input<List<String>>? clusterMembers;

  /// A cluster parameter group to associate with the cluster.
  final pulumi.Input<String>? dbClusterParameterGroupName;

  /// A DB subnet group to associate with this DB instance.
  final pulumi.Input<String>? dbSubnetGroupName;

  /// A boolean value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. Defaults to `false`.
  final pulumi.Input<bool>? deletionProtection;

  /// List of log types to export to cloudwatch. If omitted, no logs will be exported.
  /// The following log types are supported: `audit`, `profiler`.
  final pulumi.Input<List<String>>? enabledCloudwatchLogsExports;

  /// The name of the database engine to be used for this DB cluster. Defaults to `docdb`. Valid values: `docdb`.
  final pulumi.Input<String>? engine;

  /// The database engine version. Updating this argument results in an outage.
  final pulumi.Input<String>? engineVersion;

  /// The name of your final DB snapshot
  /// when this DB cluster is deleted. If omitted, no final snapshot will be
  /// made.
  final pulumi.Input<String>? finalSnapshotIdentifier;

  /// The global cluster identifier specified on `aws.docdb.GlobalCluster`.
  final pulumi.Input<String>? globalClusterIdentifier;

  /// The ARN for the KMS encryption key. When specifying `kms_key_id`, `storage_encrypted` needs to be set to true.
  final pulumi.Input<String>? kmsKeyId;

  /// Set to `true` to allow Amazon DocumentDB to manage the master user password in AWS Secrets Manager. Cannot be set if `master_password` or `master_password_wo` is provided.
  final pulumi.Input<bool>? manageMasterUserPassword;

  /// Password for the master DB user. Note that this may
  /// show up in logs, and it will be stored in the state file. Please refer to the DocumentDB Naming Constraints. Conflicts with `master_password_wo` and `manage_master_user_password`.
  final pulumi.Input<String>? masterPassword;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Password for the master DB user. Note that this may
  /// show up in logs. Please refer to the DocumentDB Naming Constraints. Conflicts with `master_password` and `manage_master_user_password`.
  final pulumi.Input<String>? masterPasswordWo;

  /// Used together with `master_password_wo` to trigger an update. Increment this value when an update to the `master_password_wo` is required.
  final pulumi.Input<int>? masterPasswordWoVersion;

  /// Username for the master DB user.
  final pulumi.Input<String>? masterUsername;

  /// The network type of the DB cluster (`IPV4` or `DUAL`).
  final pulumi.Input<String>? networkType;

  /// The port on which the DB accepts connections
  final pulumi.Input<int>? port;

  /// The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter.Time in UTC
  /// Default: A 30-minute window selected at random from an 8-hour block of time per regionE.g., 04:00-09:00
  final pulumi.Input<String>? preferredBackupWindow;

  /// The weekly time range during which system maintenance can occur, in (UTC) e.g., wed:04:00-wed:04:30
  final pulumi.Input<String>? preferredMaintenanceWindow;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A configuration block for restoring a DB instance to an arbitrary point in time. Requires the `identifier` argument to be set with the name of the new DB instance to be created. See Restore To Point In Time below for details.
  final pulumi.Input<ClusterRestoreToPointInTime>? restoreToPointInTime;

  /// Scaling configuration of an Amazon DocumentDB Serverless cluster. See Serverless V2 Scaling Configuration below for details.
  final pulumi.Input<ClusterServerlessV2ScalingConfiguration>?
      serverlessV2ScalingConfiguration;

  /// Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from `final_snapshot_identifier`. Default is `false`.
  final pulumi.Input<bool>? skipFinalSnapshot;

  /// Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot. Automated snapshots **should not** be used for this attribute, unless from a different cluster. Automated snapshots are deleted as part of cluster destruction when the resource is replaced.
  final pulumi.Input<String>? snapshotIdentifier;

  /// Specifies whether the DB cluster is encrypted. The default is `false`.
  final pulumi.Input<bool>? storageEncrypted;

  /// The storage type to associate with the DB cluster. Valid values: `standard`, `iopt1`.
  final pulumi.Input<String>? storageType;

  /// A map of tags to assign to the DB cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// List of VPC security groups to associate
  /// with the Cluster
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/docdb/create-db-cluster.html).
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  ClusterDocdbArgs({
    this.allowMajorVersionUpgrade,
    this.applyImmediately,
    this.availabilityZones,
    this.backupRetentionPeriod,
    this.clusterIdentifier,
    this.clusterIdentifierPrefix,
    this.clusterMembers,
    this.dbClusterParameterGroupName,
    this.dbSubnetGroupName,
    this.deletionProtection,
    this.enabledCloudwatchLogsExports,
    this.engine,
    this.engineVersion,
    this.finalSnapshotIdentifier,
    this.globalClusterIdentifier,
    this.kmsKeyId,
    this.manageMasterUserPassword,
    this.masterPassword,
    this.masterPasswordWo,
    this.masterPasswordWoVersion,
    this.masterUsername,
    this.networkType,
    this.port,
    this.preferredBackupWindow,
    this.preferredMaintenanceWindow,
    this.region,
    this.restoreToPointInTime,
    this.serverlessV2ScalingConfiguration,
    this.skipFinalSnapshot,
    this.snapshotIdentifier,
    this.storageEncrypted,
    this.storageType,
    this.tags,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowMajorVersionUpgradeValue = allowMajorVersionUpgrade;
    if (allowMajorVersionUpgradeValue != null) {
      map['allowMajorVersionUpgrade'] = allowMajorVersionUpgradeValue;
    }
    final applyImmediatelyValue = applyImmediately;
    if (applyImmediatelyValue != null) {
      map['applyImmediately'] = applyImmediatelyValue;
    }
    final availabilityZonesValue = availabilityZones;
    if (availabilityZonesValue != null) {
      map['availabilityZones'] = availabilityZonesValue;
    }
    final backupRetentionPeriodValue = backupRetentionPeriod;
    if (backupRetentionPeriodValue != null) {
      map['backupRetentionPeriod'] = backupRetentionPeriodValue;
    }
    final clusterIdentifierValue = clusterIdentifier;
    if (clusterIdentifierValue != null) {
      map['clusterIdentifier'] = clusterIdentifierValue;
    }
    final clusterIdentifierPrefixValue = clusterIdentifierPrefix;
    if (clusterIdentifierPrefixValue != null) {
      map['clusterIdentifierPrefix'] = clusterIdentifierPrefixValue;
    }
    final clusterMembersValue = clusterMembers;
    if (clusterMembersValue != null) {
      map['clusterMembers'] = clusterMembersValue;
    }
    final dbClusterParameterGroupNameValue = dbClusterParameterGroupName;
    if (dbClusterParameterGroupNameValue != null) {
      map['dbClusterParameterGroupName'] = dbClusterParameterGroupNameValue;
    }
    final dbSubnetGroupNameValue = dbSubnetGroupName;
    if (dbSubnetGroupNameValue != null) {
      map['dbSubnetGroupName'] = dbSubnetGroupNameValue;
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final enabledCloudwatchLogsExportsValue = enabledCloudwatchLogsExports;
    if (enabledCloudwatchLogsExportsValue != null) {
      map['enabledCloudwatchLogsExports'] = enabledCloudwatchLogsExportsValue;
    }
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue;
    }
    final engineVersionValue = engineVersion;
    if (engineVersionValue != null) {
      map['engineVersion'] = engineVersionValue;
    }
    final finalSnapshotIdentifierValue = finalSnapshotIdentifier;
    if (finalSnapshotIdentifierValue != null) {
      map['finalSnapshotIdentifier'] = finalSnapshotIdentifierValue;
    }
    final globalClusterIdentifierValue = globalClusterIdentifier;
    if (globalClusterIdentifierValue != null) {
      map['globalClusterIdentifier'] = globalClusterIdentifierValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final manageMasterUserPasswordValue = manageMasterUserPassword;
    if (manageMasterUserPasswordValue != null) {
      map['manageMasterUserPassword'] = manageMasterUserPasswordValue;
    }
    final masterPasswordValue = masterPassword;
    if (masterPasswordValue != null) {
      map['masterPassword'] = masterPasswordValue;
    }
    final masterPasswordWoValue = masterPasswordWo;
    if (masterPasswordWoValue != null) {
      map['masterPasswordWo'] = masterPasswordWoValue;
    }
    final masterPasswordWoVersionValue = masterPasswordWoVersion;
    if (masterPasswordWoVersionValue != null) {
      map['masterPasswordWoVersion'] = masterPasswordWoVersionValue;
    }
    final masterUsernameValue = masterUsername;
    if (masterUsernameValue != null) {
      map['masterUsername'] = masterUsernameValue;
    }
    final networkTypeValue = networkType;
    if (networkTypeValue != null) {
      map['networkType'] = networkTypeValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final preferredBackupWindowValue = preferredBackupWindow;
    if (preferredBackupWindowValue != null) {
      map['preferredBackupWindow'] = preferredBackupWindowValue;
    }
    final preferredMaintenanceWindowValue = preferredMaintenanceWindow;
    if (preferredMaintenanceWindowValue != null) {
      map['preferredMaintenanceWindow'] = preferredMaintenanceWindowValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final restoreToPointInTimeValue = restoreToPointInTime;
    if (restoreToPointInTimeValue != null) {
      map['restoreToPointInTime'] = pulumi.Input.mapOptionalInputValue<
              ClusterRestoreToPointInTime, Map<String, dynamic>>(
          restoreToPointInTimeValue, (value) => value.toMap());
    }
    final serverlessV2ScalingConfigurationValue =
        serverlessV2ScalingConfiguration;
    if (serverlessV2ScalingConfigurationValue != null) {
      map['serverlessV2ScalingConfiguration'] =
          pulumi.Input.mapOptionalInputValue<
                  ClusterServerlessV2ScalingConfiguration,
                  Map<String, dynamic>>(
              serverlessV2ScalingConfigurationValue, (value) => value.toMap());
    }
    final skipFinalSnapshotValue = skipFinalSnapshot;
    if (skipFinalSnapshotValue != null) {
      map['skipFinalSnapshot'] = skipFinalSnapshotValue;
    }
    final snapshotIdentifierValue = snapshotIdentifier;
    if (snapshotIdentifierValue != null) {
      map['snapshotIdentifier'] = snapshotIdentifierValue;
    }
    final storageEncryptedValue = storageEncrypted;
    if (storageEncryptedValue != null) {
      map['storageEncrypted'] = storageEncryptedValue;
    }
    final storageTypeValue = storageType;
    if (storageTypeValue != null) {
      map['storageType'] = storageTypeValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcSecurityGroupIdsValue = vpcSecurityGroupIds;
    if (vpcSecurityGroupIdsValue != null) {
      map['vpcSecurityGroupIds'] = vpcSecurityGroupIdsValue;
    }
    return map;
  }

  factory ClusterDocdbArgs.fromMap(Map<String, dynamic> map) {
    return ClusterDocdbArgs(
      allowMajorVersionUpgrade:
          pulumi.Input.asOptionalInput<bool>(map['allowMajorVersionUpgrade']),
      applyImmediately:
          pulumi.Input.asOptionalInput<bool>(map['applyImmediately']),
      availabilityZones:
          pulumi.Input.asOptionalInput<List<String>>(map['availabilityZones']),
      backupRetentionPeriod:
          pulumi.Input.asOptionalInput<int>(map['backupRetentionPeriod']),
      clusterIdentifier:
          pulumi.Input.asOptionalInput<String>(map['clusterIdentifier']),
      clusterIdentifierPrefix:
          pulumi.Input.asOptionalInput<String>(map['clusterIdentifierPrefix']),
      clusterMembers:
          pulumi.Input.asOptionalInput<List<String>>(map['clusterMembers']),
      dbClusterParameterGroupName: pulumi.Input.asOptionalInput<String>(
          map['dbClusterParameterGroupName']),
      dbSubnetGroupName:
          pulumi.Input.asOptionalInput<String>(map['dbSubnetGroupName']),
      deletionProtection:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtection']),
      enabledCloudwatchLogsExports: pulumi.Input.asOptionalInput<List<String>>(
          map['enabledCloudwatchLogsExports']),
      engine: pulumi.Input.asOptionalInput<String>(map['engine']),
      engineVersion: pulumi.Input.asOptionalInput<String>(map['engineVersion']),
      finalSnapshotIdentifier:
          pulumi.Input.asOptionalInput<String>(map['finalSnapshotIdentifier']),
      globalClusterIdentifier:
          pulumi.Input.asOptionalInput<String>(map['globalClusterIdentifier']),
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      manageMasterUserPassword:
          pulumi.Input.asOptionalInput<bool>(map['manageMasterUserPassword']),
      masterPassword:
          pulumi.Input.asOptionalInput<String>(map['masterPassword']),
      masterPasswordWo:
          pulumi.Input.asOptionalInput<String>(map['masterPasswordWo']),
      masterPasswordWoVersion:
          pulumi.Input.asOptionalInput<int>(map['masterPasswordWoVersion']),
      masterUsername:
          pulumi.Input.asOptionalInput<String>(map['masterUsername']),
      networkType: pulumi.Input.asOptionalInput<String>(map['networkType']),
      port: pulumi.Input.asOptionalInput<int>(map['port']),
      preferredBackupWindow:
          pulumi.Input.asOptionalInput<String>(map['preferredBackupWindow']),
      preferredMaintenanceWindow: pulumi.Input.asOptionalInput<String>(
          map['preferredMaintenanceWindow']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      restoreToPointInTime:
          pulumi.Input.asOptionalInput<ClusterRestoreToPointInTime>(
              map['restoreToPointInTime']),
      serverlessV2ScalingConfiguration:
          pulumi.Input.asOptionalInput<ClusterServerlessV2ScalingConfiguration>(
              map['serverlessV2ScalingConfiguration']),
      skipFinalSnapshot:
          pulumi.Input.asOptionalInput<bool>(map['skipFinalSnapshot']),
      snapshotIdentifier:
          pulumi.Input.asOptionalInput<String>(map['snapshotIdentifier']),
      storageEncrypted:
          pulumi.Input.asOptionalInput<bool>(map['storageEncrypted']),
      storageType: pulumi.Input.asOptionalInput<String>(map['storageType']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcSecurityGroupIds: pulumi.Input.asOptionalInput<List<String>>(
          map['vpcSecurityGroupIds']),
    );
  }
}
