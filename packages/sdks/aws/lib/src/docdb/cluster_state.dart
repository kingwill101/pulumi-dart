// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_master_user_secret.dart';
import 'cluster_restore_to_point_in_time.dart';
import 'cluster_serverless_v2_scaling_configuration.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// A value that indicates whether major version upgrades are allowed. Constraints: You must allow major version upgrades when specifying a value for the EngineVersion parameter that is a different major version than the DB cluster's current version.
  final pulumi.Input<bool>? allowMajorVersionUpgrade;
  /// Specifies whether any cluster modifications
  /// are applied immediately, or during the next maintenance window. Default is
  /// `false`.
  final pulumi.Input<bool>? applyImmediately;
  /// Amazon Resource Name (ARN) of cluster
  final pulumi.Input<String>? arn;
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
  /// The DocumentDB Cluster Resource ID
  final pulumi.Input<String>? clusterResourceId;
  /// A cluster parameter group to associate with the cluster.
  final pulumi.Input<String>? dbClusterParameterGroupName;
  /// A DB subnet group to associate with this DB instance.
  final pulumi.Input<String>? dbSubnetGroupName;
  /// A boolean value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. Defaults to `false`.
  final pulumi.Input<bool>? deletionProtection;
  /// List of log types to export to cloudwatch. If omitted, no logs will be exported.
  /// The following log types are supported: `audit`, `profiler`.
  final pulumi.Input<List<String>>? enabledCloudwatchLogsExports;
  /// The DNS address of the DocumentDB instance
  final pulumi.Input<String>? endpoint;
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
  /// The Route53 Hosted Zone ID of the endpoint
  final pulumi.Input<String>? hostedZoneId;
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
  final pulumi.Input<List<ClusterMasterUserSecret>>? masterUserSecrets;
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
  /// A read-only endpoint for the DocumentDB cluster, automatically load-balanced across replicas
  final pulumi.Input<String>? readerEndpoint;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// List of VPC security groups to associate
  /// with the Cluster
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/docdb/create-db-cluster.html).
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  /// Creates a new [ClusterState].
  /// [allowMajorVersionUpgrade] A value that indicates whether major version upgrades are allowed. Constraints: You must allow major version upgrades when specifying a value for the EngineVersion parameter that is a different major version than the DB cluster's current version.
  /// [applyImmediately] Specifies whether any cluster modifications
  /// [arn] Amazon Resource Name (ARN) of cluster
  /// [availabilityZones] A list of EC2 Availability Zones that instances in the DB cluster can be created in.
  /// [backupRetentionPeriod] The days to retain backups for. Default `1`
  /// [clusterIdentifier] The cluster identifier. If omitted, the provider will assign a random, unique identifier.
  /// [clusterIdentifierPrefix] Creates a unique cluster identifier beginning with the specified prefix. Conflicts with `cluster_identifier`.
  /// [clusterMembers] List of DocumentDB Instances that are a part of this cluster
  /// [clusterResourceId] The DocumentDB Cluster Resource ID
  /// [dbClusterParameterGroupName] A cluster parameter group to associate with the cluster.
  /// [dbSubnetGroupName] A DB subnet group to associate with this DB instance.
  /// [deletionProtection] A boolean value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. Defaults to `false`.
  /// [enabledCloudwatchLogsExports] List of log types to export to cloudwatch. If omitted, no logs will be exported.
  /// [endpoint] The DNS address of the DocumentDB instance
  /// [engine] The name of the database engine to be used for this DB cluster. Defaults to `docdb`. Valid values: `docdb`.
  /// [engineVersion] The database engine version. Updating this argument results in an outage.
  /// [finalSnapshotIdentifier] The name of your final DB snapshot
  /// [globalClusterIdentifier] The global cluster identifier specified on `aws.docdb.GlobalCluster`.
  /// [hostedZoneId] The Route53 Hosted Zone ID of the endpoint
  /// [kmsKeyId] The ARN for the KMS encryption key. When specifying `kms_key_id`, `storage_encrypted` needs to be set to true.
  /// [manageMasterUserPassword] Set to `true` to allow Amazon DocumentDB to manage the master user password in AWS Secrets Manager. Cannot be set if `master_password` or `master_password_wo` is provided.
  /// [masterPassword] Password for the master DB user. Note that this may
  /// [masterPasswordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [masterPasswordWoVersion] Used together with `master_password_wo` to trigger an update. Increment this value when an update to the `master_password_wo` is required.
  /// [masterUserSecrets] Optional.
  /// [masterUsername] Username for the master DB user.
  /// [networkType] The network type of the DB cluster (`IPV4` or `DUAL`).
  /// [port] The port on which the DB accepts connections
  /// [preferredBackupWindow] The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter.Time in UTC
  /// [preferredMaintenanceWindow] The weekly time range during which system maintenance can occur, in (UTC) e.g., wed:04:00-wed:04:30
  /// [readerEndpoint] A read-only endpoint for the DocumentDB cluster, automatically load-balanced across replicas
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restoreToPointInTime] A configuration block for restoring a DB instance to an arbitrary point in time. Requires the `identifier` argument to be set with the name of the new DB instance to be created. See Restore To Point In Time below for details.
  /// [serverlessV2ScalingConfiguration] Scaling configuration of an Amazon DocumentDB Serverless cluster. See Serverless V2 Scaling Configuration below for details.
  /// [skipFinalSnapshot] Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from `final_snapshot_identifier`. Default is `false`.
  /// [snapshotIdentifier] Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot. Automated snapshots **should not** be used for this attribute, unless from a different cluster. Automated snapshots are deleted as part of cluster destruction when the resource is replaced.
  /// [storageEncrypted] Specifies whether the DB cluster is encrypted. The default is `false`.
  /// [storageType] The storage type to associate with the DB cluster. Valid values: `standard`, `iopt1`.
  /// [tags] A map of tags to assign to the DB cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcSecurityGroupIds] List of VPC security groups to associate
  ClusterState({
    pulumi.Output<bool>? allowMajorVersionUpgrade,
    pulumi.Output<bool>? applyImmediately,
    pulumi.Output<String>? arn,
    pulumi.Output<List<String>>? availabilityZones,
    pulumi.Output<int>? backupRetentionPeriod,
    pulumi.Output<String>? clusterIdentifier,
    pulumi.Output<String>? clusterIdentifierPrefix,
    pulumi.Output<List<String>>? clusterMembers,
    pulumi.Output<String>? clusterResourceId,
    pulumi.Output<String>? dbClusterParameterGroupName,
    pulumi.Output<String>? dbSubnetGroupName,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<List<String>>? enabledCloudwatchLogsExports,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? finalSnapshotIdentifier,
    pulumi.Output<String>? globalClusterIdentifier,
    pulumi.Output<String>? hostedZoneId,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<bool>? manageMasterUserPassword,
    pulumi.Output<String>? masterPassword,
    pulumi.Output<String>? masterPasswordWo,
    pulumi.Output<int>? masterPasswordWoVersion,
    pulumi.Output<List<ClusterMasterUserSecret>>? masterUserSecrets,
    pulumi.Output<String>? masterUsername,
    pulumi.Output<String>? networkType,
    pulumi.Output<int>? port,
    pulumi.Output<String>? preferredBackupWindow,
    pulumi.Output<String>? preferredMaintenanceWindow,
    pulumi.Output<String>? readerEndpoint,
    pulumi.Output<String>? region,
    pulumi.Output<ClusterRestoreToPointInTime>? restoreToPointInTime,
    pulumi.Output<ClusterServerlessV2ScalingConfiguration>? serverlessV2ScalingConfiguration,
    pulumi.Output<bool>? skipFinalSnapshot,
    pulumi.Output<String>? snapshotIdentifier,
    pulumi.Output<bool>? storageEncrypted,
    pulumi.Output<String>? storageType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<String>>? vpcSecurityGroupIds,
  }) :
      allowMajorVersionUpgrade = pulumi.Input.asOptionalInput<bool>(allowMajorVersionUpgrade),
      applyImmediately = pulumi.Input.asOptionalInput<bool>(applyImmediately),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      availabilityZones = pulumi.Input.asOptionalInput<List<String>>(availabilityZones),
      backupRetentionPeriod = pulumi.Input.asOptionalInput<int>(backupRetentionPeriod),
      clusterIdentifier = pulumi.Input.asOptionalInput<String>(clusterIdentifier),
      clusterIdentifierPrefix = pulumi.Input.asOptionalInput<String>(clusterIdentifierPrefix),
      clusterMembers = pulumi.Input.asOptionalInput<List<String>>(clusterMembers),
      clusterResourceId = pulumi.Input.asOptionalInput<String>(clusterResourceId),
      dbClusterParameterGroupName = pulumi.Input.asOptionalInput<String>(dbClusterParameterGroupName),
      dbSubnetGroupName = pulumi.Input.asOptionalInput<String>(dbSubnetGroupName),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      enabledCloudwatchLogsExports = pulumi.Input.asOptionalInput<List<String>>(enabledCloudwatchLogsExports),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      finalSnapshotIdentifier = pulumi.Input.asOptionalInput<String>(finalSnapshotIdentifier),
      globalClusterIdentifier = pulumi.Input.asOptionalInput<String>(globalClusterIdentifier),
      hostedZoneId = pulumi.Input.asOptionalInput<String>(hostedZoneId),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      manageMasterUserPassword = pulumi.Input.asOptionalInput<bool>(manageMasterUserPassword),
      masterPassword = pulumi.Input.asOptionalInput<String>(masterPassword),
      masterPasswordWo = pulumi.Input.asOptionalInput<String>(masterPasswordWo),
      masterPasswordWoVersion = pulumi.Input.asOptionalInput<int>(masterPasswordWoVersion),
      masterUserSecrets = pulumi.Input.asOptionalInput<List<ClusterMasterUserSecret>>(masterUserSecrets),
      masterUsername = pulumi.Input.asOptionalInput<String>(masterUsername),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      port = pulumi.Input.asOptionalInput<int>(port),
      preferredBackupWindow = pulumi.Input.asOptionalInput<String>(preferredBackupWindow),
      preferredMaintenanceWindow = pulumi.Input.asOptionalInput<String>(preferredMaintenanceWindow),
      readerEndpoint = pulumi.Input.asOptionalInput<String>(readerEndpoint),
      region = pulumi.Input.asOptionalInput<String>(region),
      restoreToPointInTime = pulumi.Input.asOptionalInput<ClusterRestoreToPointInTime>(restoreToPointInTime),
      serverlessV2ScalingConfiguration = pulumi.Input.asOptionalInput<ClusterServerlessV2ScalingConfiguration>(serverlessV2ScalingConfiguration),
      skipFinalSnapshot = pulumi.Input.asOptionalInput<bool>(skipFinalSnapshot),
      snapshotIdentifier = pulumi.Input.asOptionalInput<String>(snapshotIdentifier),
      storageEncrypted = pulumi.Input.asOptionalInput<bool>(storageEncrypted),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcSecurityGroupIds = pulumi.Input.asOptionalInput<List<String>>(vpcSecurityGroupIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowMajorVersionUpgrade': ?allowMajorVersionUpgrade,
      'applyImmediately': ?applyImmediately,
      'arn': ?arn,
      'availabilityZones': ?availabilityZones,
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'clusterIdentifier': ?clusterIdentifier,
      'clusterIdentifierPrefix': ?clusterIdentifierPrefix,
      'clusterMembers': ?clusterMembers,
      'clusterResourceId': ?clusterResourceId,
      'dbClusterParameterGroupName': ?dbClusterParameterGroupName,
      'dbSubnetGroupName': ?dbSubnetGroupName,
      'deletionProtection': ?deletionProtection,
      'enabledCloudwatchLogsExports': ?enabledCloudwatchLogsExports,
      'endpoint': ?endpoint,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'finalSnapshotIdentifier': ?finalSnapshotIdentifier,
      'globalClusterIdentifier': ?globalClusterIdentifier,
      'hostedZoneId': ?hostedZoneId,
      'kmsKeyId': ?kmsKeyId,
      'manageMasterUserPassword': ?manageMasterUserPassword,
      'masterPassword': ?masterPassword,
      'masterPasswordWo': ?masterPasswordWo,
      'masterPasswordWoVersion': ?masterPasswordWoVersion,
      'masterUserSecrets': ?pulumi.Input.mapOptionalInputValue<List<ClusterMasterUserSecret>, List<Map<String, dynamic>>>(masterUserSecrets, (value) => pulumi.Input.encodeList<ClusterMasterUserSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'masterUsername': ?masterUsername,
      'networkType': ?networkType,
      'port': ?port,
      'preferredBackupWindow': ?preferredBackupWindow,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'readerEndpoint': ?readerEndpoint,
      'region': ?region,
      'restoreToPointInTime': ?pulumi.Input.mapOptionalInputValue<ClusterRestoreToPointInTime, Map<String, dynamic>>(restoreToPointInTime, (value) => value.toMap()),
      'serverlessV2ScalingConfiguration': ?pulumi.Input.mapOptionalInputValue<ClusterServerlessV2ScalingConfiguration, Map<String, dynamic>>(serverlessV2ScalingConfiguration, (value) => value.toMap()),
      'skipFinalSnapshot': ?skipFinalSnapshot,
      'snapshotIdentifier': ?snapshotIdentifier,
      'storageEncrypted': ?storageEncrypted,
      'storageType': ?storageType,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      allowMajorVersionUpgrade: map['allowMajorVersionUpgrade'] == null ? null : pulumi.Output.create<bool>(map['allowMajorVersionUpgrade'] as bool),
      applyImmediately: map['applyImmediately'] == null ? null : pulumi.Output.create<bool>(map['applyImmediately'] as bool),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      availabilityZones: map['availabilityZones'] == null ? null : pulumi.Output.create<List<String>>((map['availabilityZones'] as List).cast<String>()),
      backupRetentionPeriod: map['backupRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['backupRetentionPeriod'] as int),
      clusterIdentifier: map['clusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['clusterIdentifier'] as String),
      clusterIdentifierPrefix: map['clusterIdentifierPrefix'] == null ? null : pulumi.Output.create<String>(map['clusterIdentifierPrefix'] as String),
      clusterMembers: map['clusterMembers'] == null ? null : pulumi.Output.create<List<String>>((map['clusterMembers'] as List).cast<String>()),
      clusterResourceId: map['clusterResourceId'] == null ? null : pulumi.Output.create<String>(map['clusterResourceId'] as String),
      dbClusterParameterGroupName: map['dbClusterParameterGroupName'] == null ? null : pulumi.Output.create<String>(map['dbClusterParameterGroupName'] as String),
      dbSubnetGroupName: map['dbSubnetGroupName'] == null ? null : pulumi.Output.create<String>(map['dbSubnetGroupName'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      enabledCloudwatchLogsExports: map['enabledCloudwatchLogsExports'] == null ? null : pulumi.Output.create<List<String>>((map['enabledCloudwatchLogsExports'] as List).cast<String>()),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      finalSnapshotIdentifier: map['finalSnapshotIdentifier'] == null ? null : pulumi.Output.create<String>(map['finalSnapshotIdentifier'] as String),
      globalClusterIdentifier: map['globalClusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['globalClusterIdentifier'] as String),
      hostedZoneId: map['hostedZoneId'] == null ? null : pulumi.Output.create<String>(map['hostedZoneId'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      manageMasterUserPassword: map['manageMasterUserPassword'] == null ? null : pulumi.Output.create<bool>(map['manageMasterUserPassword'] as bool),
      masterPassword: map['masterPassword'] == null ? null : pulumi.Output.create<String>(map['masterPassword'] as String),
      masterPasswordWo: map['masterPasswordWo'] == null ? null : pulumi.Output.create<String>(map['masterPasswordWo'] as String),
      masterPasswordWoVersion: map['masterPasswordWoVersion'] == null ? null : pulumi.Output.create<int>(map['masterPasswordWoVersion'] as int),
      masterUserSecrets: map['masterUserSecrets'] == null ? null : pulumi.Output.create<List<ClusterMasterUserSecret>>(pulumi.Input.decodeList<ClusterMasterUserSecret>(map['masterUserSecrets'], (value) => ClusterMasterUserSecret.fromMap((value as Map).cast<String, dynamic>()))),
      masterUsername: map['masterUsername'] == null ? null : pulumi.Output.create<String>(map['masterUsername'] as String),
      networkType: map['networkType'] == null ? null : pulumi.Output.create<String>(map['networkType'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      preferredBackupWindow: map['preferredBackupWindow'] == null ? null : pulumi.Output.create<String>(map['preferredBackupWindow'] as String),
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null ? null : pulumi.Output.create<String>(map['preferredMaintenanceWindow'] as String),
      readerEndpoint: map['readerEndpoint'] == null ? null : pulumi.Output.create<String>(map['readerEndpoint'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      restoreToPointInTime: map['restoreToPointInTime'] == null ? null : pulumi.Output.create<ClusterRestoreToPointInTime>(ClusterRestoreToPointInTime.fromMap((map['restoreToPointInTime'] as Map).cast<String, dynamic>())),
      serverlessV2ScalingConfiguration: map['serverlessV2ScalingConfiguration'] == null ? null : pulumi.Output.create<ClusterServerlessV2ScalingConfiguration>(ClusterServerlessV2ScalingConfiguration.fromMap((map['serverlessV2ScalingConfiguration'] as Map).cast<String, dynamic>())),
      skipFinalSnapshot: map['skipFinalSnapshot'] == null ? null : pulumi.Output.create<bool>(map['skipFinalSnapshot'] as bool),
      snapshotIdentifier: map['snapshotIdentifier'] == null ? null : pulumi.Output.create<String>(map['snapshotIdentifier'] as String),
      storageEncrypted: map['storageEncrypted'] == null ? null : pulumi.Output.create<bool>(map['storageEncrypted'] as bool),
      storageType: map['storageType'] == null ? null : pulumi.Output.create<String>(map['storageType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['vpcSecurityGroupIds'] as List).cast<String>()),
    );
  }
}

