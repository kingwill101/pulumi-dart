import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_master_user_secret/cluster_master_user_secret_rds.dart';
import '../cluster_restore_to_point_in_time/cluster_restore_to_point_in_time_rds.dart';
import '../cluster_s3_import/cluster_s3_import.dart';
import '../cluster_scaling_configuration/cluster_scaling_configuration.dart';
import '../cluster_serverlessv2_scaling_configuration/cluster_serverlessv2_scaling_configuration.dart';
import 'cluster_rds_args.dart';

/// Manages a [RDS Aurora Cluster](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_Aurora.html) or a [RDS Multi-AZ DB Cluster](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html). To manage cluster instances that inherit configuration from the cluster (when not running the cluster in `serverless` engine mode), see the `aws.rds.ClusterInstance` resource. To manage non-Aurora DB instances (e.g., MySQL, PostgreSQL, SQL Server, etc.), see the `aws.rds.Instance` resource.
///
/// For information on the difference between the available Aurora MySQL engines see [Comparison between Aurora MySQL 1 and Aurora MySQL 2](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraMySQL.Updates.20180206.html) in the Amazon RDS User Guide.
///
/// Changes to an RDS Cluster can occur when you manually change a parameter, such as `port`, and are reflected in the next maintenance window. Because of this, this provider may report a difference in its planning phase because a modification has not yet taken place. You can use the `apply_immediately` flag to instruct the service to apply the change immediately (see documentation below).
///
/// > **Note:** Multi-AZ DB clusters are supported only for the MySQL and PostgreSQL DB engines.
///
/// > **Note:** `ca_certificate_identifier` is only supported for Multi-AZ DB clusters.
///
/// > **Note:** using `apply_immediately` can result in a brief downtime as the server reboots. See the AWS Docs on [RDS Maintenance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html) for more information.
///
/// > **Note:** All arguments including the username and password will be stored in the raw state as plain-text.
/// > **NOTE on RDS Clusters and RDS Cluster Role Associations:** Pulumi provides both a standalone RDS Cluster Role Association - (an association between an RDS Cluster and a single IAM Role) and an RDS Cluster resource with `iam_roles` attributes. Use one resource or the other to associate IAM Roles and RDS Clusters. Not doing so will cause a conflict of associations and will result in the association being overwritten.
///
///
/// ## Example Usage
///
/// ### Aurora MySQL 2.x (MySQL 5.7)
///
///
///
/// ### Aurora MySQL 1.x (MySQL 5.6)
///
///
///
/// ### Aurora with PostgreSQL engine
///
///
///
/// ### RDS Multi-AZ Cluster
///
/// > More information about RDS Multi-AZ Clusters can be found in the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html).
///
/// To create a Multi-AZ RDS cluster, you must additionally specify the `engine`, `storage_type`, `allocated_storage`, `iops` and `db_cluster_instance_class` attributes.
///
///
///
/// ### RDS Serverless v2 Cluster
///
/// > More information about RDS Serverless v2 Clusters can be found in the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html).
///
/// > **Note:** Unlike Serverless v1, in Serverless v2 the `storage_encrypted` value is set to `false` by default.
/// This is because Serverless v1 uses the `serverless` `engine_mode`, but Serverless v2 uses the `provisioned` `engine_mode`.
///
/// To create a Serverless v2 RDS cluster, you must additionally specify the `engine_mode` and `serverlessv2_scaling_configuration` attributes. An `aws.rds.ClusterInstance` resource must also be added to the cluster with the `instance_class` attribute specified.
///
///
///
/// ### RDS/Aurora Managed Master Passwords via Secrets Manager, default KMS Key
///
/// > More information about RDS/Aurora Aurora integrates with Secrets Manager to manage master user passwords for your DB clusters can be found in the [RDS User Guide](https://aws.amazon.com/about-aws/whats-new/2022/12/amazon-rds-integration-aws-secrets-manager/) and [Aurora User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html).
///
/// You can specify the `manage_master_user_password` attribute to enable managing the master password with Secrets Manager. You can also update an existing cluster to use Secrets Manager by specify the `manage_master_user_password` attribute and removing the `master_password` attribute (removal is required).
///
///
///
/// ### RDS/Aurora Managed Master Passwords via Secrets Manager, specific KMS Key
///
/// > More information about RDS/Aurora Aurora integrates with Secrets Manager to manage master user passwords for your DB clusters can be found in the [RDS User Guide](https://aws.amazon.com/about-aws/whats-new/2022/12/amazon-rds-integration-aws-secrets-manager/) and [Aurora User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html).
///
/// You can specify the `master_user_secret_kms_key_id` attribute to specify a specific KMS Key.
///
///
///
/// ### Global Cluster Restored From Snapshot
///
///
///
/// ## Import
///
/// Using `pulumi import`, import RDS Clusters using the `cluster_identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/cluster:Cluster aurora_cluster aurora-prod-cluster
/// ```
class ClusterRds extends pulumi.CustomResource {
  /// The amount of storage in gibibytes (GiB) to allocate to each DB instance in the Multi-AZ DB cluster.
  late final pulumi.Output<int> allocatedStorage;

