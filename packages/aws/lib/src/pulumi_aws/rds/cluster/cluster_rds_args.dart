// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_restore_to_point_in_time/cluster_restore_to_point_in_time_rds.dart';
import '../cluster_s3_import/cluster_s3_import.dart';
import '../cluster_scaling_configuration/cluster_scaling_configuration.dart';
import '../cluster_serverlessv2_scaling_configuration/cluster_serverlessv2_scaling_configuration.dart';

/// The set of arguments for Cluster.
class ClusterRdsArgs {
  /// The amount of storage in gibibytes (GiB) to allocate to each DB instance in the Multi-AZ DB cluster.
  final pulumi.Input<int>? allocatedStorage;

  /// Enable to allow major engine version upgrades when changing engine versions. Defaults to `false`.
  final pulumi.Input<bool>? allowMajorVersionUpgrade;

  /// Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. Default is `false`. See [Amazon RDS Documentation for more information.](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html)
  final pulumi.Input<bool>? applyImmediately;

  /// List of EC2 Availability Zones for the DB cluster storage where DB cluster instances can be created.
  /// RDS automatically assigns 3 AZs if less than 3 AZs are configured, which will show as a difference requiring resource recreation next pulumi up.
  /// We recommend specifying 3 AZs or using the `lifecycle` configuration block `ignore_changes` argument if necessary.
  /// A maximum of 3 AZs can be configured.
  final pulumi.Input<List<String>>? availabilityZones;

  /// Target backtrack window, in seconds. Only available for `aurora` and `aurora-mysql` engines currently. To disable backtracking, set this value to `0`. Defaults to `0`. Must be between `0` and `259200` (72 hours)
  final pulumi.Input<int>? backtrackWindow;

  /// Days to retain backups for. Default `1`
  final pulumi.Input<int>? backupRetentionPeriod;

  /// The CA certificate identifier to use for the DB cluster's server certificate.
  final pulumi.Input<String>? caCertificateIdentifier;

  /// The cluster identifier. If omitted, this provider will assign a random, unique identifier.
  final pulumi.Input<String>? clusterIdentifier;

  /// Creates a unique cluster identifier beginning with the specified prefix. Conflicts with `cluster_identifier`.
  final pulumi.Input<String>? clusterIdentifierPrefix;

  /// List of RDS Instances that are a part of this cluster
  final pulumi.Input<List<String>>? clusterMembers;

  /// Specifies the scalability mode of the Aurora DB cluster. When set to `limitless`, the cluster operates as an Aurora Limitless Database. When set to `standard` (the default), the cluster uses normal DB instance creation. Valid values: `limitless`, `standard`.
  final pulumi.Input<String>? clusterScalabilityType;

  /// Copy all Cluster `tags` to snapshots. Default is `false`.
  final pulumi.Input<bool>? copyTagsToSnapshot;

  /// The mode of Database Insights to enable for the DB cluster. Valid values: `standard`, `advanced`.
  final pulumi.Input<String>? databaseInsightsMode;

  /// Name for an automatically created database on cluster creation. There are different naming restrictions per database engine: [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints)
  final pulumi.Input<String>? databaseName;

  /// The compute and memory capacity of each DB instance in the Multi-AZ DB cluster, for example `db.m6g.xlarge`. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes and availability for your engine, see [DB instance class](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html) in the Amazon RDS User Guide.
  final pulumi.Input<String>? dbClusterInstanceClass;

  /// A cluster parameter group to associate with the cluster.
  final pulumi.Input<String>? dbClusterParameterGroupName;

  /// Instance parameter group to associate with all instances of the DB cluster. The `db_instance_parameter_group_name` parameter is only valid in combination with the `allow_major_version_upgrade` parameter.
  final pulumi.Input<String>? dbInstanceParameterGroupName;

  /// DB subnet group to associate with this DB cluster.
  /// **NOTE:** This must match the `db_subnet_group_name` specified on every `aws.rds.ClusterInstance` in the cluster.
  final pulumi.Input<String>? dbSubnetGroupName;

  /// For use with RDS Custom.
  final pulumi.Input<String>? dbSystemId;

