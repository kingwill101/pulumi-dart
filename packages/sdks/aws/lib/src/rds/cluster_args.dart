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
  final pulumi.Input<ClusterRestoreToPointInTime>? restoreToPointInTime;
  final pulumi.Input<ClusterS3Import>? s3Import;
  /// Nested attribute with scaling properties. Only valid when `engine_mode` is set to `serverless`. More details below.
  final pulumi.Input<ClusterScalingConfiguration>? scalingConfiguration;
  /// Nested attribute with scaling properties for ServerlessV2. Only valid when `engine_mode` is set to `provisioned`. More details below.
  final pulumi.Input<ClusterServerlessv2ScalingConfiguration>? serverlessv2ScalingConfiguration;
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

  /// Creates a new [ClusterArgs].
  /// [allocatedStorage] The amount of storage in gibibytes (GiB) to allocate to each DB instance in the Multi-AZ DB cluster.
  /// [allowMajorVersionUpgrade] Enable to allow major engine version upgrades when changing engine versions. Defaults to `false`.
  /// [applyImmediately] Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. Default is `false`. See [Amazon RDS Documentation for more information.](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html)
  /// [availabilityZones] List of EC2 Availability Zones for the DB cluster storage where DB cluster instances can be created.
  /// [backtrackWindow] Target backtrack window, in seconds. Only available for `aurora` and `aurora-mysql` engines currently. To disable backtracking, set this value to `0`. Defaults to `0`. Must be between `0` and `259200` (72 hours)
  /// [backupRetentionPeriod] Days to retain backups for. Default `1`
  /// [caCertificateIdentifier] The CA certificate identifier to use for the DB cluster's server certificate.
  /// [clusterIdentifier] The cluster identifier. If omitted, this provider will assign a random, unique identifier.
  /// [clusterIdentifierPrefix] Creates a unique cluster identifier beginning with the specified prefix. Conflicts with `cluster_identifier`.
  /// [clusterMembers] List of RDS Instances that are a part of this cluster
  /// [clusterScalabilityType] Specifies the scalability mode of the Aurora DB cluster. When set to `limitless`, the cluster operates as an Aurora Limitless Database. When set to `standard` (the default), the cluster uses normal DB instance creation. Valid values: `limitless`, `standard`.
  /// [copyTagsToSnapshot] Copy all Cluster `tags` to snapshots. Default is `false`.
  /// [databaseInsightsMode] The mode of Database Insights to enable for the DB cluster. Valid values: `standard`, `advanced`.
  /// [databaseName] Name for an automatically created database on cluster creation. There are different naming restrictions per database engine: [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints)
  /// [dbClusterInstanceClass] The compute and memory capacity of each DB instance in the Multi-AZ DB cluster, for example `db.m6g.xlarge`. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes and availability for your engine, see [DB instance class](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html) in the Amazon RDS User Guide.
  /// [dbClusterParameterGroupName] A cluster parameter group to associate with the cluster.
  /// [dbInstanceParameterGroupName] Instance parameter group to associate with all instances of the DB cluster. The `db_instance_parameter_group_name` parameter is only valid in combination with the `allow_major_version_upgrade` parameter.
  /// [dbSubnetGroupName] DB subnet group to associate with this DB cluster.
  /// [dbSystemId] For use with RDS Custom.
  /// [deleteAutomatedBackups] Specifies whether to remove automated backups immediately after the DB cluster is deleted. Default is `true`.
  /// [deletionProtection] If the DB cluster should have deletion protection enabled.
  /// [domain] The ID of the Directory Service Active Directory domain to create the cluster in.
  /// [domainIamRoleName] The name of the IAM role to be used when making API calls to the Directory Service.
  /// [enableGlobalWriteForwarding] Whether cluster should forward writes to an associated global cluster. Applied to secondary clusters to enable them to forward writes to an `aws.rds.GlobalCluster`'s primary cluster. See the [User Guide for Aurora](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-write-forwarding.html) for more information.
  /// [enableHttpEndpoint] Enable HTTP endpoint (data API). Only valid for some combinations of `engine_mode`, `engine` and `engine_version` and only available in some regions. See the [Region and version availability](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html#data-api.regions) section of the documentation. This option also does not work with any of these options specified: `snapshot_identifier`, `replication_source_identifier`, `s3_import`.
  /// [enableLocalWriteForwarding] Whether read replicas can forward write operations to the writer DB instance in the DB cluster. By default, write operations aren't allowed on reader DB instances. See the [User Guide for Aurora](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-mysql-write-forwarding.html) for more information. **NOTE:** Local write forwarding requires Aurora MySQL version 3.04 or higher.
  /// [enabledCloudwatchLogsExports] Set of log types to export to cloudwatch. If omitted, no logs will be exported. The following log types are supported: `audit`, `error`, `general`, `iam-db-auth-error`, `instance`, `postgresql` (PostgreSQL), `slowquery`.
  /// [engine] Name of the database engine to be used for this DB cluster. Valid Values: `aurora-mysql`, `aurora-postgresql`, `mysql`, `postgres`. (Note that `mysql` and `postgres` are Multi-AZ RDS clusters).
  /// [engineLifecycleSupport] The life cycle type for this DB instance. This setting is valid for cluster types Aurora DB clusters and Multi-AZ DB clusters. Valid values are `open-source-rds-extended-support`, `open-source-rds-extended-support-disabled`. Default value is `open-source-rds-extended-support`. [Using Amazon RDS Extended Support]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html
  /// [engineMode] Database engine mode. Valid values: `global` (only valid for Aurora MySQL 1.21 and earlier), `parallelquery`, `provisioned`, `serverless`. Defaults to: `provisioned`. Specify an empty value (`""`) for no engine mode. See the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html) for limitations when using `serverless`.
  /// [engineVersion] Database engine version. Updating this argument results in an outage. See the [Aurora MySQL](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Updates.html) and [Aurora Postgres](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraPostgreSQL.Updates.html) documentation for your configured engine to determine this value, or by running `aws rds describe-db-engine-versions`. For example with Aurora MySQL 2, a potential value for this argument is `5.7.mysql_aurora.2.03.2`. The value can contain a partial version where supported by the API. The actual engine version used is returned in the attribute `engine_version_actual`, see Attribute Reference below.
  /// [finalSnapshotIdentifier] Name of your final DB snapshot when this DB cluster is deleted. If omitted, no final snapshot will be made.
  /// [globalClusterIdentifier] Global cluster identifier specified on `aws.rds.GlobalCluster`.
  /// [iamDatabaseAuthenticationEnabled] Specifies whether or not mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled. Please see [AWS Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html) for availability and limitations.
  /// [iamRoles] List of ARNs for the IAM roles to associate to the RDS Cluster.
  /// [iops] Amount of Provisioned IOPS (input/output operations per second) to be initially allocated for each DB instance in the Multi-AZ DB cluster. For information about valid Iops values, see [Amazon RDS Provisioned IOPS storage to improve performance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS) in the Amazon RDS User Guide. (This setting is required to create a Multi-AZ DB cluster). Must be a multiple between .5 and 50 of the storage amount for the DB cluster.
  /// [kmsKeyId] ARN for the KMS encryption key. When specifying `kms_key_id`, `storage_encrypted` needs to be set to true.
  /// [manageMasterUserPassword] Set to true to allow RDS to manage the master user password in Secrets Manager. Cannot be set if `master_password` is provided.
  /// [masterPassword] Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Please refer to the [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints). Cannot be set if `manage_master_user_password` is set to `true`.
  /// [masterPasswordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [masterPasswordWoVersion] Used together with `master_password_wo` to trigger an update. Increment this value when an update to the `master_password_wo` is required.
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
  /// [scalingConfiguration] Nested attribute with scaling properties. Only valid when `engine_mode` is set to `serverless`. More details below.
  /// [serverlessv2ScalingConfiguration] Nested attribute with scaling properties for ServerlessV2. Only valid when `engine_mode` is set to `provisioned`. More details below.
  /// [skipFinalSnapshot] Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from `final_snapshot_identifier`. Default is `false`.
  /// [snapshotIdentifier] Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot. Conflicts with `global_cluster_identifier`. Clusters cannot be restored from snapshot **and** joined to an existing global cluster in a single operation. See the [AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-getting-started.html#aurora-global-database.use-snapshot) or the Global Cluster Restored From Snapshot example for instructions on building a global cluster starting with a snapshot.
  /// [sourceRegion] The source region for an encrypted replica DB cluster.
  /// [storageEncrypted] Specifies whether the DB cluster is encrypted. The default is `false` for `provisioned` `engine_mode` and `true` for `serverless` `engine_mode`. When restoring an unencrypted `snapshot_identifier`, the `kms_key_id` argument must be provided to encrypt the restored cluster. The provider will only perform drift detection if a configuration value is provided.
  /// [storageType] (Forces new for Multi-AZ DB clusters) Specifies the storage type to be associated with the DB cluster. For Aurora DB clusters, `storage_type` modifications can be done in-place. For Multi-AZ DB Clusters, the `iops` argument must also be set. Valid values are: `""`, `aurora-iopt1` (Aurora DB Clusters); `io1`, `io2` (Multi-AZ DB Clusters). Default: `""` (Aurora DB Clusters); `io1` (Multi-AZ DB Clusters).
  /// [tags] A map of tags to assign to the DB cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcSecurityGroupIds] List of VPC security groups to associate with the Cluster
  ClusterArgs({
    pulumi.Output<int>? allocatedStorage,
    pulumi.Output<bool>? allowMajorVersionUpgrade,
    pulumi.Output<bool>? applyImmediately,
    pulumi.Output<List<String>>? availabilityZones,
    pulumi.Output<int>? backtrackWindow,
    pulumi.Output<int>? backupRetentionPeriod,
    pulumi.Output<String>? caCertificateIdentifier,
    pulumi.Output<String>? clusterIdentifier,
    pulumi.Output<String>? clusterIdentifierPrefix,
    pulumi.Output<List<String>>? clusterMembers,
    pulumi.Output<String>? clusterScalabilityType,
    pulumi.Output<bool>? copyTagsToSnapshot,
    pulumi.Output<String>? databaseInsightsMode,
    pulumi.Output<String>? databaseName,
    pulumi.Output<String>? dbClusterInstanceClass,
    pulumi.Output<String>? dbClusterParameterGroupName,
    pulumi.Output<String>? dbInstanceParameterGroupName,
    pulumi.Output<String>? dbSubnetGroupName,
    pulumi.Output<String>? dbSystemId,
    pulumi.Output<bool>? deleteAutomatedBackups,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? domain,
    pulumi.Output<String>? domainIamRoleName,
    pulumi.Output<bool>? enableGlobalWriteForwarding,
    pulumi.Output<bool>? enableHttpEndpoint,
    pulumi.Output<bool>? enableLocalWriteForwarding,
    pulumi.Output<List<String>>? enabledCloudwatchLogsExports,
    required pulumi.Output<String> engine,
    pulumi.Output<String>? engineLifecycleSupport,
    pulumi.Output<String>? engineMode,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? finalSnapshotIdentifier,
    pulumi.Output<String>? globalClusterIdentifier,
    pulumi.Output<bool>? iamDatabaseAuthenticationEnabled,
    pulumi.Output<List<String>>? iamRoles,
    pulumi.Output<int>? iops,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<bool>? manageMasterUserPassword,
    pulumi.Output<String>? masterPassword,
    pulumi.Output<String>? masterPasswordWo,
    pulumi.Output<int>? masterPasswordWoVersion,
    pulumi.Output<String>? masterUserSecretKmsKeyId,
    pulumi.Output<String>? masterUsername,
    pulumi.Output<int>? monitoringInterval,
    pulumi.Output<String>? monitoringRoleArn,
    pulumi.Output<String>? networkType,
    pulumi.Output<bool>? performanceInsightsEnabled,
    pulumi.Output<String>? performanceInsightsKmsKeyId,
    pulumi.Output<int>? performanceInsightsRetentionPeriod,
    pulumi.Output<int>? port,
    pulumi.Output<String>? preferredBackupWindow,
    pulumi.Output<String>? preferredMaintenanceWindow,
    pulumi.Output<String>? region,
    pulumi.Output<String>? replicationSourceIdentifier,
    pulumi.Output<ClusterRestoreToPointInTime>? restoreToPointInTime,
    pulumi.Output<ClusterS3Import>? s3Import,
    pulumi.Output<ClusterScalingConfiguration>? scalingConfiguration,
    pulumi.Output<ClusterServerlessv2ScalingConfiguration>? serverlessv2ScalingConfiguration,
    pulumi.Output<bool>? skipFinalSnapshot,
    pulumi.Output<String>? snapshotIdentifier,
    pulumi.Output<String>? sourceRegion,
    pulumi.Output<bool>? storageEncrypted,
    pulumi.Output<String>? storageType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? vpcSecurityGroupIds,
  }) :
      allocatedStorage = pulumi.Input.asOptionalInput<int>(allocatedStorage),
      allowMajorVersionUpgrade = pulumi.Input.asOptionalInput<bool>(allowMajorVersionUpgrade),
      applyImmediately = pulumi.Input.asOptionalInput<bool>(applyImmediately),
      availabilityZones = pulumi.Input.asOptionalInput<List<String>>(availabilityZones),
      backtrackWindow = pulumi.Input.asOptionalInput<int>(backtrackWindow),
      backupRetentionPeriod = pulumi.Input.asOptionalInput<int>(backupRetentionPeriod),
      caCertificateIdentifier = pulumi.Input.asOptionalInput<String>(caCertificateIdentifier),
      clusterIdentifier = pulumi.Input.asOptionalInput<String>(clusterIdentifier),
      clusterIdentifierPrefix = pulumi.Input.asOptionalInput<String>(clusterIdentifierPrefix),
      clusterMembers = pulumi.Input.asOptionalInput<List<String>>(clusterMembers),
      clusterScalabilityType = pulumi.Input.asOptionalInput<String>(clusterScalabilityType),
      copyTagsToSnapshot = pulumi.Input.asOptionalInput<bool>(copyTagsToSnapshot),
      databaseInsightsMode = pulumi.Input.asOptionalInput<String>(databaseInsightsMode),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      dbClusterInstanceClass = pulumi.Input.asOptionalInput<String>(dbClusterInstanceClass),
      dbClusterParameterGroupName = pulumi.Input.asOptionalInput<String>(dbClusterParameterGroupName),
      dbInstanceParameterGroupName = pulumi.Input.asOptionalInput<String>(dbInstanceParameterGroupName),
      dbSubnetGroupName = pulumi.Input.asOptionalInput<String>(dbSubnetGroupName),
      dbSystemId = pulumi.Input.asOptionalInput<String>(dbSystemId),
      deleteAutomatedBackups = pulumi.Input.asOptionalInput<bool>(deleteAutomatedBackups),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      domainIamRoleName = pulumi.Input.asOptionalInput<String>(domainIamRoleName),
      enableGlobalWriteForwarding = pulumi.Input.asOptionalInput<bool>(enableGlobalWriteForwarding),
      enableHttpEndpoint = pulumi.Input.asOptionalInput<bool>(enableHttpEndpoint),
      enableLocalWriteForwarding = pulumi.Input.asOptionalInput<bool>(enableLocalWriteForwarding),
      enabledCloudwatchLogsExports = pulumi.Input.asOptionalInput<List<String>>(enabledCloudwatchLogsExports),
      engine = pulumi.Input.asInput<String>(engine),
      engineLifecycleSupport = pulumi.Input.asOptionalInput<String>(engineLifecycleSupport),
      engineMode = pulumi.Input.asOptionalInput<String>(engineMode),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      finalSnapshotIdentifier = pulumi.Input.asOptionalInput<String>(finalSnapshotIdentifier),
      globalClusterIdentifier = pulumi.Input.asOptionalInput<String>(globalClusterIdentifier),
      iamDatabaseAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(iamDatabaseAuthenticationEnabled),
      iamRoles = pulumi.Input.asOptionalInput<List<String>>(iamRoles),
      iops = pulumi.Input.asOptionalInput<int>(iops),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      manageMasterUserPassword = pulumi.Input.asOptionalInput<bool>(manageMasterUserPassword),
      masterPassword = pulumi.Input.asOptionalInput<String>(masterPassword),
      masterPasswordWo = pulumi.Input.asOptionalInput<String>(masterPasswordWo),
      masterPasswordWoVersion = pulumi.Input.asOptionalInput<int>(masterPasswordWoVersion),
      masterUserSecretKmsKeyId = pulumi.Input.asOptionalInput<String>(masterUserSecretKmsKeyId),
      masterUsername = pulumi.Input.asOptionalInput<String>(masterUsername),
      monitoringInterval = pulumi.Input.asOptionalInput<int>(monitoringInterval),
      monitoringRoleArn = pulumi.Input.asOptionalInput<String>(monitoringRoleArn),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      performanceInsightsEnabled = pulumi.Input.asOptionalInput<bool>(performanceInsightsEnabled),
      performanceInsightsKmsKeyId = pulumi.Input.asOptionalInput<String>(performanceInsightsKmsKeyId),
      performanceInsightsRetentionPeriod = pulumi.Input.asOptionalInput<int>(performanceInsightsRetentionPeriod),
      port = pulumi.Input.asOptionalInput<int>(port),
      preferredBackupWindow = pulumi.Input.asOptionalInput<String>(preferredBackupWindow),
      preferredMaintenanceWindow = pulumi.Input.asOptionalInput<String>(preferredMaintenanceWindow),
      region = pulumi.Input.asOptionalInput<String>(region),
      replicationSourceIdentifier = pulumi.Input.asOptionalInput<String>(replicationSourceIdentifier),
      restoreToPointInTime = pulumi.Input.asOptionalInput<ClusterRestoreToPointInTime>(restoreToPointInTime),
      s3Import = pulumi.Input.asOptionalInput<ClusterS3Import>(s3Import),
      scalingConfiguration = pulumi.Input.asOptionalInput<ClusterScalingConfiguration>(scalingConfiguration),
      serverlessv2ScalingConfiguration = pulumi.Input.asOptionalInput<ClusterServerlessv2ScalingConfiguration>(serverlessv2ScalingConfiguration),
      skipFinalSnapshot = pulumi.Input.asOptionalInput<bool>(skipFinalSnapshot),
      snapshotIdentifier = pulumi.Input.asOptionalInput<String>(snapshotIdentifier),
      sourceRegion = pulumi.Input.asOptionalInput<String>(sourceRegion),
      storageEncrypted = pulumi.Input.asOptionalInput<bool>(storageEncrypted),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcSecurityGroupIds = pulumi.Input.asOptionalInput<List<String>>(vpcSecurityGroupIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedStorage': ?allocatedStorage,
      'allowMajorVersionUpgrade': ?allowMajorVersionUpgrade,
      'applyImmediately': ?applyImmediately,
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
      allocatedStorage: map['allocatedStorage'] == null ? null : pulumi.Output.create<int>(map['allocatedStorage'] as int),
      allowMajorVersionUpgrade: map['allowMajorVersionUpgrade'] == null ? null : pulumi.Output.create<bool>(map['allowMajorVersionUpgrade'] as bool),
      applyImmediately: map['applyImmediately'] == null ? null : pulumi.Output.create<bool>(map['applyImmediately'] as bool),
      availabilityZones: map['availabilityZones'] == null ? null : pulumi.Output.create<List<String>>((map['availabilityZones'] as List).cast<String>()),
      backtrackWindow: map['backtrackWindow'] == null ? null : pulumi.Output.create<int>(map['backtrackWindow'] as int),
      backupRetentionPeriod: map['backupRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['backupRetentionPeriod'] as int),
      caCertificateIdentifier: map['caCertificateIdentifier'] == null ? null : pulumi.Output.create<String>(map['caCertificateIdentifier'] as String),
      clusterIdentifier: map['clusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['clusterIdentifier'] as String),
      clusterIdentifierPrefix: map['clusterIdentifierPrefix'] == null ? null : pulumi.Output.create<String>(map['clusterIdentifierPrefix'] as String),
      clusterMembers: map['clusterMembers'] == null ? null : pulumi.Output.create<List<String>>((map['clusterMembers'] as List).cast<String>()),
      clusterScalabilityType: map['clusterScalabilityType'] == null ? null : pulumi.Output.create<String>(map['clusterScalabilityType'] as String),
      copyTagsToSnapshot: map['copyTagsToSnapshot'] == null ? null : pulumi.Output.create<bool>(map['copyTagsToSnapshot'] as bool),
      databaseInsightsMode: map['databaseInsightsMode'] == null ? null : pulumi.Output.create<String>(map['databaseInsightsMode'] as String),
      databaseName: map['databaseName'] == null ? null : pulumi.Output.create<String>(map['databaseName'] as String),
      dbClusterInstanceClass: map['dbClusterInstanceClass'] == null ? null : pulumi.Output.create<String>(map['dbClusterInstanceClass'] as String),
      dbClusterParameterGroupName: map['dbClusterParameterGroupName'] == null ? null : pulumi.Output.create<String>(map['dbClusterParameterGroupName'] as String),
      dbInstanceParameterGroupName: map['dbInstanceParameterGroupName'] == null ? null : pulumi.Output.create<String>(map['dbInstanceParameterGroupName'] as String),
      dbSubnetGroupName: map['dbSubnetGroupName'] == null ? null : pulumi.Output.create<String>(map['dbSubnetGroupName'] as String),
      dbSystemId: map['dbSystemId'] == null ? null : pulumi.Output.create<String>(map['dbSystemId'] as String),
      deleteAutomatedBackups: map['deleteAutomatedBackups'] == null ? null : pulumi.Output.create<bool>(map['deleteAutomatedBackups'] as bool),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      domainIamRoleName: map['domainIamRoleName'] == null ? null : pulumi.Output.create<String>(map['domainIamRoleName'] as String),
      enableGlobalWriteForwarding: map['enableGlobalWriteForwarding'] == null ? null : pulumi.Output.create<bool>(map['enableGlobalWriteForwarding'] as bool),
      enableHttpEndpoint: map['enableHttpEndpoint'] == null ? null : pulumi.Output.create<bool>(map['enableHttpEndpoint'] as bool),
      enableLocalWriteForwarding: map['enableLocalWriteForwarding'] == null ? null : pulumi.Output.create<bool>(map['enableLocalWriteForwarding'] as bool),
      enabledCloudwatchLogsExports: map['enabledCloudwatchLogsExports'] == null ? null : pulumi.Output.create<List<String>>((map['enabledCloudwatchLogsExports'] as List).cast<String>()),
      engine: pulumi.Output.create<String>(map['engine'] as String),
      engineLifecycleSupport: map['engineLifecycleSupport'] == null ? null : pulumi.Output.create<String>(map['engineLifecycleSupport'] as String),
      engineMode: map['engineMode'] == null ? null : pulumi.Output.create<String>(map['engineMode'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      finalSnapshotIdentifier: map['finalSnapshotIdentifier'] == null ? null : pulumi.Output.create<String>(map['finalSnapshotIdentifier'] as String),
      globalClusterIdentifier: map['globalClusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['globalClusterIdentifier'] as String),
      iamDatabaseAuthenticationEnabled: map['iamDatabaseAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['iamDatabaseAuthenticationEnabled'] as bool),
      iamRoles: map['iamRoles'] == null ? null : pulumi.Output.create<List<String>>((map['iamRoles'] as List).cast<String>()),
      iops: map['iops'] == null ? null : pulumi.Output.create<int>(map['iops'] as int),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      manageMasterUserPassword: map['manageMasterUserPassword'] == null ? null : pulumi.Output.create<bool>(map['manageMasterUserPassword'] as bool),
      masterPassword: map['masterPassword'] == null ? null : pulumi.Output.create<String>(map['masterPassword'] as String),
      masterPasswordWo: map['masterPasswordWo'] == null ? null : pulumi.Output.create<String>(map['masterPasswordWo'] as String),
      masterPasswordWoVersion: map['masterPasswordWoVersion'] == null ? null : pulumi.Output.create<int>(map['masterPasswordWoVersion'] as int),
      masterUserSecretKmsKeyId: map['masterUserSecretKmsKeyId'] == null ? null : pulumi.Output.create<String>(map['masterUserSecretKmsKeyId'] as String),
      masterUsername: map['masterUsername'] == null ? null : pulumi.Output.create<String>(map['masterUsername'] as String),
      monitoringInterval: map['monitoringInterval'] == null ? null : pulumi.Output.create<int>(map['monitoringInterval'] as int),
      monitoringRoleArn: map['monitoringRoleArn'] == null ? null : pulumi.Output.create<String>(map['monitoringRoleArn'] as String),
      networkType: map['networkType'] == null ? null : pulumi.Output.create<String>(map['networkType'] as String),
      performanceInsightsEnabled: map['performanceInsightsEnabled'] == null ? null : pulumi.Output.create<bool>(map['performanceInsightsEnabled'] as bool),
      performanceInsightsKmsKeyId: map['performanceInsightsKmsKeyId'] == null ? null : pulumi.Output.create<String>(map['performanceInsightsKmsKeyId'] as String),
      performanceInsightsRetentionPeriod: map['performanceInsightsRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['performanceInsightsRetentionPeriod'] as int),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      preferredBackupWindow: map['preferredBackupWindow'] == null ? null : pulumi.Output.create<String>(map['preferredBackupWindow'] as String),
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null ? null : pulumi.Output.create<String>(map['preferredMaintenanceWindow'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replicationSourceIdentifier: map['replicationSourceIdentifier'] == null ? null : pulumi.Output.create<String>(map['replicationSourceIdentifier'] as String),
      restoreToPointInTime: map['restoreToPointInTime'] == null ? null : pulumi.Output.create<ClusterRestoreToPointInTime>(ClusterRestoreToPointInTime.fromMap((map['restoreToPointInTime'] as Map).cast<String, dynamic>())),
      s3Import: map['s3Import'] == null ? null : pulumi.Output.create<ClusterS3Import>(ClusterS3Import.fromMap((map['s3Import'] as Map).cast<String, dynamic>())),
      scalingConfiguration: map['scalingConfiguration'] == null ? null : pulumi.Output.create<ClusterScalingConfiguration>(ClusterScalingConfiguration.fromMap((map['scalingConfiguration'] as Map).cast<String, dynamic>())),
      serverlessv2ScalingConfiguration: map['serverlessv2ScalingConfiguration'] == null ? null : pulumi.Output.create<ClusterServerlessv2ScalingConfiguration>(ClusterServerlessv2ScalingConfiguration.fromMap((map['serverlessv2ScalingConfiguration'] as Map).cast<String, dynamic>())),
      skipFinalSnapshot: map['skipFinalSnapshot'] == null ? null : pulumi.Output.create<bool>(map['skipFinalSnapshot'] as bool),
      snapshotIdentifier: map['snapshotIdentifier'] == null ? null : pulumi.Output.create<String>(map['snapshotIdentifier'] as String),
      sourceRegion: map['sourceRegion'] == null ? null : pulumi.Output.create<String>(map['sourceRegion'] as String),
      storageEncrypted: map['storageEncrypted'] == null ? null : pulumi.Output.create<bool>(map['storageEncrypted'] as bool),
      storageType: map['storageType'] == null ? null : pulumi.Output.create<String>(map['storageType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['vpcSecurityGroupIds'] as List).cast<String>()),
    );
  }
}