  /// Enable to allow major engine version upgrades when changing engine versions. Defaults to `false`.
  late final pulumi.Output<bool?> allowMajorVersionUpgrade;

  /// Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. Default is `false`. See [Amazon RDS Documentation for more information.](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html)
  late final pulumi.Output<bool> applyImmediately;

  /// Amazon Resource Name (ARN) of cluster
  late final pulumi.Output<String> arn;

  /// List of EC2 Availability Zones for the DB cluster storage where DB cluster instances can be created.
  /// RDS automatically assigns 3 AZs if less than 3 AZs are configured, which will show as a difference requiring resource recreation next pulumi up.
  /// We recommend specifying 3 AZs or using the `lifecycle` configuration block `ignore_changes` argument if necessary.
  /// A maximum of 3 AZs can be configured.
  late final pulumi.Output<List<String>> availabilityZones;

  /// Target backtrack window, in seconds. Only available for `aurora` and `aurora-mysql` engines currently. To disable backtracking, set this value to `0`. Defaults to `0`. Must be between `0` and `259200` (72 hours)
  late final pulumi.Output<int?> backtrackWindow;

  /// Days to retain backups for. Default `1`
  late final pulumi.Output<int> backupRetentionPeriod;

  /// The CA certificate identifier to use for the DB cluster's server certificate.
  late final pulumi.Output<String> caCertificateIdentifier;

  /// Expiration date of the DB instance’s server certificate
  late final pulumi.Output<String> caCertificateValidTill;

  /// The cluster identifier. If omitted, this provider will assign a random, unique identifier.
  late final pulumi.Output<String> clusterIdentifier;

  /// Creates a unique cluster identifier beginning with the specified prefix. Conflicts with `cluster_identifier`.
  late final pulumi.Output<String> clusterIdentifierPrefix;

  /// List of RDS Instances that are a part of this cluster
  late final pulumi.Output<List<String>> clusterMembers;

  /// RDS Cluster Resource ID
  late final pulumi.Output<String> clusterResourceId;

  /// Specifies the scalability mode of the Aurora DB cluster. When set to `limitless`, the cluster operates as an Aurora Limitless Database. When set to `standard` (the default), the cluster uses normal DB instance creation. Valid values: `limitless`, `standard`.
  late final pulumi.Output<String> clusterScalabilityType;

  /// Copy all Cluster `tags` to snapshots. Default is `false`.
  late final pulumi.Output<bool?> copyTagsToSnapshot;

  /// The mode of Database Insights to enable for the DB cluster. Valid values: `standard`, `advanced`.
  late final pulumi.Output<String> databaseInsightsMode;

  /// Name for an automatically created database on cluster creation. There are different naming restrictions per database engine: [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints)
  late final pulumi.Output<String> databaseName;

  /// The compute and memory capacity of each DB instance in the Multi-AZ DB cluster, for example `db.m6g.xlarge`. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes and availability for your engine, see [DB instance class](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html) in the Amazon RDS User Guide.
  late final pulumi.Output<String?> dbClusterInstanceClass;

  /// A cluster parameter group to associate with the cluster.
  late final pulumi.Output<String> dbClusterParameterGroupName;

  /// Instance parameter group to associate with all instances of the DB cluster. The `db_instance_parameter_group_name` parameter is only valid in combination with the `allow_major_version_upgrade` parameter.
  late final pulumi.Output<String?> dbInstanceParameterGroupName;

  /// DB subnet group to associate with this DB cluster.
  /// **NOTE:** This must match the `db_subnet_group_name` specified on every `aws.rds.ClusterInstance` in the cluster.
  late final pulumi.Output<String> dbSubnetGroupName;