  /// Specifies whether to remove automated backups immediately after the DB cluster is deleted. Default is `true`.
  final pulumi.Input<bool>? deleteAutomatedBackups;

  /// If the DB cluster should have deletion protection enabled.
  /// The database can't be deleted when this value is set to `true`.
  /// The default is `false`.
  final pulumi.Input<bool>? deletionProtection;

  /// The ID of the Directory Service Active Directory domain to create the cluster in.
  final pulumi.Input<String>? domain;

  /// The name of the IAM role to be used when making API calls to the Directory Service.
  final pulumi.Input<String>? domainIamRoleName;

  /// Whether cluster should forward writes to an associated global cluster. Applied to secondary clusters to enable them to forward writes to an `aws.rds.GlobalCluster`'s primary cluster. See the [User Guide for Aurora](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-write-forwarding.html) for more information.
  final pulumi.Input<bool>? enableGlobalWriteForwarding;

  /// Enable HTTP endpoint (data API). Only valid for some combinations of `engine_mode`, `engine` and `engine_version` and only available in some regions. See the [Region and version availability](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html#data-api.regions) section of the documentation. This option also does not work with any of these options specified: `snapshot_identifier`, `replication_source_identifier`, `s3_import`.
  final pulumi.Input<bool>? enableHttpEndpoint;

  /// Whether read replicas can forward write operations to the writer DB instance in the DB cluster. By default, write operations aren't allowed on reader DB instances. See the [User Guide for Aurora](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-mysql-write-forwarding.html) for more information. **NOTE:** Local write forwarding requires Aurora MySQL version 3.04 or higher.
  final pulumi.Input<bool>? enableLocalWriteForwarding;

  /// Set of log types to export to cloudwatch. If omitted, no logs will be exported. The following log types are supported: `audit`, `error`, `general`, `iam-db-auth-error`, `instance`, `postgresql` (PostgreSQL), `slowquery`.
  final pulumi.Input<List<String>>? enabledCloudwatchLogsExports;

  /// Name of the database engine to be used for this DB cluster. Valid Values: `aurora-mysql`, `aurora-postgresql`, `mysql`, `postgres`. (Note that `mysql` and `postgres` are Multi-AZ RDS clusters).
  final pulumi.Input<String> engine;

  /// The life cycle type for this DB instance. This setting is valid for cluster types Aurora DB clusters and Multi-AZ DB clusters. Valid values are `open-source-rds-extended-support`, `open-source-rds-extended-support-disabled`. Default value is `open-source-rds-extended-support`. [Using Amazon RDS Extended Support]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html
  final pulumi.Input<String>? engineLifecycleSupport;

  /// Database engine mode. Valid values: `global` (only valid for Aurora MySQL 1.21 and earlier), `parallelquery`, `provisioned`, `serverless`. Defaults to: `provisioned`. Specify an empty value (`""`) for no engine mode. See the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html) for limitations when using `serverless`.
  final pulumi.Input<String>? engineMode;

  /// Database engine version. Updating this argument results in an outage. See the [Aurora MySQL](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Updates.html) and [Aurora Postgres](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraPostgreSQL.Updates.html) documentation for your configured engine to determine this value, or by running `aws rds describe-db-engine-versions`. For example with Aurora MySQL 2, a potential value for this argument is `5.7.mysql_aurora.2.03.2`. The value can contain a partial version where supported by the API. The actual engine version used is returned in the attribute `engine_version_actual`, see Attribute Reference below.
  final pulumi.Input<String>? engineVersion;

  /// Name of your final DB snapshot when this DB cluster is deleted. If omitted, no final snapshot will be made.
  final pulumi.Input<String>? finalSnapshotIdentifier;

  /// Global cluster identifier specified on `aws.rds.GlobalCluster`.
  final pulumi.Input<String>? globalClusterIdentifier;

  /// Specifies whether or not mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled. Please see [AWS Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html) for availability and limitations.
  final pulumi.Input<bool>? iamDatabaseAuthenticationEnabled;

