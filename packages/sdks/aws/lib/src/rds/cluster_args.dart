// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_restore_to_point_in_time.dart';
import 'cluster_s3_import.dart';
import 'cluster_scaling_configuration.dart';
import 'cluster_serverlessv2_scaling_configuration.dart';

/// {@template pulumi_rds_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_rds_cluster_cluster_args_doc}
class ClusterArgs {
  /// The amount of storage in gibibytes (GiB) to allocate to each DB instance in the Multi-AZ DB cluster.
  final pulumi.Input<int>? allocatedStorage;
  /// Enable to allow major engine version upgrades when changing engine versions. Defaults to `false`.
  final pulumi.Input<bool>? allowMajorVersionUpgrade;
  /// Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. Default is `false`. See [Amazon RDS Documentation for more information.](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html)
  final pulumi.Input<bool>? applyImmediately;
  /// Whether to apply minor engine upgrades automatically to the DB cluster during the maintenance window. Defaults to `true`.
  final pulumi.Input<bool>? autoMinorVersionUpgrade;
  /// List of EC2 Availability Zones for the DB cluster storage where DB cluster instances can be created.
  /// RDS automatically assigns 3 AZs if less than 3 AZs are configured, which will show as a difference requiring resource recreation next pulumi up.
  /// We recommend specifying 3 AZs or using the `lifecycle` configuration block `ignoreChanges` argument if necessary.
  /// A maximum of 3 AZs can be configured.
  /// **Note:** [Multi-AZ DB clusters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html) require exactly 3 Availability Zones in the DB subnet group. Aurora DB clusters can operate with fewer AZs, but RDS will still automatically assign 3 AZs as described above.
  final pulumi.Input<List<String>>? availabilityZones;
  /// Target backtrack window, in seconds. Only available for `aurora` and `aurora-mysql` engines currently. To disable backtracking, set this value to `0`. Defaults to `0`. Must be between `0` and `259200` (72 hours)
  final pulumi.Input<int>? backtrackWindow;
  /// Days to retain backups for. Default `1`
  final pulumi.Input<int>? backupRetentionPeriod;
  /// The CA certificate identifier to use for the DB cluster's server certificate.
  final pulumi.Input<String>? caCertificateIdentifier;
  /// The cluster identifier. If omitted, this provider will assign a random, unique identifier.
  final pulumi.Input<String>? clusterIdentifier;
  /// Creates a unique cluster identifier beginning with the specified prefix. Conflicts with `clusterIdentifier`.
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
  /// Instance parameter group to associate with all instances of the DB cluster. The `dbInstanceParameterGroupName` parameter is only valid in combination with the `allowMajorVersionUpgrade` parameter.
  final pulumi.Input<String>? dbInstanceParameterGroupName;
  /// DB subnet group to associate with this DB cluster.
  /// **NOTE:** This must match the `dbSubnetGroupName` specified on every `aws.rds.ClusterInstance` in the cluster.
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
  /// Enable HTTP endpoint (data API). Only valid for some combinations of `engineMode`, `engine` and `engineVersion` and only available in some regions. See the [Region and version availability](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html#data-api.regions) section of the documentation. This option also does not work with any of these options specified: `snapshotIdentifier`, `replicationSourceIdentifier`, `s3Import`.
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
  /// Database engine version. Updating this argument results in an outage. See the [Aurora MySQL](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Updates.html) and [Aurora Postgres](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraPostgreSQL.Updates.html) documentation for your configured engine to determine this value, or by running `aws rds describe-db-engine-versions`. For example with Aurora MySQL 2, a potential value for this argument is `5.7.mysql_aurora.2.03.2`. The value can contain a partial version where supported by the API. The actual engine version used is returned in the attribute `engineVersionActual`, see Attribute Reference below.
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
  /// ARN for the KMS encryption key. When specifying `kmsKeyId`, `storageEncrypted` needs to be set to true.
  final pulumi.Input<String>? kmsKeyId;
  /// Set to true to allow RDS to manage the master user password in Secrets Manager. Cannot be set if `masterPassword` is provided.
  final pulumi.Input<bool>? manageMasterUserPassword;
  /// Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Please refer to the [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints). Cannot be set if `manageMasterUserPassword` is set to `true`.
  final pulumi.Input<String>? masterPassword;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Password for the master DB user. Note that this may show up in logs. Please refer to the [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints). Cannot be set if `manageMasterUserPassword` is set to `true`.
  final pulumi.Input<String>? masterPasswordWo;
  /// Used together with `masterPasswordWo` to trigger an update. Increment this value when an update to the `masterPasswordWo` is required.
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
  final pulumi.Input<ClusterRestoreToPointInTime>? restoreToPointInTime;
  final pulumi.Input<ClusterS3Import>? s3Import;
  /// Nested attribute with scaling properties. Only valid when `engineMode` is set to `serverless`. More details below.
  final pulumi.Input<ClusterScalingConfiguration>? scalingConfiguration;
  /// Nested attribute with scaling properties for ServerlessV2. Only valid when `engineMode` is set to `provisioned`. More details below.
  final pulumi.Input<ClusterServerlessv2ScalingConfiguration>? serverlessv2ScalingConfiguration;
  /// Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from `finalSnapshotIdentifier`. Default is `false`.
  final pulumi.Input<bool>? skipFinalSnapshot;
  /// Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot. Conflicts with `globalClusterIdentifier`. Clusters cannot be restored from snapshot **and** joined to an existing global cluster in a single operation. See the [AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-getting-started.html#aurora-global-database.use-snapshot) or the Global Cluster Restored From Snapshot example for instructions on building a global cluster starting with a snapshot.
  final pulumi.Input<String>? snapshotIdentifier;
  /// The source region for an encrypted replica DB cluster.
  final pulumi.Input<String>? sourceRegion;
  /// Specifies whether the DB cluster is encrypted. The default is `false` for `provisioned` `engineMode` and `true` for `serverless` `engineMode`. When restoring an unencrypted `snapshotIdentifier`, the `kmsKeyId` argument must be provided to encrypt the restored cluster. The provider will only perform drift detection if a configuration value is provided.
  final pulumi.Input<bool>? storageEncrypted;
  /// (Forces new for Multi-AZ DB clusters) Specifies the storage type to be associated with the DB cluster. For Aurora DB clusters, `storageType` modifications can be done in-place. For Multi-AZ DB Clusters, the `iops` argument must also be set. Valid values are: `""`, `aurora-iopt1` (Aurora DB Clusters); `io1`, `io2`, `gp3` (Multi-AZ DB Clusters). Default: `""` (Aurora DB Clusters); `io1` (Multi-AZ DB Clusters).
  final pulumi.Input<String>? storageType;
  /// A map of tags to assign to the DB cluster. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// List of VPC security groups to associate with the Cluster
  ///
  /// For more detailed documentation about each argument, refer to
  /// the AWS official documentation:
  ///
  /// * [create-db-cluster](https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-cluster.html)
  /// * [modify-db-cluster](https://docs.aws.amazon.com/cli/latest/reference/rds/modify-db-cluster.html)
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  /// Creates a new [ClusterArgs].
  /// [allocatedStorage] The amount of storage in gibibytes (GiB) to allocate to each DB instance in the Multi-AZ DB cluster.
  /// [allowMajorVersionUpgrade] Enable to allow major engine version upgrades when changing engine versions. Defaults to `false`.
  /// [applyImmediately] Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. Default is `false`. See [Amazon RDS Documentation for more information.](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html)
  /// [autoMinorVersionUpgrade] Whether to apply minor engine upgrades automatically to the DB cluster during the maintenance window. Defaults to `true`.
  /// [availabilityZones] List of EC2 Availability Zones for the DB cluster storage where DB cluster instances can be created.
  /// [backtrackWindow] Target backtrack window, in seconds. Only available for `aurora` and `aurora-mysql` engines currently. To disable backtracking, set this value to `0`. Defaults to `0`. Must be between `0` and `259200` (72 hours)
  /// [backupRetentionPeriod] Days to retain backups for. Default `1`
  /// [caCertificateIdentifier] The CA certificate identifier to use for the DB cluster's server certificate.
  /// [clusterIdentifier] The cluster identifier. If omitted, this provider will assign a random, unique identifier.
  /// [clusterIdentifierPrefix] Creates a unique cluster identifier beginning with the specified prefix. Conflicts with `clusterIdentifier`.
  /// [clusterMembers] List of RDS Instances that are a part of this cluster
  /// [clusterScalabilityType] Specifies the scalability mode of the Aurora DB cluster. When set to `limitless`, the cluster operates as an Aurora Limitless Database. When set to `standard` (the default), the cluster uses normal DB instance creation. Valid values: `limitless`, `standard`.
  /// [copyTagsToSnapshot] Copy all Cluster `tags` to snapshots. Default is `false`.
  /// [databaseInsightsMode] The mode of Database Insights to enable for the DB cluster. Valid values: `standard`, `advanced`.
  /// [databaseName] Name for an automatically created database on cluster creation. There are different naming restrictions per database engine: [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints)
  /// [dbClusterInstanceClass] The compute and memory capacity of each DB instance in the Multi-AZ DB cluster, for example `db.m6g.xlarge`. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes and availability for your engine, see [DB instance class](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html) in the Amazon RDS User Guide.
  /// [dbClusterParameterGroupName] A cluster parameter group to associate with the cluster.
  /// [dbInstanceParameterGroupName] Instance parameter group to associate with all instances of the DB cluster. The `dbInstanceParameterGroupName` parameter is only valid in combination with the `allowMajorVersionUpgrade` parameter.
  /// [dbSubnetGroupName] DB subnet group to associate with this DB cluster.
  /// [dbSystemId] For use with RDS Custom.
  /// [deleteAutomatedBackups] Specifies whether to remove automated backups immediately after the DB cluster is deleted. Default is `true`.
  /// [deletionProtection] If the DB cluster should have deletion protection enabled.
  /// [domain] The ID of the Directory Service Active Directory domain to create the cluster in.
  /// [domainIamRoleName] The name of the IAM role to be used when making API calls to the Directory Service.
  /// [enableGlobalWriteForwarding] Whether cluster should forward writes to an associated global cluster. Applied to secondary clusters to enable them to forward writes to an `aws.rds.GlobalCluster`'s primary cluster. See the [User Guide for Aurora](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-write-forwarding.html) for more information.
  /// [enableHttpEndpoint] Enable HTTP endpoint (data API). Only valid for some combinations of `engineMode`, `engine` and `engineVersion` and only available in some regions. See the [Region and version availability](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html#data-api.regions) section of the documentation. This option also does not work with any of these options specified: `snapshotIdentifier`, `replicationSourceIdentifier`, `s3Import`.
  /// [enableLocalWriteForwarding] Whether read replicas can forward write operations to the writer DB instance in the DB cluster. By default, write operations aren't allowed on reader DB instances. See the [User Guide for Aurora](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-mysql-write-forwarding.html) for more information. **NOTE:** Local write forwarding requires Aurora MySQL version 3.04 or higher.
  /// [enabledCloudwatchLogsExports] Set of log types to export to cloudwatch. If omitted, no logs will be exported. The following log types are supported: `audit`, `error`, `general`, `iam-db-auth-error`, `instance`, `postgresql` (PostgreSQL), `slowquery`.
  /// [engine] Name of the database engine to be used for this DB cluster. Valid Values: `aurora-mysql`, `aurora-postgresql`, `mysql`, `postgres`. (Note that `mysql` and `postgres` are Multi-AZ RDS clusters).
  /// [engineLifecycleSupport] The life cycle type for this DB instance. This setting is valid for cluster types Aurora DB clusters and Multi-AZ DB clusters. Valid values are `open-source-rds-extended-support`, `open-source-rds-extended-support-disabled`. Default value is `open-source-rds-extended-support`. [Using Amazon RDS Extended Support]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html
  /// [engineMode] Database engine mode. Valid values: `global` (only valid for Aurora MySQL 1.21 and earlier), `parallelquery`, `provisioned`, `serverless`. Defaults to: `provisioned`. Specify an empty value (`""`) for no engine mode. See the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html) for limitations when using `serverless`.
  /// [engineVersion] Database engine version. Updating this argument results in an outage. See the [Aurora MySQL](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Updates.html) and [Aurora Postgres](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraPostgreSQL.Updates.html) documentation for your configured engine to determine this value, or by running `aws rds describe-db-engine-versions`. For example with Aurora MySQL 2, a potential value for this argument is `5.7.mysql_aurora.2.03.2`. The value can contain a partial version where supported by the API. The actual engine version used is returned in the attribute `engineVersionActual`, see Attribute Reference below.
  /// [finalSnapshotIdentifier] Name of your final DB snapshot when this DB cluster is deleted. If omitted, no final snapshot will be made.
  /// [globalClusterIdentifier] Global cluster identifier specified on `aws.rds.GlobalCluster`.
  /// [iamDatabaseAuthenticationEnabled] Specifies whether or not mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled. Please see [AWS Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html) for availability and limitations.
  /// [iamRoles] List of ARNs for the IAM roles to associate to the RDS Cluster.
  /// [iops] Amount of Provisioned IOPS (input/output operations per second) to be initially allocated for each DB instance in the Multi-AZ DB cluster. For information about valid Iops values, see [Amazon RDS Provisioned IOPS storage to improve performance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS) in the Amazon RDS User Guide. (This setting is required to create a Multi-AZ DB cluster). Must be a multiple between .5 and 50 of the storage amount for the DB cluster.
  /// [kmsKeyId] ARN for the KMS encryption key. When specifying `kmsKeyId`, `storageEncrypted` needs to be set to true.
  /// [manageMasterUserPassword] Set to true to allow RDS to manage the master user password in Secrets Manager. Cannot be set if `masterPassword` is provided.
  /// [masterPassword] Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Please refer to the [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints). Cannot be set if `manageMasterUserPassword` is set to `true`.
  /// [masterPasswordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [masterPasswordWoVersion] Used together with `masterPasswordWo` to trigger an update. Increment this value when an update to the `masterPasswordWo` is required.
  /// [masterUserSecretKmsKeyId] Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. To use a KMS key in a different Amazon Web Services account, specify the key ARN or alias ARN. If not specified, the default KMS key for your Amazon Web Services account is used.
  /// [masterUsername] Username for the master DB user. Please refer to the [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints). This argument does not support in-place updates and cannot be changed during a restore from snapshot.
  /// [monitoringInterval] Interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB cluster. To turn off collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid Values: 0, 1, 5, 10, 15, 30, 60.
  /// [monitoringRoleArn] ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. You can find more information on the [AWS Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole.html) what IAM permissions are needed to allow Enhanced Monitoring for RDS Clusters.
  /// [networkType] Network type of the cluster. Valid values: `IPV4`, `DUAL`.
  /// [performanceInsightsEnabled] Enables Performance Insights.
  /// [performanceInsightsKmsKeyId] Specifies the KMS Key ID to encrypt Performance Insights data. If not specified, the default RDS KMS key will be used (`aws/rds`).
  /// [performanceInsightsRetentionPeriod] Specifies the amount of time to retain performance insights data for. Defaults to 7 days if Performance Insights are enabled. Valid values are `7`, `month * 31` (where month is a number of months from 1-23), and `731`. See [here](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.Overview.cost.html) for more information on retention periods.
  /// [port] Port on which the DB accepts connections.
  /// [preferredBackupWindow] Daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter.Time in UTC. Default: A 30-minute window selected at random from an 8-hour block of time per region, e.g. `04:00-09:00`.
  /// [preferredMaintenanceWindow] Weekly time range during which system maintenance can occur, in (UTC) e.g., `wed:04:00-wed:04:30`
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationSourceIdentifier] ARN of a source DB cluster or DB instance if this DB cluster is to be created as a Read Replica. **Note:** Removing this attribute after creation will promote the read replica to a standalone cluster. If DB Cluster is part of a Global Cluster, use the `ignoreChanges` resource option to prevent Pulumi from showing differences for this argument instead of configuring this value.
  /// [restoreToPointInTime] Nested attribute for [point in time restore](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-pitr.html). More details below.
  /// [s3Import] Optional.
  /// [scalingConfiguration] Nested attribute with scaling properties. Only valid when `engineMode` is set to `serverless`. More details below.
  /// [serverlessv2ScalingConfiguration] Nested attribute with scaling properties for ServerlessV2. Only valid when `engineMode` is set to `provisioned`. More details below.
  /// [skipFinalSnapshot] Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from `finalSnapshotIdentifier`. Default is `false`.
  /// [snapshotIdentifier] Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot. Conflicts with `globalClusterIdentifier`. Clusters cannot be restored from snapshot **and** joined to an existing global cluster in a single operation. See the [AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-getting-started.html#aurora-global-database.use-snapshot) or the Global Cluster Restored From Snapshot example for instructions on building a global cluster starting with a snapshot.
  /// [sourceRegion] The source region for an encrypted replica DB cluster.
  /// [storageEncrypted] Specifies whether the DB cluster is encrypted. The default is `false` for `provisioned` `engineMode` and `true` for `serverless` `engineMode`. When restoring an unencrypted `snapshotIdentifier`, the `kmsKeyId` argument must be provided to encrypt the restored cluster. The provider will only perform drift detection if a configuration value is provided.
  /// [storageType] (Forces new for Multi-AZ DB clusters) Specifies the storage type to be associated with the DB cluster. For Aurora DB clusters, `storageType` modifications can be done in-place. For Multi-AZ DB Clusters, the `iops` argument must also be set. Valid values are: `""`, `aurora-iopt1` (Aurora DB Clusters); `io1`, `io2`, `gp3` (Multi-AZ DB Clusters). Default: `""` (Aurora DB Clusters); `io1` (Multi-AZ DB Clusters).
  /// [tags] A map of tags to assign to the DB cluster. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcSecurityGroupIds] List of VPC security groups to associate with the Cluster
  const ClusterArgs({
    this.allocatedStorage,
    this.allowMajorVersionUpgrade,
    this.applyImmediately,
    this.autoMinorVersionUpgrade,
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
    return <String, dynamic>{
      'allocatedStorage': ?allocatedStorage,
      'allowMajorVersionUpgrade': ?allowMajorVersionUpgrade,
      'applyImmediately': ?applyImmediately,
      'autoMinorVersionUpgrade': ?autoMinorVersionUpgrade,
      'availabilityZones': ?availabilityZones,
      'backtrackWindow': ?backtrackWindow,
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'caCertificateIdentifier': ?caCertificateIdentifier,
      'clusterIdentifier': ?clusterIdentifier,
      'clusterIdentifierPrefix': ?clusterIdentifierPrefix,
      'clusterMembers': ?clusterMembers,
      'clusterScalabilityType': ?clusterScalabilityType,
      'copyTagsToSnapshot': ?copyTagsToSnapshot,
      'databaseInsightsMode': ?databaseInsightsMode,
      'databaseName': ?databaseName,
      'dbClusterInstanceClass': ?dbClusterInstanceClass,
      'dbClusterParameterGroupName': ?dbClusterParameterGroupName,
      'dbInstanceParameterGroupName': ?dbInstanceParameterGroupName,
      'dbSubnetGroupName': ?dbSubnetGroupName,
      'dbSystemId': ?dbSystemId,
      'deleteAutomatedBackups': ?deleteAutomatedBackups,
      'deletionProtection': ?deletionProtection,
      'domain': ?domain,
      'domainIamRoleName': ?domainIamRoleName,
      'enableGlobalWriteForwarding': ?enableGlobalWriteForwarding,
      'enableHttpEndpoint': ?enableHttpEndpoint,
      'enableLocalWriteForwarding': ?enableLocalWriteForwarding,
      'enabledCloudwatchLogsExports': ?enabledCloudwatchLogsExports,
      'engine': engine,
      'engineLifecycleSupport': ?engineLifecycleSupport,
      'engineMode': ?engineMode,
      'engineVersion': ?engineVersion,
      'finalSnapshotIdentifier': ?finalSnapshotIdentifier,
      'globalClusterIdentifier': ?globalClusterIdentifier,
      'iamDatabaseAuthenticationEnabled': ?iamDatabaseAuthenticationEnabled,
      'iamRoles': ?iamRoles,
      'iops': ?iops,
      'kmsKeyId': ?kmsKeyId,
      'manageMasterUserPassword': ?manageMasterUserPassword,
      'masterPassword': ?masterPassword,
      'masterPasswordWo': ?masterPasswordWo,
      'masterPasswordWoVersion': ?masterPasswordWoVersion,
      'masterUserSecretKmsKeyId': ?masterUserSecretKmsKeyId,
      'masterUsername': ?masterUsername,
      'monitoringInterval': ?monitoringInterval,
      'monitoringRoleArn': ?monitoringRoleArn,
      'networkType': ?networkType,
      'performanceInsightsEnabled': ?performanceInsightsEnabled,
      'performanceInsightsKmsKeyId': ?performanceInsightsKmsKeyId,
      'performanceInsightsRetentionPeriod': ?performanceInsightsRetentionPeriod,
      'port': ?port,
      'preferredBackupWindow': ?preferredBackupWindow,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'region': ?region,
      'replicationSourceIdentifier': ?replicationSourceIdentifier,
      'restoreToPointInTime': ?pulumi.Input.mapOptionalInputValue<ClusterRestoreToPointInTime, Map<String, dynamic>>(restoreToPointInTime, (value) => value.toMap()),
      's3Import': ?pulumi.Input.mapOptionalInputValue<ClusterS3Import, Map<String, dynamic>>(s3Import, (value) => value.toMap()),
      'scalingConfiguration': ?pulumi.Input.mapOptionalInputValue<ClusterScalingConfiguration, Map<String, dynamic>>(scalingConfiguration, (value) => value.toMap()),
      'serverlessv2ScalingConfiguration': ?pulumi.Input.mapOptionalInputValue<ClusterServerlessv2ScalingConfiguration, Map<String, dynamic>>(serverlessv2ScalingConfiguration, (value) => value.toMap()),
      'skipFinalSnapshot': ?skipFinalSnapshot,
      'snapshotIdentifier': ?snapshotIdentifier,
      'sourceRegion': ?sourceRegion,
      'storageEncrypted': ?storageEncrypted,
      'storageType': ?storageType,
      'tags': ?tags,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      allocatedStorage: (() { final guardedValue = map['allocatedStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      allowMajorVersionUpgrade: (() { final guardedValue = map['allowMajorVersionUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      applyImmediately: (() { final guardedValue = map['applyImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoMinorVersionUpgrade: (() { final guardedValue = map['autoMinorVersionUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      backtrackWindow: (() { final guardedValue = map['backtrackWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      backupRetentionPeriod: (() { final guardedValue = map['backupRetentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      caCertificateIdentifier: (() { final guardedValue = map['caCertificateIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterIdentifier: (() { final guardedValue = map['clusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterIdentifierPrefix: (() { final guardedValue = map['clusterIdentifierPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterMembers: (() { final guardedValue = map['clusterMembers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clusterScalabilityType: (() { final guardedValue = map['clusterScalabilityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      copyTagsToSnapshot: (() { final guardedValue = map['copyTagsToSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      databaseInsightsMode: (() { final guardedValue = map['databaseInsightsMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbClusterInstanceClass: (() { final guardedValue = map['dbClusterInstanceClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbClusterParameterGroupName: (() { final guardedValue = map['dbClusterParameterGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceParameterGroupName: (() { final guardedValue = map['dbInstanceParameterGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbSubnetGroupName: (() { final guardedValue = map['dbSubnetGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbSystemId: (() { final guardedValue = map['dbSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteAutomatedBackups: (() { final guardedValue = map['deleteAutomatedBackups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainIamRoleName: (() { final guardedValue = map['domainIamRoleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableGlobalWriteForwarding: (() { final guardedValue = map['enableGlobalWriteForwarding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableHttpEndpoint: (() { final guardedValue = map['enableHttpEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableLocalWriteForwarding: (() { final guardedValue = map['enableLocalWriteForwarding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabledCloudwatchLogsExports: (() { final guardedValue = map['enabledCloudwatchLogsExports']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      engine: pulumi.Input.fromValue(map['engine'] as String),
      engineLifecycleSupport: (() { final guardedValue = map['engineLifecycleSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineMode: (() { final guardedValue = map['engineMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      finalSnapshotIdentifier: (() { final guardedValue = map['finalSnapshotIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalClusterIdentifier: (() { final guardedValue = map['globalClusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamDatabaseAuthenticationEnabled: (() { final guardedValue = map['iamDatabaseAuthenticationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      iamRoles: (() { final guardedValue = map['iamRoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      iops: (() { final guardedValue = map['iops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manageMasterUserPassword: (() { final guardedValue = map['manageMasterUserPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      masterPassword: (() { final guardedValue = map['masterPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterPasswordWo: (() { final guardedValue = map['masterPasswordWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterPasswordWoVersion: (() { final guardedValue = map['masterPasswordWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      masterUserSecretKmsKeyId: (() { final guardedValue = map['masterUserSecretKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterUsername: (() { final guardedValue = map['masterUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitoringInterval: (() { final guardedValue = map['monitoringInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      monitoringRoleArn: (() { final guardedValue = map['monitoringRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performanceInsightsEnabled: (() { final guardedValue = map['performanceInsightsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      performanceInsightsKmsKeyId: (() { final guardedValue = map['performanceInsightsKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performanceInsightsRetentionPeriod: (() { final guardedValue = map['performanceInsightsRetentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      preferredBackupWindow: (() { final guardedValue = map['preferredBackupWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredMaintenanceWindow: (() { final guardedValue = map['preferredMaintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationSourceIdentifier: (() { final guardedValue = map['replicationSourceIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreToPointInTime: (() { final guardedValue = map['restoreToPointInTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterRestoreToPointInTime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3Import: (() { final guardedValue = map['s3Import']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterS3Import.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scalingConfiguration: (() { final guardedValue = map['scalingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterScalingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serverlessv2ScalingConfiguration: (() { final guardedValue = map['serverlessv2ScalingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterServerlessv2ScalingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      skipFinalSnapshot: (() { final guardedValue = map['skipFinalSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      snapshotIdentifier: (() { final guardedValue = map['snapshotIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceRegion: (() { final guardedValue = map['sourceRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageEncrypted: (() { final guardedValue = map['storageEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcSecurityGroupIds: (() { final guardedValue = map['vpcSecurityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