  /// For use with RDS Custom.
  late final pulumi.Output<String> dbSystemId;

  /// Specifies whether to remove automated backups immediately after the DB cluster is deleted. Default is `true`.
  late final pulumi.Output<bool?> deleteAutomatedBackups;

  /// If the DB cluster should have deletion protection enabled.
  /// The database can't be deleted when this value is set to `true`.
  /// The default is `false`.
  late final pulumi.Output<bool?> deletionProtection;

  /// The ID of the Directory Service Active Directory domain to create the cluster in.
  late final pulumi.Output<String?> domain;

  /// The name of the IAM role to be used when making API calls to the Directory Service.
  late final pulumi.Output<String?> domainIamRoleName;

  /// Whether cluster should forward writes to an associated global cluster. Applied to secondary clusters to enable them to forward writes to an `aws.rds.GlobalCluster`'s primary cluster. See the [User Guide for Aurora](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-write-forwarding.html) for more information.
  late final pulumi.Output<bool?> enableGlobalWriteForwarding;

  /// Enable HTTP endpoint (data API). Only valid for some combinations of `engine_mode`, `engine` and `engine_version` and only available in some regions. See the [Region and version availability](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html#data-api.regions) section of the documentation. This option also does not work with any of these options specified: `snapshot_identifier`, `replication_source_identifier`, `s3_import`.
  late final pulumi.Output<bool?> enableHttpEndpoint;

  /// Whether read replicas can forward write operations to the writer DB instance in the DB cluster. By default, write operations aren't allowed on reader DB instances. See the [User Guide for Aurora](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-mysql-write-forwarding.html) for more information. **NOTE:** Local write forwarding requires Aurora MySQL version 3.04 or higher.
  late final pulumi.Output<bool?> enableLocalWriteForwarding;

  /// Set of log types to export to cloudwatch. If omitted, no logs will be exported. The following log types are supported: `audit`, `error`, `general`, `iam-db-auth-error`, `instance`, `postgresql` (PostgreSQL), `slowquery`.
  late final pulumi.Output<List<String>?> enabledCloudwatchLogsExports;

  /// DNS address of the RDS instance
  late final pulumi.Output<String> endpoint;

  /// Name of the database engine to be used for this DB cluster. Valid Values: `aurora-mysql`, `aurora-postgresql`, `mysql`, `postgres`. (Note that `mysql` and `postgres` are Multi-AZ RDS clusters).
  late final pulumi.Output<String> engine;

  /// The life cycle type for this DB instance. This setting is valid for cluster types Aurora DB clusters and Multi-AZ DB clusters. Valid values are `open-source-rds-extended-support`, `open-source-rds-extended-support-disabled`. Default value is `open-source-rds-extended-support`. [Using Amazon RDS Extended Support]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html
  late final pulumi.Output<String> engineLifecycleSupport;

  /// Database engine mode. Valid values: `global` (only valid for Aurora MySQL 1.21 and earlier), `parallelquery`, `provisioned`, `serverless`. Defaults to: `provisioned`. Specify an empty value (`""`) for no engine mode. See the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html) for limitations when using `serverless`.
  late final pulumi.Output<String?> engineMode;

  /// Database engine version. Updating this argument results in an outage. See the [Aurora MySQL](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Updates.html) and [Aurora Postgres](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraPostgreSQL.Updates.html) documentation for your configured engine to determine this value, or by running `aws rds describe-db-engine-versions`. For example with Aurora MySQL 2, a potential value for this argument is `5.7.mysql_aurora.2.03.2`. The value can contain a partial version where supported by the API. The actual engine version used is returned in the attribute `engine_version_actual`, see Attribute Reference below.
  late final pulumi.Output<String> engineVersion;

  /// Running version of the database.
  late final pulumi.Output<String> engineVersionActual;

  /// Name of your final DB snapshot when this DB cluster is deleted. If omitted, no final snapshot will be made.
  late final pulumi.Output<String?> finalSnapshotIdentifier;

  /// Global cluster identifier specified on `aws.rds.GlobalCluster`.
  late final pulumi.Output<String?> globalClusterIdentifier;

  /// Route53 Hosted Zone ID of the endpoint
  late final pulumi.Output<String> hostedZoneId;

  /// Specifies whether or not mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled. Please see [AWS Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html) for availability and limitations.
  late final pulumi.Output<bool?> iamDatabaseAuthenticationEnabled;