  /// List of ARNs for the IAM roles to associate to the RDS Cluster.
  final pulumi.Input<List<String>>? iamRoles;

  /// Amount of Provisioned IOPS (input/output operations per second) to be initially allocated for each DB instance in the Multi-AZ DB cluster. For information about valid Iops values, see [Amazon RDS Provisioned IOPS storage to improve performance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS) in the Amazon RDS User Guide. (This setting is required to create a Multi-AZ DB cluster). Must be a multiple between .5 and 50 of the storage amount for the DB cluster.
  final pulumi.Input<int>? iops;

  /// ARN for the KMS encryption key. When specifying `kms_key_id`, `storage_encrypted` needs to be set to true.
  final pulumi.Input<String>? kmsKeyId;

  /// Set to true to allow RDS to manage the master user password in Secrets Manager. Cannot be set if `master_password` is provided.
  final pulumi.Input<bool>? manageMasterUserPassword;

  /// Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Please refer to the [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints). Cannot be set if `manage_master_user_password` is set to `true`.
  final pulumi.Input<String>? masterPassword;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Password for the master DB user. Note that this may show up in logs. Please refer to the [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints). Cannot be set if `manage_master_user_password` is set to `true`.
  final pulumi.Input<String>? masterPasswordWo;

  /// Used together with `master_password_wo` to trigger an update. Increment this value when an update to the `master_password_wo` is required.
  final pulumi.Input<int>? masterPasswordWoVersion;

  /// Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. To use a KMS key in a different Amazon Web Services account, specify the key ARN or alias ARN. If not specified, the default KMS key for your Amazon Web Services account is used.
  final pulumi.Input<String>? masterUserSecretKmsKeyId;

  /// Username for the master DB user. Please refer to the [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints). This argument does not support in-place updates and cannot be changed during a restore from snapshot.
  final pulumi.Input<String>? masterUsername;

  /// Interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB cluster. To turn off collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid Values: 0, 1, 5, 10, 15, 30, 60.
  final pulumi.Input<int>? monitoringInterval;

  /// ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. You can find more information on the [AWS Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole.html) what IAM permissions are needed to allow Enhanced Monitoring for RDS Clusters.
  final pulumi.Input<String>? monitoringRoleArn;

  /// Network type of the cluster. Valid values: `IPV4`, `DUAL`.
  final pulumi.Input<String>? networkType;

  /// Enables Performance Insights.
  final pulumi.Input<bool>? performanceInsightsEnabled;

  /// Specifies the KMS Key ID to encrypt Performance Insights data. If not specified, the default RDS KMS key will be used (`aws/rds`).
  final pulumi.Input<String>? performanceInsightsKmsKeyId;

  /// Specifies the amount of time to retain performance insights data for. Defaults to 7 days if Performance Insights are enabled. Valid values are `7`, `month * 31` (where month is a number of months from 1-23), and `731`. See [here](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.Overview.cost.html) for more information on retention periods.
  final pulumi.Input<int>? performanceInsightsRetentionPeriod;

  /// Port on which the DB accepts connections.
  final pulumi.Input<int>? port;

  /// Daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter.Time in UTC. Default: A 30-minute window selected at random from an 8-hour block of time per region, e.g. `04:00-09:00`.
  final pulumi.Input<String>? preferredBackupWindow;

  /// Weekly time range during which system maintenance can occur, in (UTC) e.g., `wed:04:00-wed:04:30`
  final pulumi.Input<String>? preferredMaintenanceWindow;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of a source DB cluster or DB instance if this DB cluster is to be created as a Read Replica. **Note:** Removing this attribute after creation will promote the read replica to a standalone cluster. If DB Cluster is part of a Global Cluster, use the `ignoreChanges` resource option to prevent Pulumi from showing differences for this argument instead of configuring this value.
  final pulumi.Input<String>? replicationSourceIdentifier;

  /// Nested attribute for [point in time restore](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-pitr.html). More details below.
  final pulumi.Input<ClusterRestoreToPointInTimeRds>? restoreToPointInTime;
  final pulumi.Input<ClusterS3Import>? s3Import;

