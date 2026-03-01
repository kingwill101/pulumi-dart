// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_restore_to_point_in_time.dart';
import 'cluster_serverless_v2_scaling_configuration.dart';

/// {@template pulumi_docdb_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_docdb_cluster_cluster_args_doc}
class ClusterArgs {
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
  final pulumi.Input<ClusterServerlessV2ScalingConfiguration>? serverlessV2ScalingConfiguration;
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

  /// Creates a new [ClusterArgs].
  /// [allowMajorVersionUpgrade] A value that indicates whether major version upgrades are allowed. Constraints: You must allow major version upgrades when specifying a value for the EngineVersion parameter that is a different major version than the DB cluster's current version.
  /// [applyImmediately] Specifies whether any cluster modifications
  /// [availabilityZones] A list of EC2 Availability Zones that instances in the DB cluster can be created in.
  /// [backupRetentionPeriod] The days to retain backups for. Default `1`
  /// [clusterIdentifier] The cluster identifier. If omitted, the provider will assign a random, unique identifier.
  /// [clusterIdentifierPrefix] Creates a unique cluster identifier beginning with the specified prefix. Conflicts with `cluster_identifier`.
  /// [clusterMembers] List of DocumentDB Instances that are a part of this cluster
  /// [dbClusterParameterGroupName] A cluster parameter group to associate with the cluster.
  /// [dbSubnetGroupName] A DB subnet group to associate with this DB instance.
  /// [deletionProtection] A boolean value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. Defaults to `false`.
  /// [enabledCloudwatchLogsExports] List of log types to export to cloudwatch. If omitted, no logs will be exported.
  /// [engine] The name of the database engine to be used for this DB cluster. Defaults to `docdb`. Valid values: `docdb`.
  /// [engineVersion] The database engine version. Updating this argument results in an outage.
  /// [finalSnapshotIdentifier] The name of your final DB snapshot
  /// [globalClusterIdentifier] The global cluster identifier specified on `aws.docdb.GlobalCluster`.
  /// [kmsKeyId] The ARN for the KMS encryption key. When specifying `kms_key_id`, `storage_encrypted` needs to be set to true.
  /// [manageMasterUserPassword] Set to `true` to allow Amazon DocumentDB to manage the master user password in AWS Secrets Manager. Cannot be set if `master_password` or `master_password_wo` is provided.
  /// [masterPassword] Password for the master DB user. Note that this may
  /// [masterPasswordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [masterPasswordWoVersion] Used together with `master_password_wo` to trigger an update. Increment this value when an update to the `master_password_wo` is required.
  /// [masterUsername] Username for the master DB user.
  /// [networkType] The network type of the DB cluster (`IPV4` or `DUAL`).
  /// [port] The port on which the DB accepts connections
  /// [preferredBackupWindow] The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter.Time in UTC
  /// [preferredMaintenanceWindow] The weekly time range during which system maintenance can occur, in (UTC) e.g., wed:04:00-wed:04:30
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restoreToPointInTime] A configuration block for restoring a DB instance to an arbitrary point in time. Requires the `identifier` argument to be set with the name of the new DB instance to be created. See Restore To Point In Time below for details.
  /// [serverlessV2ScalingConfiguration] Scaling configuration of an Amazon DocumentDB Serverless cluster. See Serverless V2 Scaling Configuration below for details.
  /// [skipFinalSnapshot] Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from `final_snapshot_identifier`. Default is `false`.
  /// [snapshotIdentifier] Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot. Automated snapshots **should not** be used for this attribute, unless from a different cluster. Automated snapshots are deleted as part of cluster destruction when the resource is replaced.
  /// [storageEncrypted] Specifies whether the DB cluster is encrypted. The default is `false`.
  /// [storageType] The storage type to associate with the DB cluster. Valid values: `standard`, `iopt1`.
  /// [tags] A map of tags to assign to the DB cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcSecurityGroupIds] List of VPC security groups to associate
  ClusterArgs({
    bool? allowMajorVersionUpgrade,
    bool? applyImmediately,
    List<String>? availabilityZones,
    int? backupRetentionPeriod,
    String? clusterIdentifier,
    String? clusterIdentifierPrefix,
    List<String>? clusterMembers,
    String? dbClusterParameterGroupName,
    String? dbSubnetGroupName,
    bool? deletionProtection,
    List<String>? enabledCloudwatchLogsExports,
    String? engine,
    String? engineVersion,
    String? finalSnapshotIdentifier,
    String? globalClusterIdentifier,
    String? kmsKeyId,
    bool? manageMasterUserPassword,
    String? masterPassword,
    String? masterPasswordWo,
    int? masterPasswordWoVersion,
    String? masterUsername,
    String? networkType,
    int? port,
    String? preferredBackupWindow,
    String? preferredMaintenanceWindow,
    String? region,
    ClusterRestoreToPointInTime? restoreToPointInTime,
    ClusterServerlessV2ScalingConfiguration? serverlessV2ScalingConfiguration,
    bool? skipFinalSnapshot,
    String? snapshotIdentifier,
    bool? storageEncrypted,
    String? storageType,
    Map<String, String>? tags,
    List<String>? vpcSecurityGroupIds,
  }) :
      allowMajorVersionUpgrade = pulumi.Input.asOptionalInput<bool>(allowMajorVersionUpgrade),
      applyImmediately = pulumi.Input.asOptionalInput<bool>(applyImmediately),
      availabilityZones = pulumi.Input.asOptionalInput<List<String>>(availabilityZones),
      backupRetentionPeriod = pulumi.Input.asOptionalInput<int>(backupRetentionPeriod),
      clusterIdentifier = pulumi.Input.asOptionalInput<String>(clusterIdentifier),
      clusterIdentifierPrefix = pulumi.Input.asOptionalInput<String>(clusterIdentifierPrefix),
      clusterMembers = pulumi.Input.asOptionalInput<List<String>>(clusterMembers),
      dbClusterParameterGroupName = pulumi.Input.asOptionalInput<String>(dbClusterParameterGroupName),
      dbSubnetGroupName = pulumi.Input.asOptionalInput<String>(dbSubnetGroupName),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      enabledCloudwatchLogsExports = pulumi.Input.asOptionalInput<List<String>>(enabledCloudwatchLogsExports),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      finalSnapshotIdentifier = pulumi.Input.asOptionalInput<String>(finalSnapshotIdentifier),
      globalClusterIdentifier = pulumi.Input.asOptionalInput<String>(globalClusterIdentifier),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      manageMasterUserPassword = pulumi.Input.asOptionalInput<bool>(manageMasterUserPassword),
      masterPassword = pulumi.Input.asOptionalInput<String>(masterPassword),
      masterPasswordWo = pulumi.Input.asOptionalInput<String>(masterPasswordWo),
      masterPasswordWoVersion = pulumi.Input.asOptionalInput<int>(masterPasswordWoVersion),
      masterUsername = pulumi.Input.asOptionalInput<String>(masterUsername),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      port = pulumi.Input.asOptionalInput<int>(port),
      preferredBackupWindow = pulumi.Input.asOptionalInput<String>(preferredBackupWindow),
      preferredMaintenanceWindow = pulumi.Input.asOptionalInput<String>(preferredMaintenanceWindow),
      region = pulumi.Input.asOptionalInput<String>(region),
      restoreToPointInTime = pulumi.Input.asOptionalInput<ClusterRestoreToPointInTime>(restoreToPointInTime),
      serverlessV2ScalingConfiguration = pulumi.Input.asOptionalInput<ClusterServerlessV2ScalingConfiguration>(serverlessV2ScalingConfiguration),
      skipFinalSnapshot = pulumi.Input.asOptionalInput<bool>(skipFinalSnapshot),
      snapshotIdentifier = pulumi.Input.asOptionalInput<String>(snapshotIdentifier),
      storageEncrypted = pulumi.Input.asOptionalInput<bool>(storageEncrypted),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcSecurityGroupIds = pulumi.Input.asOptionalInput<List<String>>(vpcSecurityGroupIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowMajorVersionUpgrade': ?allowMajorVersionUpgrade,
      'applyImmediately': ?applyImmediately,
      'availabilityZones': ?availabilityZones,
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'clusterIdentifier': ?clusterIdentifier,
      'clusterIdentifierPrefix': ?clusterIdentifierPrefix,
      'clusterMembers': ?clusterMembers,
      'dbClusterParameterGroupName': ?dbClusterParameterGroupName,
      'dbSubnetGroupName': ?dbSubnetGroupName,
      'deletionProtection': ?deletionProtection,
      'enabledCloudwatchLogsExports': ?enabledCloudwatchLogsExports,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'finalSnapshotIdentifier': ?finalSnapshotIdentifier,
      'globalClusterIdentifier': ?globalClusterIdentifier,
      'kmsKeyId': ?kmsKeyId,
      'manageMasterUserPassword': ?manageMasterUserPassword,
      'masterPassword': ?masterPassword,
      'masterPasswordWo': ?masterPasswordWo,
      'masterPasswordWoVersion': ?masterPasswordWoVersion,
      'masterUsername': ?masterUsername,
      'networkType': ?networkType,
      'port': ?port,
      'preferredBackupWindow': ?preferredBackupWindow,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'region': ?region,
      'restoreToPointInTime': ?pulumi.Input.mapOptionalInputValue<ClusterRestoreToPointInTime, Map<String, dynamic>>(restoreToPointInTime, (value) => value.toMap()),
      'serverlessV2ScalingConfiguration': ?pulumi.Input.mapOptionalInputValue<ClusterServerlessV2ScalingConfiguration, Map<String, dynamic>>(serverlessV2ScalingConfiguration, (value) => value.toMap()),
      'skipFinalSnapshot': ?skipFinalSnapshot,
      'snapshotIdentifier': ?snapshotIdentifier,
      'storageEncrypted': ?storageEncrypted,
      'storageType': ?storageType,
      'tags': ?tags,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      allowMajorVersionUpgrade: map['allowMajorVersionUpgrade'] == null ? null : map['allowMajorVersionUpgrade'] as bool,
      applyImmediately: map['applyImmediately'] == null ? null : map['applyImmediately'] as bool,
      availabilityZones: map['availabilityZones'] == null ? null : (map['availabilityZones'] as List).cast<String>(),
      backupRetentionPeriod: map['backupRetentionPeriod'] == null ? null : map['backupRetentionPeriod'] as int,
      clusterIdentifier: map['clusterIdentifier'] == null ? null : map['clusterIdentifier'] as String,
      clusterIdentifierPrefix: map['clusterIdentifierPrefix'] == null ? null : map['clusterIdentifierPrefix'] as String,
      clusterMembers: map['clusterMembers'] == null ? null : (map['clusterMembers'] as List).cast<String>(),
      dbClusterParameterGroupName: map['dbClusterParameterGroupName'] == null ? null : map['dbClusterParameterGroupName'] as String,
      dbSubnetGroupName: map['dbSubnetGroupName'] == null ? null : map['dbSubnetGroupName'] as String,
      deletionProtection: map['deletionProtection'] == null ? null : map['deletionProtection'] as bool,
      enabledCloudwatchLogsExports: map['enabledCloudwatchLogsExports'] == null ? null : (map['enabledCloudwatchLogsExports'] as List).cast<String>(),
      engine: map['engine'] == null ? null : map['engine'] as String,
      engineVersion: map['engineVersion'] == null ? null : map['engineVersion'] as String,
      finalSnapshotIdentifier: map['finalSnapshotIdentifier'] == null ? null : map['finalSnapshotIdentifier'] as String,
      globalClusterIdentifier: map['globalClusterIdentifier'] == null ? null : map['globalClusterIdentifier'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      manageMasterUserPassword: map['manageMasterUserPassword'] == null ? null : map['manageMasterUserPassword'] as bool,
      masterPassword: map['masterPassword'] == null ? null : map['masterPassword'] as String,
      masterPasswordWo: map['masterPasswordWo'] == null ? null : map['masterPasswordWo'] as String,
      masterPasswordWoVersion: map['masterPasswordWoVersion'] == null ? null : map['masterPasswordWoVersion'] as int,
      masterUsername: map['masterUsername'] == null ? null : map['masterUsername'] as String,
      networkType: map['networkType'] == null ? null : map['networkType'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      preferredBackupWindow: map['preferredBackupWindow'] == null ? null : map['preferredBackupWindow'] as String,
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null ? null : map['preferredMaintenanceWindow'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      restoreToPointInTime: map['restoreToPointInTime'] == null ? null : ClusterRestoreToPointInTime.fromMap((map['restoreToPointInTime'] as Map).cast<String, dynamic>()),
      serverlessV2ScalingConfiguration: map['serverlessV2ScalingConfiguration'] == null ? null : ClusterServerlessV2ScalingConfiguration.fromMap((map['serverlessV2ScalingConfiguration'] as Map).cast<String, dynamic>()),
      skipFinalSnapshot: map['skipFinalSnapshot'] == null ? null : map['skipFinalSnapshot'] as bool,
      snapshotIdentifier: map['snapshotIdentifier'] == null ? null : map['snapshotIdentifier'] as String,
      storageEncrypted: map['storageEncrypted'] == null ? null : map['storageEncrypted'] as bool,
      storageType: map['storageType'] == null ? null : map['storageType'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null ? null : (map['vpcSecurityGroupIds'] as List).cast<String>(),
    );
  }
}