  /// List of ARNs for the IAM roles to associate to the RDS Cluster.
  late final pulumi.Output<List<String>> iamRoles;

  /// Amount of Provisioned IOPS (input/output operations per second) to be initially allocated for each DB instance in the Multi-AZ DB cluster. For information about valid Iops values, see [Amazon RDS Provisioned IOPS storage to improve performance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS) in the Amazon RDS User Guide. (This setting is required to create a Multi-AZ DB cluster). Must be a multiple between .5 and 50 of the storage amount for the DB cluster.
  late final pulumi.Output<int?> iops;

  /// ARN for the KMS encryption key. When specifying `kms_key_id`, `storage_encrypted` needs to be set to true.
  late final pulumi.Output<String> kmsKeyId;

  /// Set to true to allow RDS to manage the master user password in Secrets Manager. Cannot be set if `master_password` is provided.
  late final pulumi.Output<bool?> manageMasterUserPassword;

  /// Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Please refer to the [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints). Cannot be set if `manage_master_user_password` is set to `true`.
  late final pulumi.Output<String?> masterPassword;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Password for the master DB user. Note that this may show up in logs. Please refer to the [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints). Cannot be set if `manage_master_user_password` is set to `true`.
  late final pulumi.Output<String?> masterPasswordWo;

  /// Used together with `master_password_wo` to trigger an update. Increment this value when an update to the `master_password_wo` is required.
  late final pulumi.Output<int?> masterPasswordWoVersion;

  /// Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. To use a KMS key in a different Amazon Web Services account, specify the key ARN or alias ARN. If not specified, the default KMS key for your Amazon Web Services account is used.
  late final pulumi.Output<String> masterUserSecretKmsKeyId;

  /// Block that specifies the master user secret. Only available when `manage_master_user_password` is set to true. Documented below.
  late final pulumi.Output<List<ClusterMasterUserSecretRds>> masterUserSecrets;

  /// Username for the master DB user. Please refer to the [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints). This argument does not support in-place updates and cannot be changed during a restore from snapshot.
  late final pulumi.Output<String> masterUsername;

  /// Interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB cluster. To turn off collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid Values: 0, 1, 5, 10, 15, 30, 60.
  late final pulumi.Output<int> monitoringInterval;

  /// ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. You can find more information on the [AWS Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole.html) what IAM permissions are needed to allow Enhanced Monitoring for RDS Clusters.
  late final pulumi.Output<String> monitoringRoleArn;

  /// Network type of the cluster. Valid values: `IPV4`, `DUAL`.
  late final pulumi.Output<String> networkType;

  /// Enables Performance Insights.
  late final pulumi.Output<bool?> performanceInsightsEnabled;

  /// Specifies the KMS Key ID to encrypt Performance Insights data. If not specified, the default RDS KMS key will be used (`aws/rds`).
  late final pulumi.Output<String> performanceInsightsKmsKeyId;

  /// Specifies the amount of time to retain performance insights data for. Defaults to 7 days if Performance Insights are enabled. Valid values are `7`, `month * 31` (where month is a number of months from 1-23), and `731`. See [here](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.Overview.cost.html) for more information on retention periods.
  late final pulumi.Output<int> performanceInsightsRetentionPeriod;

  /// Port on which the DB accepts connections.
  late final pulumi.Output<int> port;

  /// Daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter.Time in UTC. Default: A 30-minute window selected at random from an 8-hour block of time per region, e.g. `04:00-09:00`.
  late final pulumi.Output<String> preferredBackupWindow;

  /// Weekly time range during which system maintenance can occur, in (UTC) e.g., `wed:04:00-wed:04:30`
  late final pulumi.Output<String> preferredMaintenanceWindow;

  /// Read-only endpoint for the Aurora cluster, automatically
  /// load-balanced across replicas
  late final pulumi.Output<String> readerEndpoint;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of a source DB cluster or DB instance if this DB cluster is to be created as a Read Replica. **Note:** Removing this attribute after creation will promote the read replica to a standalone cluster. If DB Cluster is part of a Global Cluster, use the `ignoreChanges` resource option to prevent Pulumi from showing differences for this argument instead of configuring this value.
  late final pulumi.Output<String?> replicationSourceIdentifier;

  /// Nested attribute for [point in time restore](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-pitr.html). More details below.
  late final pulumi.Output<ClusterRestoreToPointInTimeRds?>
      restoreToPointInTime;
  late final pulumi.Output<ClusterS3Import?> s3Import;