  /// Nested attribute with scaling properties. Only valid when `engine_mode` is set to `serverless`. More details below.
  final pulumi.Input<ClusterScalingConfiguration>? scalingConfiguration;

  /// Nested attribute with scaling properties for ServerlessV2. Only valid when `engine_mode` is set to `provisioned`. More details below.
  final pulumi.Input<ClusterServerlessv2ScalingConfiguration>?
      serverlessv2ScalingConfiguration;

  /// Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from `final_snapshot_identifier`. Default is `false`.
  final pulumi.Input<bool>? skipFinalSnapshot;

  /// Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot. Conflicts with `global_cluster_identifier`. Clusters cannot be restored from snapshot **and** joined to an existing global cluster in a single operation. See the [AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-getting-started.html#aurora-global-database.use-snapshot) or the Global Cluster Restored From Snapshot example for instructions on building a global cluster starting with a snapshot.
  final pulumi.Input<String>? snapshotIdentifier;

  /// The source region for an encrypted replica DB cluster.
  final pulumi.Input<String>? sourceRegion;

  /// Specifies whether the DB cluster is encrypted. The default is `false` for `provisioned` `engine_mode` and `true` for `serverless` `engine_mode`. When restoring an unencrypted `snapshot_identifier`, the `kms_key_id` argument must be provided to encrypt the restored cluster. The provider will only perform drift detection if a configuration value is provided.
  final pulumi.Input<bool>? storageEncrypted;

  /// (Forces new for Multi-AZ DB clusters) Specifies the storage type to be associated with the DB cluster. For Aurora DB clusters, `storage_type` modifications can be done in-place. For Multi-AZ DB Clusters, the `iops` argument must also be set. Valid values are: `""`, `aurora-iopt1` (Aurora DB Clusters); `io1`, `io2` (Multi-AZ DB Clusters). Default: `""` (Aurora DB Clusters); `io1` (Multi-AZ DB Clusters).
  final pulumi.Input<String>? storageType;