  /// Nested attribute with scaling properties. Only valid when `engine_mode` is set to `serverless`. More details below.
  late final pulumi.Output<ClusterScalingConfiguration?> scalingConfiguration;

  /// Nested attribute with scaling properties for ServerlessV2. Only valid when `engine_mode` is set to `provisioned`. More details below.
  late final pulumi.Output<ClusterServerlessv2ScalingConfiguration?>
      serverlessv2ScalingConfiguration;

  /// Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from `final_snapshot_identifier`. Default is `false`.
  late final pulumi.Output<bool?> skipFinalSnapshot;

  /// Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot. Conflicts with `global_cluster_identifier`. Clusters cannot be restored from snapshot **and** joined to an existing global cluster in a single operation. See the [AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-getting-started.html#aurora-global-database.use-snapshot) or the Global Cluster Restored From Snapshot example for instructions on building a global cluster starting with a snapshot.
  late final pulumi.Output<String?> snapshotIdentifier;

  /// The source region for an encrypted replica DB cluster.
  late final pulumi.Output<String?> sourceRegion;

  /// Specifies whether the DB cluster is encrypted. The default is `false` for `provisioned` `engine_mode` and `true` for `serverless` `engine_mode`. When restoring an unencrypted `snapshot_identifier`, the `kms_key_id` argument must be provided to encrypt the restored cluster. The provider will only perform drift detection if a configuration value is provided.
  late final pulumi.Output<bool> storageEncrypted;

  /// (Forces new for Multi-AZ DB clusters) Specifies the storage type to be associated with the DB cluster. For Aurora DB clusters, `storage_type` modifications can be done in-place. For Multi-AZ DB Clusters, the `iops` argument must also be set. Valid values are: `""`, `aurora-iopt1` (Aurora DB Clusters); `io1`, `io2` (Multi-AZ DB Clusters). Default: `""` (Aurora DB Clusters); `io1` (Multi-AZ DB Clusters).
  late final pulumi.Output<String> storageType;

  /// A map of tags to assign to the DB cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Order in which the clusters are upgraded (`first`, `second`, `last`). See [the AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Maintenance.AMVU.UpgradeRollout.html) for details.
  late final pulumi.Output<String> upgradeRolloutOrder;

  /// List of VPC security groups to associate with the Cluster
  ///
  /// For more detailed documentation about each argument, refer to
  /// the AWS official documentation:
  ///
  /// * [create-db-cluster](https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-cluster.html)
  /// * [modify-db-cluster](https://docs.aws.amazon.com/cli/latest/reference/rds/modify-db-cluster.html)
  late final pulumi.Output<List<String>> vpcSecurityGroupIds;

  ClusterRds(
    String name, {
    ClusterRdsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allocatedStorage = registerOutput<int>('allocatedStorage');
    this.allowMajorVersionUpgrade =
        registerOutput<bool?>('allowMajorVersionUpgrade');
    this.applyImmediately = registerOutput<bool>('applyImmediately');
    this.arn = registerOutput<String>('arn');
    this.availabilityZones = registerOutput<List<String>>('availabilityZones');
    this.backtrackWindow = registerOutput<int?>('backtrackWindow');
    this.backupRetentionPeriod = registerOutput<int>('backupRetentionPeriod');
    this.caCertificateIdentifier =
        registerOutput<String>('caCertificateIdentifier');
    this.caCertificateValidTill =
        registerOutput<String>('caCertificateValidTill');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.clusterIdentifierPrefix =
        registerOutput<String>('clusterIdentifierPrefix');
    this.clusterMembers = registerOutput<List<String>>('clusterMembers');
    this.clusterResourceId = registerOutput<String>('clusterResourceId');
    this.clusterScalabilityType =
        registerOutput<String>('clusterScalabilityType');
    this.copyTagsToSnapshot = registerOutput<bool?>('copyTagsToSnapshot');
    this.databaseInsightsMode = registerOutput<String>('databaseInsightsMode');
    this.databaseName = registerOutput<String>('databaseName');
    this.dbClusterInstanceClass =
        registerOutput<String?>('dbClusterInstanceClass');
    this.dbClusterParameterGroupName =
        registerOutput<String>('dbClusterParameterGroupName');
    this.dbInstanceParameterGroupName =
        registerOutput<String?>('dbInstanceParameterGroupName');
    this.dbSubnetGroupName = registerOutput<String>('dbSubnetGroupName');
    this.dbSystemId = registerOutput<String>('dbSystemId');
    this.deleteAutomatedBackups =
        registerOutput<bool?>('deleteAutomatedBackups');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.domain = registerOutput<String?>('domain');
    this.domainIamRoleName = registerOutput<String?>('domainIamRoleName');
    this.enableGlobalWriteForwarding =
        registerOutput<bool?>('enableGlobalWriteForwarding');
    this.enableHttpEndpoint = registerOutput<bool?>('enableHttpEndpoint');
    this.enableLocalWriteForwarding =
        registerOutput<bool?>('enableLocalWriteForwarding');
    this.enabledCloudwatchLogsExports =
        registerOutput<List<String>?>('enabledCloudwatchLogsExports');
    this.endpoint = registerOutput<String>('endpoint');
    this.engine = registerOutput<String>('engine');
    this.engineLifecycleSupport =
        registerOutput<String>('engineLifecycleSupport');
    this.engineMode = registerOutput<String?>('engineMode');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.engineVersionActual = registerOutput<String>('engineVersionActual');
    this.finalSnapshotIdentifier =
        registerOutput<String?>('finalSnapshotIdentifier');
    this.globalClusterIdentifier =
        registerOutput<String?>('globalClusterIdentifier');
    this.hostedZoneId = registerOutput<String>('hostedZoneId');
    this.iamDatabaseAuthenticationEnabled =
        registerOutput<bool?>('iamDatabaseAuthenticationEnabled');
    this.iamRoles = registerOutput<List<String>>('iamRoles');
    this.iops = registerOutput<int?>('iops');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.manageMasterUserPassword =
        registerOutput<bool?>('manageMasterUserPassword');
    this.masterPassword = registerOutput<String?>('masterPassword');
    this.masterPasswordWo = registerOutput<String?>('masterPasswordWo');
    this.masterPasswordWoVersion =
        registerOutput<int?>('masterPasswordWoVersion');
    this.masterUserSecretKmsKeyId =
        registerOutput<String>('masterUserSecretKmsKeyId');
    this.masterUserSecrets =
        registerOutput<List<ClusterMasterUserSecretRds>>('masterUserSecrets');
    this.masterUsername = registerOutput<String>('masterUsername');
    this.monitoringInterval = registerOutput<int>('monitoringInterval');
    this.monitoringRoleArn = registerOutput<String>('monitoringRoleArn');
    this.networkType = registerOutput<String>('networkType');
    this.performanceInsightsEnabled =
        registerOutput<bool?>('performanceInsightsEnabled');
    this.performanceInsightsKmsKeyId =
        registerOutput<String>('performanceInsightsKmsKeyId');
    this.performanceInsightsRetentionPeriod =
        registerOutput<int>('performanceInsightsRetentionPeriod');
    this.port = registerOutput<int>('port');
    this.preferredBackupWindow =
        registerOutput<String>('preferredBackupWindow');
    this.preferredMaintenanceWindow =
        registerOutput<String>('preferredMaintenanceWindow');
    this.readerEndpoint = registerOutput<String>('readerEndpoint');
    this.region = registerOutput<String>('region');
    this.replicationSourceIdentifier =
        registerOutput<String?>('replicationSourceIdentifier');
    this.restoreToPointInTime =
        registerOutput<ClusterRestoreToPointInTimeRds?>('restoreToPointInTime');
    this.s3Import = registerOutput<ClusterS3Import?>('s3Import');
    this.scalingConfiguration =
        registerOutput<ClusterScalingConfiguration?>('scalingConfiguration');
    this.serverlessv2ScalingConfiguration =
        registerOutput<ClusterServerlessv2ScalingConfiguration?>(
            'serverlessv2ScalingConfiguration');
    this.skipFinalSnapshot = registerOutput<bool?>('skipFinalSnapshot');
    this.snapshotIdentifier = registerOutput<String?>('snapshotIdentifier');
    this.sourceRegion = registerOutput<String?>('sourceRegion');
    this.storageEncrypted = registerOutput<bool>('storageEncrypted');
    this.storageType = registerOutput<String>('storageType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.upgradeRolloutOrder = registerOutput<String>('upgradeRolloutOrder');
    this.vpcSecurityGroupIds =
        registerOutput<List<String>>('vpcSecurityGroupIds');
  }
}