  /// A map of tags to assign to the DB cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// List of VPC security groups to associate with the Cluster
  ///
  /// For more detailed documentation about each argument, refer to
  /// the AWS official documentation:
  ///
  /// * [create-db-cluster](https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-cluster.html)
  /// * [modify-db-cluster](https://docs.aws.amazon.com/cli/latest/reference/rds/modify-db-cluster.html)
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  ClusterRdsArgs({
    this.allocatedStorage,
    this.allowMajorVersionUpgrade,
    this.applyImmediately,
    this.availabilityZones,
    this.backtrackWindow,
    this.backupRetentionPeriod,
    this.caCertificateIdentifier,
    this.clusterIdentifier,
    this.clusterIdentifierPrefix,
    this.clusterMembers,
    this.clusterScalabilityType,
    this.copyTagsToSnapshot,
    this.databaseInsightsMode,
    this.databaseName,
    this.dbClusterInstanceClass,
    this.dbClusterParameterGroupName,
    this.dbInstanceParameterGroupName,
    this.dbSubnetGroupName,
    this.dbSystemId,
    this.deleteAutomatedBackups,
    this.deletionProtection,
    this.domain,
    this.domainIamRoleName,
    this.enableGlobalWriteForwarding,
    this.enableHttpEndpoint,
    this.enableLocalWriteForwarding,
    this.enabledCloudwatchLogsExports,
    required this.engine,
    this.engineLifecycleSupport,
    this.engineMode,
    this.engineVersion,
    this.finalSnapshotIdentifier,
    this.globalClusterIdentifier,
    this.iamDatabaseAuthenticationEnabled,
    this.iamRoles,
    this.iops,
    this.kmsKeyId,
    this.manageMasterUserPassword,
    this.masterPassword,
    this.masterPasswordWo,
    this.masterPasswordWoVersion,
    this.masterUserSecretKmsKeyId,
    this.masterUsername,
    this.monitoringInterval,
    this.monitoringRoleArn,
    this.networkType,
    this.performanceInsightsEnabled,
    this.performanceInsightsKmsKeyId,
    this.performanceInsightsRetentionPeriod,
    this.port,
    this.preferredBackupWindow,
    this.preferredMaintenanceWindow,
    this.region,
    this.replicationSourceIdentifier,
    this.restoreToPointInTime,
    this.s3Import,
    this.scalingConfiguration,
    this.serverlessv2ScalingConfiguration,
    this.skipFinalSnapshot,
    this.snapshotIdentifier,
    this.sourceRegion,
    this.storageEncrypted,
    this.storageType,
    this.tags,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allocatedStorageValue = allocatedStorage;
    if (allocatedStorageValue != null) {
      map['allocatedStorage'] = allocatedStorageValue;
    }
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
    final backtrackWindowValue = backtrackWindow;
    if (backtrackWindowValue != null) {
      map['backtrackWindow'] = backtrackWindowValue;
    }
    final backupRetentionPeriodValue = backupRetentionPeriod;
    if (backupRetentionPeriodValue != null) {
      map['backupRetentionPeriod'] = backupRetentionPeriodValue;
    }
    final caCertificateIdentifierValue = caCertificateIdentifier;
    if (caCertificateIdentifierValue != null) {
      map['caCertificateIdentifier'] = caCertificateIdentifierValue;
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
    final clusterScalabilityTypeValue = clusterScalabilityType;
    if (clusterScalabilityTypeValue != null) {
      map['clusterScalabilityType'] = clusterScalabilityTypeValue;
    }
    final copyTagsToSnapshotValue = copyTagsToSnapshot;
    if (copyTagsToSnapshotValue != null) {
      map['copyTagsToSnapshot'] = copyTagsToSnapshotValue;
    }
    final databaseInsightsModeValue = databaseInsightsMode;
    if (databaseInsightsModeValue != null) {
      map['databaseInsightsMode'] = databaseInsightsModeValue;
    }
    final databaseNameValue = databaseName;
    if (databaseNameValue != null) {
      map['databaseName'] = databaseNameValue;
    }
    final dbClusterInstanceClassValue = dbClusterInstanceClass;
    if (dbClusterInstanceClassValue != null) {
      map['dbClusterInstanceClass'] = dbClusterInstanceClassValue;
    }
    final dbClusterParameterGroupNameValue = dbClusterParameterGroupName;
    if (dbClusterParameterGroupNameValue != null) {
      map['dbClusterParameterGroupName'] = dbClusterParameterGroupNameValue;
    }
    final dbInstanceParameterGroupNameValue = dbInstanceParameterGroupName;
    if (dbInstanceParameterGroupNameValue != null) {
      map['dbInstanceParameterGroupName'] = dbInstanceParameterGroupNameValue;
    }
    final dbSubnetGroupNameValue = dbSubnetGroupName;
    if (dbSubnetGroupNameValue != null) {
      map['dbSubnetGroupName'] = dbSubnetGroupNameValue;
    }
    final dbSystemIdValue = dbSystemId;
    if (dbSystemIdValue != null) {
      map['dbSystemId'] = dbSystemIdValue;
    }
    final deleteAutomatedBackupsValue = deleteAutomatedBackups;
    if (deleteAutomatedBackupsValue != null) {
      map['deleteAutomatedBackups'] = deleteAutomatedBackupsValue;
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final domainValue = domain;
    if (domainValue != null) {
      map['domain'] = domainValue;
    }
    final domainIamRoleNameValue = domainIamRoleName;
    if (domainIamRoleNameValue != null) {
      map['domainIamRoleName'] = domainIamRoleNameValue;
    }
    final enableGlobalWriteForwardingValue = enableGlobalWriteForwarding;
    if (enableGlobalWriteForwardingValue != null) {
      map['enableGlobalWriteForwarding'] = enableGlobalWriteForwardingValue;
    }
    final enableHttpEndpointValue = enableHttpEndpoint;
    if (enableHttpEndpointValue != null) {
      map['enableHttpEndpoint'] = enableHttpEndpointValue;
    }
    final enableLocalWriteForwardingValue = enableLocalWriteForwarding;
    if (enableLocalWriteForwardingValue != null) {
      map['enableLocalWriteForwarding'] = enableLocalWriteForwardingValue;
    }
    final enabledCloudwatchLogsExportsValue = enabledCloudwatchLogsExports;
    if (enabledCloudwatchLogsExportsValue != null) {
      map['enabledCloudwatchLogsExports'] = enabledCloudwatchLogsExportsValue;
    }
    map['engine'] = engine;
    final engineLifecycleSupportValue = engineLifecycleSupport;
    if (engineLifecycleSupportValue != null) {
      map['engineLifecycleSupport'] = engineLifecycleSupportValue;
    }
    final engineModeValue = engineMode;
    if (engineModeValue != null) {
      map['engineMode'] = engineModeValue;
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
    final iamDatabaseAuthenticationEnabledValue =
        iamDatabaseAuthenticationEnabled;
    if (iamDatabaseAuthenticationEnabledValue != null) {
      map['iamDatabaseAuthenticationEnabled'] =
          iamDatabaseAuthenticationEnabledValue;
    }
    final iamRolesValue = iamRoles;
    if (iamRolesValue != null) {
      map['iamRoles'] = iamRolesValue;
    }
    final iopsValue = iops;
    if (iopsValue != null) {
      map['iops'] = iopsValue;
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
    final masterUserSecretKmsKeyIdValue = masterUserSecretKmsKeyId;
    if (masterUserSecretKmsKeyIdValue != null) {
      map['masterUserSecretKmsKeyId'] = masterUserSecretKmsKeyIdValue;
    }
    final masterUsernameValue = masterUsername;
    if (masterUsernameValue != null) {
      map['masterUsername'] = masterUsernameValue;
    }
    final monitoringIntervalValue = monitoringInterval;
    if (monitoringIntervalValue != null) {
      map['monitoringInterval'] = monitoringIntervalValue;
    }
    final monitoringRoleArnValue = monitoringRoleArn;
    if (monitoringRoleArnValue != null) {
      map['monitoringRoleArn'] = monitoringRoleArnValue;
    }
    final networkTypeValue = networkType;
    if (networkTypeValue != null) {
      map['networkType'] = networkTypeValue;
    }
    final performanceInsightsEnabledValue = performanceInsightsEnabled;
    if (performanceInsightsEnabledValue != null) {
      map['performanceInsightsEnabled'] = performanceInsightsEnabledValue;
    }
    final performanceInsightsKmsKeyIdValue = performanceInsightsKmsKeyId;
    if (performanceInsightsKmsKeyIdValue != null) {
      map['performanceInsightsKmsKeyId'] = performanceInsightsKmsKeyIdValue;
    }
    final performanceInsightsRetentionPeriodValue =
        performanceInsightsRetentionPeriod;
    if (performanceInsightsRetentionPeriodValue != null) {
      map['performanceInsightsRetentionPeriod'] =
          performanceInsightsRetentionPeriodValue;
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
    final replicationSourceIdentifierValue = replicationSourceIdentifier;
    if (replicationSourceIdentifierValue != null) {
      map['replicationSourceIdentifier'] = replicationSourceIdentifierValue;
    }
    final restoreToPointInTimeValue = restoreToPointInTime;
    if (restoreToPointInTimeValue != null) {
      map['restoreToPointInTime'] = pulumi.Input.mapOptionalInputValue<
              ClusterRestoreToPointInTimeRds, Map<String, dynamic>>(
          restoreToPointInTimeValue, (value) => value.toMap());
    }
    final s3ImportValue = s3Import;
    if (s3ImportValue != null) {
      map['s3Import'] = pulumi.Input.mapOptionalInputValue<ClusterS3Import,
          Map<String, dynamic>>(s3ImportValue, (value) => value.toMap());
    }
    final scalingConfigurationValue = scalingConfiguration;
    if (scalingConfigurationValue != null) {
      map['scalingConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ClusterScalingConfiguration, Map<String, dynamic>>(
          scalingConfigurationValue, (value) => value.toMap());
    }
    final serverlessv2ScalingConfigurationValue =
        serverlessv2ScalingConfiguration;
    if (serverlessv2ScalingConfigurationValue != null) {
      map['serverlessv2ScalingConfiguration'] =
          pulumi.Input.mapOptionalInputValue<
                  ClusterServerlessv2ScalingConfiguration,
                  Map<String, dynamic>>(
              serverlessv2ScalingConfigurationValue, (value) => value.toMap());
    }
    final skipFinalSnapshotValue = skipFinalSnapshot;
    if (skipFinalSnapshotValue != null) {
      map['skipFinalSnapshot'] = skipFinalSnapshotValue;
    }
    final snapshotIdentifierValue = snapshotIdentifier;
    if (snapshotIdentifierValue != null) {
      map['snapshotIdentifier'] = snapshotIdentifierValue;
    }
    final sourceRegionValue = sourceRegion;
    if (sourceRegionValue != null) {
      map['sourceRegion'] = sourceRegionValue;
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

  factory ClusterRdsArgs.fromMap(Map<String, dynamic> map) {
    return ClusterRdsArgs(
      allocatedStorage:
          pulumi.Input.asOptionalInput<int>(map['allocatedStorage']),
      allowMajorVersionUpgrade:
          pulumi.Input.asOptionalInput<bool>(map['allowMajorVersionUpgrade']),
      applyImmediately:
          pulumi.Input.asOptionalInput<bool>(map['applyImmediately']),
      availabilityZones:
          pulumi.Input.asOptionalInput<List<String>>(map['availabilityZones']),
      backtrackWindow:
          pulumi.Input.asOptionalInput<int>(map['backtrackWindow']),
      backupRetentionPeriod:
          pulumi.Input.asOptionalInput<int>(map['backupRetentionPeriod']),
      caCertificateIdentifier:
          pulumi.Input.asOptionalInput<String>(map['caCertificateIdentifier']),
      clusterIdentifier:
          pulumi.Input.asOptionalInput<String>(map['clusterIdentifier']),
      clusterIdentifierPrefix:
          pulumi.Input.asOptionalInput<String>(map['clusterIdentifierPrefix']),
      clusterMembers:
          pulumi.Input.asOptionalInput<List<String>>(map['clusterMembers']),
      clusterScalabilityType:
          pulumi.Input.asOptionalInput<String>(map['clusterScalabilityType']),
      copyTagsToSnapshot:
          pulumi.Input.asOptionalInput<bool>(map['copyTagsToSnapshot']),
      databaseInsightsMode:
          pulumi.Input.asOptionalInput<String>(map['databaseInsightsMode']),
      databaseName: pulumi.Input.asOptionalInput<String>(map['databaseName']),
      dbClusterInstanceClass:
          pulumi.Input.asOptionalInput<String>(map['dbClusterInstanceClass']),
      dbClusterParameterGroupName: pulumi.Input.asOptionalInput<String>(
          map['dbClusterParameterGroupName']),
      dbInstanceParameterGroupName: pulumi.Input.asOptionalInput<String>(
          map['dbInstanceParameterGroupName']),
      dbSubnetGroupName:
          pulumi.Input.asOptionalInput<String>(map['dbSubnetGroupName']),
      dbSystemId: pulumi.Input.asOptionalInput<String>(map['dbSystemId']),
      deleteAutomatedBackups:
          pulumi.Input.asOptionalInput<bool>(map['deleteAutomatedBackups']),
      deletionProtection:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtection']),
      domain: pulumi.Input.asOptionalInput<String>(map['domain']),
      domainIamRoleName:
          pulumi.Input.asOptionalInput<String>(map['domainIamRoleName']),
      enableGlobalWriteForwarding: pulumi.Input.asOptionalInput<bool>(
          map['enableGlobalWriteForwarding']),
      enableHttpEndpoint:
          pulumi.Input.asOptionalInput<bool>(map['enableHttpEndpoint']),
      enableLocalWriteForwarding:
          pulumi.Input.asOptionalInput<bool>(map['enableLocalWriteForwarding']),
      enabledCloudwatchLogsExports: pulumi.Input.asOptionalInput<List<String>>(
          map['enabledCloudwatchLogsExports']),
      engine: pulumi.Input.asInput<String>(map['engine']),
      engineLifecycleSupport:
          pulumi.Input.asOptionalInput<String>(map['engineLifecycleSupport']),
      engineMode: pulumi.Input.asOptionalInput<String>(map['engineMode']),
      engineVersion: pulumi.Input.asOptionalInput<String>(map['engineVersion']),
      finalSnapshotIdentifier:
          pulumi.Input.asOptionalInput<String>(map['finalSnapshotIdentifier']),
      globalClusterIdentifier:
          pulumi.Input.asOptionalInput<String>(map['globalClusterIdentifier']),
      iamDatabaseAuthenticationEnabled: pulumi.Input.asOptionalInput<bool>(
          map['iamDatabaseAuthenticationEnabled']),
      iamRoles: pulumi.Input.asOptionalInput<List<String>>(map['iamRoles']),
      iops: pulumi.Input.asOptionalInput<int>(map['iops']),
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      manageMasterUserPassword:
          pulumi.Input.asOptionalInput<bool>(map['manageMasterUserPassword']),
      masterPassword:
          pulumi.Input.asOptionalInput<String>(map['masterPassword']),
      masterPasswordWo:
          pulumi.Input.asOptionalInput<String>(map['masterPasswordWo']),
      masterPasswordWoVersion:
          pulumi.Input.asOptionalInput<int>(map['masterPasswordWoVersion']),
      masterUserSecretKmsKeyId:
          pulumi.Input.asOptionalInput<String>(map['masterUserSecretKmsKeyId']),
      masterUsername:
          pulumi.Input.asOptionalInput<String>(map['masterUsername']),
      monitoringInterval:
          pulumi.Input.asOptionalInput<int>(map['monitoringInterval']),
      monitoringRoleArn:
          pulumi.Input.asOptionalInput<String>(map['monitoringRoleArn']),
      networkType: pulumi.Input.asOptionalInput<String>(map['networkType']),
      performanceInsightsEnabled:
          pulumi.Input.asOptionalInput<bool>(map['performanceInsightsEnabled']),
      performanceInsightsKmsKeyId: pulumi.Input.asOptionalInput<String>(
          map['performanceInsightsKmsKeyId']),
      performanceInsightsRetentionPeriod: pulumi.Input.asOptionalInput<int>(
          map['performanceInsightsRetentionPeriod']),
      port: pulumi.Input.asOptionalInput<int>(map['port']),
      preferredBackupWindow:
          pulumi.Input.asOptionalInput<String>(map['preferredBackupWindow']),
      preferredMaintenanceWindow: pulumi.Input.asOptionalInput<String>(
          map['preferredMaintenanceWindow']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      replicationSourceIdentifier: pulumi.Input.asOptionalInput<String>(
          map['replicationSourceIdentifier']),
      restoreToPointInTime:
          pulumi.Input.asOptionalInput<ClusterRestoreToPointInTimeRds>(
              map['restoreToPointInTime']),
      s3Import: pulumi.Input.asOptionalInput<ClusterS3Import>(map['s3Import']),
      scalingConfiguration:
          pulumi.Input.asOptionalInput<ClusterScalingConfiguration>(
              map['scalingConfiguration']),
      serverlessv2ScalingConfiguration:
          pulumi.Input.asOptionalInput<ClusterServerlessv2ScalingConfiguration>(
              map['serverlessv2ScalingConfiguration']),
      skipFinalSnapshot:
          pulumi.Input.asOptionalInput<bool>(map['skipFinalSnapshot']),
      snapshotIdentifier:
          pulumi.Input.asOptionalInput<String>(map['snapshotIdentifier']),
      sourceRegion: pulumi.Input.asOptionalInput<String>(map['sourceRegion']),
      storageEncrypted:
          pulumi.Input.asOptionalInput<bool>(map['storageEncrypted']),
      storageType: pulumi.Input.asOptionalInput<String>(map['storageType']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcSecurityGroupIds: pulumi.Input.asOptionalInput<List<String>>(
          map['vpcSecurityGroupIds']),
    );
  }
}
