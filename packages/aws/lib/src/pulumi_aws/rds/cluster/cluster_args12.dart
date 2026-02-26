// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_restore_to_point_in_time/cluster_restore_to_point_in_time2.dart';
import '../cluster_s3_import/cluster_s3_import.dart';
import '../cluster_scaling_configuration/cluster_scaling_configuration.dart';
import '../cluster_serverlessv2_scaling_configuration/cluster_serverlessv2_scaling_configuration.dart';

/// The set of arguments for Cluster.
class ClusterArgs12 {
  /// The amount of storage in gibibytes (GiB) to allocate to each DB instance in the Multi-AZ DB cluster.
  final Input<int>? allocatedStorage;

  /// Enable to allow major engine version upgrades when changing engine versions. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? allowMajorVersionUpgrade;

  /// Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. See [Amazon RDS Documentation for more information.](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html)
  final Input<bool>? applyImmediately;

  /// List of EC2 Availability Zones for the DB cluster storage where DB cluster instances can be created.
  /// RDS automatically assigns 3 AZs if less than 3 AZs are configured, which will show as a difference requiring resource recreation next pulumi up.
  /// We recommend specifying 3 AZs or using the <span pulumi-lang-nodejs="`lifecycle`" pulumi-lang-dotnet="`Lifecycle`" pulumi-lang-go="`lifecycle`" pulumi-lang-python="`lifecycle`" pulumi-lang-yaml="`lifecycle`" pulumi-lang-java="`lifecycle`">`lifecycle`</span> configuration block <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> argument if necessary.
  /// A maximum of 3 AZs can be configured.
  final Input<List<String>>? availabilityZones;

  /// Target backtrack window, in seconds. Only available for <span pulumi-lang-nodejs="`aurora`" pulumi-lang-dotnet="`Aurora`" pulumi-lang-go="`aurora`" pulumi-lang-python="`aurora`" pulumi-lang-yaml="`aurora`" pulumi-lang-java="`aurora`">`aurora`</span> and `aurora-mysql` engines currently. To disable backtracking, set this value to <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>. Defaults to <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>. Must be between <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> and <span pulumi-lang-nodejs="`259200`" pulumi-lang-dotnet="`259200`" pulumi-lang-go="`259200`" pulumi-lang-python="`259200`" pulumi-lang-yaml="`259200`" pulumi-lang-java="`259200`">`259200`</span> (72 hours)
  final Input<int>? backtrackWindow;

  /// Days to retain backups for. Default <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>
  final Input<int>? backupRetentionPeriod;

  /// The CA certificate identifier to use for the DB cluster's server certificate.
  final Input<String>? caCertificateIdentifier;

  /// The cluster identifier. If omitted, this provider will assign a random, unique identifier.
  final Input<String>? clusterIdentifier;

  /// Creates a unique cluster identifier beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`clusterIdentifier`" pulumi-lang-dotnet="`ClusterIdentifier`" pulumi-lang-go="`clusterIdentifier`" pulumi-lang-python="`cluster_identifier`" pulumi-lang-yaml="`clusterIdentifier`" pulumi-lang-java="`clusterIdentifier`">`cluster_identifier`</span>.
  final Input<String>? clusterIdentifierPrefix;

  /// List of RDS Instances that are a part of this cluster
  final Input<List<String>>? clusterMembers;

  /// Specifies the scalability mode of the Aurora DB cluster. When set to <span pulumi-lang-nodejs="`limitless`" pulumi-lang-dotnet="`Limitless`" pulumi-lang-go="`limitless`" pulumi-lang-python="`limitless`" pulumi-lang-yaml="`limitless`" pulumi-lang-java="`limitless`">`limitless`</span>, the cluster operates as an Aurora Limitless Database. When set to <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span> (the default), the cluster uses normal DB instance creation. Valid values: <span pulumi-lang-nodejs="`limitless`" pulumi-lang-dotnet="`Limitless`" pulumi-lang-go="`limitless`" pulumi-lang-python="`limitless`" pulumi-lang-yaml="`limitless`" pulumi-lang-java="`limitless`">`limitless`</span>, <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>.
  final Input<String>? clusterScalabilityType;

  /// Copy all Cluster <span pulumi-lang-nodejs="`tags`" pulumi-lang-dotnet="`Tags`" pulumi-lang-go="`tags`" pulumi-lang-python="`tags`" pulumi-lang-yaml="`tags`" pulumi-lang-java="`tags`">`tags`</span> to snapshots. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? copyTagsToSnapshot;

  /// The mode of Database Insights to enable for the DB cluster. Valid values: <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>, <span pulumi-lang-nodejs="`advanced`" pulumi-lang-dotnet="`Advanced`" pulumi-lang-go="`advanced`" pulumi-lang-python="`advanced`" pulumi-lang-yaml="`advanced`" pulumi-lang-java="`advanced`">`advanced`</span>.
  final Input<String>? databaseInsightsMode;

  /// Name for an automatically created database on cluster creation. There are different naming restrictions per database engine: [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints)
  final Input<String>? databaseName;

  /// The compute and memory capacity of each DB instance in the Multi-AZ DB cluster, for example `db.m6g.xlarge`. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes and availability for your engine, see [DB instance class](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html) in the Amazon RDS User Guide.
  final Input<String>? dbClusterInstanceClass;

  /// A cluster parameter group to associate with the cluster.
  final Input<String>? dbClusterParameterGroupName;

  /// Instance parameter group to associate with all instances of the DB cluster. The <span pulumi-lang-nodejs="`dbInstanceParameterGroupName`" pulumi-lang-dotnet="`DbInstanceParameterGroupName`" pulumi-lang-go="`dbInstanceParameterGroupName`" pulumi-lang-python="`db_instance_parameter_group_name`" pulumi-lang-yaml="`dbInstanceParameterGroupName`" pulumi-lang-java="`dbInstanceParameterGroupName`">`db_instance_parameter_group_name`</span> parameter is only valid in combination with the <span pulumi-lang-nodejs="`allowMajorVersionUpgrade`" pulumi-lang-dotnet="`AllowMajorVersionUpgrade`" pulumi-lang-go="`allowMajorVersionUpgrade`" pulumi-lang-python="`allow_major_version_upgrade`" pulumi-lang-yaml="`allowMajorVersionUpgrade`" pulumi-lang-java="`allowMajorVersionUpgrade`">`allow_major_version_upgrade`</span> parameter.
  final Input<String>? dbInstanceParameterGroupName;

  /// DB subnet group to associate with this DB cluster.
  /// **NOTE:** This must match the <span pulumi-lang-nodejs="`dbSubnetGroupName`" pulumi-lang-dotnet="`DbSubnetGroupName`" pulumi-lang-go="`dbSubnetGroupName`" pulumi-lang-python="`db_subnet_group_name`" pulumi-lang-yaml="`dbSubnetGroupName`" pulumi-lang-java="`dbSubnetGroupName`">`db_subnet_group_name`</span> specified on every <span pulumi-lang-nodejs="`aws.rds.ClusterInstance`" pulumi-lang-dotnet="`aws.rds.ClusterInstance`" pulumi-lang-go="`rds.ClusterInstance`" pulumi-lang-python="`rds.ClusterInstance`" pulumi-lang-yaml="`aws.rds.ClusterInstance`" pulumi-lang-java="`aws.rds.ClusterInstance`">`aws.rds.ClusterInstance`</span> in the cluster.
  final Input<String>? dbSubnetGroupName;

  /// For use with RDS Custom.
  final Input<String>? dbSystemId;

  /// Specifies whether to remove automated backups immediately after the DB cluster is deleted. Default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? deleteAutomatedBackups;

  /// If the DB cluster should have deletion protection enabled.
  /// The database can't be deleted when this value is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  /// The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? deletionProtection;

  /// The ID of the Directory Service Active Directory domain to create the cluster in.
  final Input<String>? domain;

  /// The name of the IAM role to be used when making API calls to the Directory Service.
  final Input<String>? domainIamRoleName;

  /// Whether cluster should forward writes to an associated global cluster. Applied to secondary clusters to enable them to forward writes to an <span pulumi-lang-nodejs="`aws.rds.GlobalCluster`" pulumi-lang-dotnet="`aws.rds.GlobalCluster`" pulumi-lang-go="`rds.GlobalCluster`" pulumi-lang-python="`rds.GlobalCluster`" pulumi-lang-yaml="`aws.rds.GlobalCluster`" pulumi-lang-java="`aws.rds.GlobalCluster`">`aws.rds.GlobalCluster`</span>'s primary cluster. See the [User Guide for Aurora](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-write-forwarding.html) for more information.
  final Input<bool>? enableGlobalWriteForwarding;

  /// Enable HTTP endpoint (data API). Only valid for some combinations of <span pulumi-lang-nodejs="`engineMode`" pulumi-lang-dotnet="`EngineMode`" pulumi-lang-go="`engineMode`" pulumi-lang-python="`engine_mode`" pulumi-lang-yaml="`engineMode`" pulumi-lang-java="`engineMode`">`engine_mode`</span>, <span pulumi-lang-nodejs="`engine`" pulumi-lang-dotnet="`Engine`" pulumi-lang-go="`engine`" pulumi-lang-python="`engine`" pulumi-lang-yaml="`engine`" pulumi-lang-java="`engine`">`engine`</span> and <span pulumi-lang-nodejs="`engineVersion`" pulumi-lang-dotnet="`EngineVersion`" pulumi-lang-go="`engineVersion`" pulumi-lang-python="`engine_version`" pulumi-lang-yaml="`engineVersion`" pulumi-lang-java="`engineVersion`">`engine_version`</span> and only available in some regions. See the [Region and version availability](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html#data-api.regions) section of the documentation. This option also does not work with any of these options specified: <span pulumi-lang-nodejs="`snapshotIdentifier`" pulumi-lang-dotnet="`SnapshotIdentifier`" pulumi-lang-go="`snapshotIdentifier`" pulumi-lang-python="`snapshot_identifier`" pulumi-lang-yaml="`snapshotIdentifier`" pulumi-lang-java="`snapshotIdentifier`">`snapshot_identifier`</span>, <span pulumi-lang-nodejs="`replicationSourceIdentifier`" pulumi-lang-dotnet="`ReplicationSourceIdentifier`" pulumi-lang-go="`replicationSourceIdentifier`" pulumi-lang-python="`replication_source_identifier`" pulumi-lang-yaml="`replicationSourceIdentifier`" pulumi-lang-java="`replicationSourceIdentifier`">`replication_source_identifier`</span>, <span pulumi-lang-nodejs="`s3Import`" pulumi-lang-dotnet="`S3Import`" pulumi-lang-go="`s3Import`" pulumi-lang-python="`s3_import`" pulumi-lang-yaml="`s3Import`" pulumi-lang-java="`s3Import`">`s3_import`</span>.
  final Input<bool>? enableHttpEndpoint;

  /// Whether read replicas can forward write operations to the writer DB instance in the DB cluster. By default, write operations aren't allowed on reader DB instances. See the [User Guide for Aurora](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-mysql-write-forwarding.html) for more information. **NOTE:** Local write forwarding requires Aurora MySQL version 3.04 or higher.
  final Input<bool>? enableLocalWriteForwarding;

  /// Set of log types to export to cloudwatch. If omitted, no logs will be exported. The following log types are supported: <span pulumi-lang-nodejs="`audit`" pulumi-lang-dotnet="`Audit`" pulumi-lang-go="`audit`" pulumi-lang-python="`audit`" pulumi-lang-yaml="`audit`" pulumi-lang-java="`audit`">`audit`</span>, <span pulumi-lang-nodejs="`error`" pulumi-lang-dotnet="`Error`" pulumi-lang-go="`error`" pulumi-lang-python="`error`" pulumi-lang-yaml="`error`" pulumi-lang-java="`error`">`error`</span>, <span pulumi-lang-nodejs="`general`" pulumi-lang-dotnet="`General`" pulumi-lang-go="`general`" pulumi-lang-python="`general`" pulumi-lang-yaml="`general`" pulumi-lang-java="`general`">`general`</span>, `iam-db-auth-error`, <span pulumi-lang-nodejs="`instance`" pulumi-lang-dotnet="`Instance`" pulumi-lang-go="`instance`" pulumi-lang-python="`instance`" pulumi-lang-yaml="`instance`" pulumi-lang-java="`instance`">`instance`</span>, <span pulumi-lang-nodejs="`postgresql`" pulumi-lang-dotnet="`Postgresql`" pulumi-lang-go="`postgresql`" pulumi-lang-python="`postgresql`" pulumi-lang-yaml="`postgresql`" pulumi-lang-java="`postgresql`">`postgresql`</span> (PostgreSQL), <span pulumi-lang-nodejs="`slowquery`" pulumi-lang-dotnet="`Slowquery`" pulumi-lang-go="`slowquery`" pulumi-lang-python="`slowquery`" pulumi-lang-yaml="`slowquery`" pulumi-lang-java="`slowquery`">`slowquery`</span>.
  final Input<List<String>>? enabledCloudwatchLogsExports;

  /// Name of the database engine to be used for this DB cluster. Valid Values: `aurora-mysql`, `aurora-postgresql`, <span pulumi-lang-nodejs="`mysql`" pulumi-lang-dotnet="`Mysql`" pulumi-lang-go="`mysql`" pulumi-lang-python="`mysql`" pulumi-lang-yaml="`mysql`" pulumi-lang-java="`mysql`">`mysql`</span>, <span pulumi-lang-nodejs="`postgres`" pulumi-lang-dotnet="`Postgres`" pulumi-lang-go="`postgres`" pulumi-lang-python="`postgres`" pulumi-lang-yaml="`postgres`" pulumi-lang-java="`postgres`">`postgres`</span>. (Note that <span pulumi-lang-nodejs="`mysql`" pulumi-lang-dotnet="`Mysql`" pulumi-lang-go="`mysql`" pulumi-lang-python="`mysql`" pulumi-lang-yaml="`mysql`" pulumi-lang-java="`mysql`">`mysql`</span> and <span pulumi-lang-nodejs="`postgres`" pulumi-lang-dotnet="`Postgres`" pulumi-lang-go="`postgres`" pulumi-lang-python="`postgres`" pulumi-lang-yaml="`postgres`" pulumi-lang-java="`postgres`">`postgres`</span> are Multi-AZ RDS clusters).
  final Input<String> engine;

  /// The life cycle type for this DB instance. This setting is valid for cluster types Aurora DB clusters and Multi-AZ DB clusters. Valid values are `open-source-rds-extended-support`, `open-source-rds-extended-support-disabled`. Default value is `open-source-rds-extended-support`. [Using Amazon RDS Extended Support]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html
  final Input<String>? engineLifecycleSupport;

  /// Database engine mode. Valid values: <span pulumi-lang-nodejs="`global`" pulumi-lang-dotnet="`Global`" pulumi-lang-go="`global`" pulumi-lang-python="`global`" pulumi-lang-yaml="`global`" pulumi-lang-java="`global`">`global`</span> (only valid for Aurora MySQL 1.21 and earlier), <span pulumi-lang-nodejs="`parallelquery`" pulumi-lang-dotnet="`Parallelquery`" pulumi-lang-go="`parallelquery`" pulumi-lang-python="`parallelquery`" pulumi-lang-yaml="`parallelquery`" pulumi-lang-java="`parallelquery`">`parallelquery`</span>, <span pulumi-lang-nodejs="`provisioned`" pulumi-lang-dotnet="`Provisioned`" pulumi-lang-go="`provisioned`" pulumi-lang-python="`provisioned`" pulumi-lang-yaml="`provisioned`" pulumi-lang-java="`provisioned`">`provisioned`</span>, <span pulumi-lang-nodejs="`serverless`" pulumi-lang-dotnet="`Serverless`" pulumi-lang-go="`serverless`" pulumi-lang-python="`serverless`" pulumi-lang-yaml="`serverless`" pulumi-lang-java="`serverless`">`serverless`</span>. Defaults to: <span pulumi-lang-nodejs="`provisioned`" pulumi-lang-dotnet="`Provisioned`" pulumi-lang-go="`provisioned`" pulumi-lang-python="`provisioned`" pulumi-lang-yaml="`provisioned`" pulumi-lang-java="`provisioned`">`provisioned`</span>. Specify an empty value (`""`) for no engine mode. See the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html) for limitations when using <span pulumi-lang-nodejs="`serverless`" pulumi-lang-dotnet="`Serverless`" pulumi-lang-go="`serverless`" pulumi-lang-python="`serverless`" pulumi-lang-yaml="`serverless`" pulumi-lang-java="`serverless`">`serverless`</span>.
  final Input<String>? engineMode;

  /// Database engine version. Updating this argument results in an outage. See the [Aurora MySQL](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Updates.html) and [Aurora Postgres](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraPostgreSQL.Updates.html) documentation for your configured engine to determine this value, or by running `aws rds describe-db-engine-versions`. For example with Aurora MySQL 2, a potential value for this argument is `5.7.mysql_aurora.2.03.2`. The value can contain a partial version where supported by the API. The actual engine version used is returned in the attribute <span pulumi-lang-nodejs="`engineVersionActual`" pulumi-lang-dotnet="`EngineVersionActual`" pulumi-lang-go="`engineVersionActual`" pulumi-lang-python="`engine_version_actual`" pulumi-lang-yaml="`engineVersionActual`" pulumi-lang-java="`engineVersionActual`">`engine_version_actual`</span>, see Attribute Reference below.
  final Input<String>? engineVersion;

  /// Name of your final DB snapshot when this DB cluster is deleted. If omitted, no final snapshot will be made.
  final Input<String>? finalSnapshotIdentifier;

  /// Global cluster identifier specified on <span pulumi-lang-nodejs="`aws.rds.GlobalCluster`" pulumi-lang-dotnet="`aws.rds.GlobalCluster`" pulumi-lang-go="`rds.GlobalCluster`" pulumi-lang-python="`rds.GlobalCluster`" pulumi-lang-yaml="`aws.rds.GlobalCluster`" pulumi-lang-java="`aws.rds.GlobalCluster`">`aws.rds.GlobalCluster`</span>.
  final Input<String>? globalClusterIdentifier;

  /// Specifies whether or not mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled. Please see [AWS Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html) for availability and limitations.
  final Input<bool>? iamDatabaseAuthenticationEnabled;

  /// List of ARNs for the IAM roles to associate to the RDS Cluster.
  final Input<List<String>>? iamRoles;

  /// Amount of Provisioned IOPS (input/output operations per second) to be initially allocated for each DB instance in the Multi-AZ DB cluster. For information about valid Iops values, see [Amazon RDS Provisioned IOPS storage to improve performance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS) in the Amazon RDS User Guide. (This setting is required to create a Multi-AZ DB cluster). Must be a multiple between .5 and 50 of the storage amount for the DB cluster.
  final Input<int>? iops;

  /// ARN for the KMS encryption key. When specifying <span pulumi-lang-nodejs="`kmsKeyId`" pulumi-lang-dotnet="`KmsKeyId`" pulumi-lang-go="`kmsKeyId`" pulumi-lang-python="`kms_key_id`" pulumi-lang-yaml="`kmsKeyId`" pulumi-lang-java="`kmsKeyId`">`kms_key_id`</span>, <span pulumi-lang-nodejs="`storageEncrypted`" pulumi-lang-dotnet="`StorageEncrypted`" pulumi-lang-go="`storageEncrypted`" pulumi-lang-python="`storage_encrypted`" pulumi-lang-yaml="`storageEncrypted`" pulumi-lang-java="`storageEncrypted`">`storage_encrypted`</span> needs to be set to true.
  final Input<String>? kmsKeyId;

  /// Set to true to allow RDS to manage the master user password in Secrets Manager. Cannot be set if <span pulumi-lang-nodejs="`masterPassword`" pulumi-lang-dotnet="`MasterPassword`" pulumi-lang-go="`masterPassword`" pulumi-lang-python="`master_password`" pulumi-lang-yaml="`masterPassword`" pulumi-lang-java="`masterPassword`">`master_password`</span> is provided.
  final Input<bool>? manageMasterUserPassword;

  /// Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Please refer to the [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints). Cannot be set if <span pulumi-lang-nodejs="`manageMasterUserPassword`" pulumi-lang-dotnet="`ManageMasterUserPassword`" pulumi-lang-go="`manageMasterUserPassword`" pulumi-lang-python="`manage_master_user_password`" pulumi-lang-yaml="`manageMasterUserPassword`" pulumi-lang-java="`manageMasterUserPassword`">`manage_master_user_password`</span> is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<String>? masterPassword;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Password for the master DB user. Note that this may show up in logs. Please refer to the [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints). Cannot be set if <span pulumi-lang-nodejs="`manageMasterUserPassword`" pulumi-lang-dotnet="`ManageMasterUserPassword`" pulumi-lang-go="`manageMasterUserPassword`" pulumi-lang-python="`manage_master_user_password`" pulumi-lang-yaml="`manageMasterUserPassword`" pulumi-lang-java="`manageMasterUserPassword`">`manage_master_user_password`</span> is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<String>? masterPasswordWo;

  /// Used together with <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span> to trigger an update. Increment this value when an update to the <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span> is required.
  final Input<int>? masterPasswordWoVersion;

  /// Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. To use a KMS key in a different Amazon Web Services account, specify the key ARN or alias ARN. If not specified, the default KMS key for your Amazon Web Services account is used.
  final Input<String>? masterUserSecretKmsKeyId;

  /// Username for the master DB user. Please refer to the [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints). This argument does not support in-place updates and cannot be changed during a restore from snapshot.
  final Input<String>? masterUsername;

  /// Interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB cluster. To turn off collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid Values: 0, 1, 5, 10, 15, 30, 60.
  final Input<int>? monitoringInterval;

  /// ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. You can find more information on the [AWS Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole.html) what IAM permissions are needed to allow Enhanced Monitoring for RDS Clusters.
  final Input<String>? monitoringRoleArn;

  /// Network type of the cluster. Valid values: `IPV4`, `DUAL`.
  final Input<String>? networkType;

  /// Enables Performance Insights.
  final Input<bool>? performanceInsightsEnabled;

  /// Specifies the KMS Key ID to encrypt Performance Insights data. If not specified, the default RDS KMS key will be used (`aws/rds`).
  final Input<String>? performanceInsightsKmsKeyId;

  /// Specifies the amount of time to retain performance insights data for. Defaults to 7 days if Performance Insights are enabled. Valid values are <span pulumi-lang-nodejs="`7`" pulumi-lang-dotnet="`7`" pulumi-lang-go="`7`" pulumi-lang-python="`7`" pulumi-lang-yaml="`7`" pulumi-lang-java="`7`">`7`</span>, `month * 31` (where month is a number of months from 1-23), and <span pulumi-lang-nodejs="`731`" pulumi-lang-dotnet="`731`" pulumi-lang-go="`731`" pulumi-lang-python="`731`" pulumi-lang-yaml="`731`" pulumi-lang-java="`731`">`731`</span>. See [here](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.Overview.cost.html) for more information on retention periods.
  final Input<int>? performanceInsightsRetentionPeriod;

  /// Port on which the DB accepts connections.
  final Input<int>? port;

  /// Daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter.Time in UTC. Default: A 30-minute window selected at random from an 8-hour block of time per region, e.g. `04:00-09:00`.
  final Input<String>? preferredBackupWindow;

  /// Weekly time range during which system maintenance can occur, in (UTC) e.g., `wed:04:00-wed:04:30`
  final Input<String>? preferredMaintenanceWindow;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of a source DB cluster or DB instance if this DB cluster is to be created as a Read Replica. **Note:** Removing this attribute after creation will promote the read replica to a standalone cluster. If DB Cluster is part of a Global Cluster, use the `ignoreChanges` resource option to prevent Pulumi from showing differences for this argument instead of configuring this value.
  final Input<String>? replicationSourceIdentifier;

  /// Nested attribute for [point in time restore](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-pitr.html). More details below.
  final Input<ClusterRestoreToPointInTime2>? restoreToPointInTime;
  final Input<ClusterS3Import>? s3Import;

  /// Nested attribute with scaling properties. Only valid when <span pulumi-lang-nodejs="`engineMode`" pulumi-lang-dotnet="`EngineMode`" pulumi-lang-go="`engineMode`" pulumi-lang-python="`engine_mode`" pulumi-lang-yaml="`engineMode`" pulumi-lang-java="`engineMode`">`engine_mode`</span> is set to <span pulumi-lang-nodejs="`serverless`" pulumi-lang-dotnet="`Serverless`" pulumi-lang-go="`serverless`" pulumi-lang-python="`serverless`" pulumi-lang-yaml="`serverless`" pulumi-lang-java="`serverless`">`serverless`</span>. More details below.
  final Input<ClusterScalingConfiguration>? scalingConfiguration;

  /// Nested attribute with scaling properties for ServerlessV2. Only valid when <span pulumi-lang-nodejs="`engineMode`" pulumi-lang-dotnet="`EngineMode`" pulumi-lang-go="`engineMode`" pulumi-lang-python="`engine_mode`" pulumi-lang-yaml="`engineMode`" pulumi-lang-java="`engineMode`">`engine_mode`</span> is set to <span pulumi-lang-nodejs="`provisioned`" pulumi-lang-dotnet="`Provisioned`" pulumi-lang-go="`provisioned`" pulumi-lang-python="`provisioned`" pulumi-lang-yaml="`provisioned`" pulumi-lang-java="`provisioned`">`provisioned`</span>. More details below.
  final Input<ClusterServerlessv2ScalingConfiguration>?
      serverlessv2ScalingConfiguration;

  /// Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from <span pulumi-lang-nodejs="`finalSnapshotIdentifier`" pulumi-lang-dotnet="`FinalSnapshotIdentifier`" pulumi-lang-go="`finalSnapshotIdentifier`" pulumi-lang-python="`final_snapshot_identifier`" pulumi-lang-yaml="`finalSnapshotIdentifier`" pulumi-lang-java="`finalSnapshotIdentifier`">`final_snapshot_identifier`</span>. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? skipFinalSnapshot;

  /// Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot. Conflicts with <span pulumi-lang-nodejs="`globalClusterIdentifier`" pulumi-lang-dotnet="`GlobalClusterIdentifier`" pulumi-lang-go="`globalClusterIdentifier`" pulumi-lang-python="`global_cluster_identifier`" pulumi-lang-yaml="`globalClusterIdentifier`" pulumi-lang-java="`globalClusterIdentifier`">`global_cluster_identifier`</span>. Clusters cannot be restored from snapshot **and** joined to an existing global cluster in a single operation. See the [AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-getting-started.html#aurora-global-database.use-snapshot) or the Global Cluster Restored From Snapshot example for instructions on building a global cluster starting with a snapshot.
  final Input<String>? snapshotIdentifier;

  /// The source region for an encrypted replica DB cluster.
  final Input<String>? sourceRegion;

  /// Specifies whether the DB cluster is encrypted. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> for <span pulumi-lang-nodejs="`provisioned`" pulumi-lang-dotnet="`Provisioned`" pulumi-lang-go="`provisioned`" pulumi-lang-python="`provisioned`" pulumi-lang-yaml="`provisioned`" pulumi-lang-java="`provisioned`">`provisioned`</span> <span pulumi-lang-nodejs="`engineMode`" pulumi-lang-dotnet="`EngineMode`" pulumi-lang-go="`engineMode`" pulumi-lang-python="`engine_mode`" pulumi-lang-yaml="`engineMode`" pulumi-lang-java="`engineMode`">`engine_mode`</span> and <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> for <span pulumi-lang-nodejs="`serverless`" pulumi-lang-dotnet="`Serverless`" pulumi-lang-go="`serverless`" pulumi-lang-python="`serverless`" pulumi-lang-yaml="`serverless`" pulumi-lang-java="`serverless`">`serverless`</span> <span pulumi-lang-nodejs="`engineMode`" pulumi-lang-dotnet="`EngineMode`" pulumi-lang-go="`engineMode`" pulumi-lang-python="`engine_mode`" pulumi-lang-yaml="`engineMode`" pulumi-lang-java="`engineMode`">`engine_mode`</span>. When restoring an unencrypted <span pulumi-lang-nodejs="`snapshotIdentifier`" pulumi-lang-dotnet="`SnapshotIdentifier`" pulumi-lang-go="`snapshotIdentifier`" pulumi-lang-python="`snapshot_identifier`" pulumi-lang-yaml="`snapshotIdentifier`" pulumi-lang-java="`snapshotIdentifier`">`snapshot_identifier`</span>, the <span pulumi-lang-nodejs="`kmsKeyId`" pulumi-lang-dotnet="`KmsKeyId`" pulumi-lang-go="`kmsKeyId`" pulumi-lang-python="`kms_key_id`" pulumi-lang-yaml="`kmsKeyId`" pulumi-lang-java="`kmsKeyId`">`kms_key_id`</span> argument must be provided to encrypt the restored cluster. The provider will only perform drift detection if a configuration value is provided.
  final Input<bool>? storageEncrypted;

  /// (Forces new for Multi-AZ DB clusters) Specifies the storage type to be associated with the DB cluster. For Aurora DB clusters, <span pulumi-lang-nodejs="`storageType`" pulumi-lang-dotnet="`StorageType`" pulumi-lang-go="`storageType`" pulumi-lang-python="`storage_type`" pulumi-lang-yaml="`storageType`" pulumi-lang-java="`storageType`">`storage_type`</span> modifications can be done in-place. For Multi-AZ DB Clusters, the <span pulumi-lang-nodejs="`iops`" pulumi-lang-dotnet="`Iops`" pulumi-lang-go="`iops`" pulumi-lang-python="`iops`" pulumi-lang-yaml="`iops`" pulumi-lang-java="`iops`">`iops`</span> argument must also be set. Valid values are: `""`, `aurora-iopt1` (Aurora DB Clusters); <span pulumi-lang-nodejs="`io1`" pulumi-lang-dotnet="`Io1`" pulumi-lang-go="`io1`" pulumi-lang-python="`io1`" pulumi-lang-yaml="`io1`" pulumi-lang-java="`io1`">`io1`</span>, <span pulumi-lang-nodejs="`io2`" pulumi-lang-dotnet="`Io2`" pulumi-lang-go="`io2`" pulumi-lang-python="`io2`" pulumi-lang-yaml="`io2`" pulumi-lang-java="`io2`">`io2`</span> (Multi-AZ DB Clusters). Default: `""` (Aurora DB Clusters); <span pulumi-lang-nodejs="`io1`" pulumi-lang-dotnet="`Io1`" pulumi-lang-go="`io1`" pulumi-lang-python="`io1`" pulumi-lang-yaml="`io1`" pulumi-lang-java="`io1`">`io1`</span> (Multi-AZ DB Clusters).
  final Input<String>? storageType;

  /// A map of tags to assign to the DB cluster. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// List of VPC security groups to associate with the Cluster
  ///
  /// For more detailed documentation about each argument, refer to
  /// the AWS official documentation:
  ///
  /// * [create-db-cluster](https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-cluster.html)
  /// * [modify-db-cluster](https://docs.aws.amazon.com/cli/latest/reference/rds/modify-db-cluster.html)
  final Input<List<String>>? vpcSecurityGroupIds;

  ClusterArgs12({
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
      map['restoreToPointInTime'] = Input.mapOptionalInputValue<
              ClusterRestoreToPointInTime2, Map<String, dynamic>>(
          restoreToPointInTimeValue, (value) => value.toMap());
    }
    final s3ImportValue = s3Import;
    if (s3ImportValue != null) {
      map['s3Import'] =
          Input.mapOptionalInputValue<ClusterS3Import, Map<String, dynamic>>(
              s3ImportValue, (value) => value.toMap());
    }
    final scalingConfigurationValue = scalingConfiguration;
    if (scalingConfigurationValue != null) {
      map['scalingConfiguration'] = Input.mapOptionalInputValue<
              ClusterScalingConfiguration, Map<String, dynamic>>(
          scalingConfigurationValue, (value) => value.toMap());
    }
    final serverlessv2ScalingConfigurationValue =
        serverlessv2ScalingConfiguration;
    if (serverlessv2ScalingConfigurationValue != null) {
      map['serverlessv2ScalingConfiguration'] = Input.mapOptionalInputValue<
              ClusterServerlessv2ScalingConfiguration, Map<String, dynamic>>(
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

  factory ClusterArgs12.fromMap(Map<String, dynamic> map) {
    return ClusterArgs12(
      allocatedStorage: Input.asOptionalInput<int>(map['allocatedStorage']),
      allowMajorVersionUpgrade:
          Input.asOptionalInput<bool>(map['allowMajorVersionUpgrade']),
      applyImmediately: Input.asOptionalInput<bool>(map['applyImmediately']),
      availabilityZones:
          Input.asOptionalInput<List<String>>(map['availabilityZones']),
      backtrackWindow: Input.asOptionalInput<int>(map['backtrackWindow']),
      backupRetentionPeriod:
          Input.asOptionalInput<int>(map['backupRetentionPeriod']),
      caCertificateIdentifier:
          Input.asOptionalInput<String>(map['caCertificateIdentifier']),
      clusterIdentifier:
          Input.asOptionalInput<String>(map['clusterIdentifier']),
      clusterIdentifierPrefix:
          Input.asOptionalInput<String>(map['clusterIdentifierPrefix']),
      clusterMembers:
          Input.asOptionalInput<List<String>>(map['clusterMembers']),
      clusterScalabilityType:
          Input.asOptionalInput<String>(map['clusterScalabilityType']),
      copyTagsToSnapshot:
          Input.asOptionalInput<bool>(map['copyTagsToSnapshot']),
      databaseInsightsMode:
          Input.asOptionalInput<String>(map['databaseInsightsMode']),
      databaseName: Input.asOptionalInput<String>(map['databaseName']),
      dbClusterInstanceClass:
          Input.asOptionalInput<String>(map['dbClusterInstanceClass']),
      dbClusterParameterGroupName:
          Input.asOptionalInput<String>(map['dbClusterParameterGroupName']),
      dbInstanceParameterGroupName:
          Input.asOptionalInput<String>(map['dbInstanceParameterGroupName']),
      dbSubnetGroupName:
          Input.asOptionalInput<String>(map['dbSubnetGroupName']),
      dbSystemId: Input.asOptionalInput<String>(map['dbSystemId']),
      deleteAutomatedBackups:
          Input.asOptionalInput<bool>(map['deleteAutomatedBackups']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      domain: Input.asOptionalInput<String>(map['domain']),
      domainIamRoleName:
          Input.asOptionalInput<String>(map['domainIamRoleName']),
      enableGlobalWriteForwarding:
          Input.asOptionalInput<bool>(map['enableGlobalWriteForwarding']),
      enableHttpEndpoint:
          Input.asOptionalInput<bool>(map['enableHttpEndpoint']),
      enableLocalWriteForwarding:
          Input.asOptionalInput<bool>(map['enableLocalWriteForwarding']),
      enabledCloudwatchLogsExports: Input.asOptionalInput<List<String>>(
          map['enabledCloudwatchLogsExports']),
      engine: Input.asInput<String>(map['engine']),
      engineLifecycleSupport:
          Input.asOptionalInput<String>(map['engineLifecycleSupport']),
      engineMode: Input.asOptionalInput<String>(map['engineMode']),
      engineVersion: Input.asOptionalInput<String>(map['engineVersion']),
      finalSnapshotIdentifier:
          Input.asOptionalInput<String>(map['finalSnapshotIdentifier']),
      globalClusterIdentifier:
          Input.asOptionalInput<String>(map['globalClusterIdentifier']),
      iamDatabaseAuthenticationEnabled:
          Input.asOptionalInput<bool>(map['iamDatabaseAuthenticationEnabled']),
      iamRoles: Input.asOptionalInput<List<String>>(map['iamRoles']),
      iops: Input.asOptionalInput<int>(map['iops']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      manageMasterUserPassword:
          Input.asOptionalInput<bool>(map['manageMasterUserPassword']),
      masterPassword: Input.asOptionalInput<String>(map['masterPassword']),
      masterPasswordWo: Input.asOptionalInput<String>(map['masterPasswordWo']),
      masterPasswordWoVersion:
          Input.asOptionalInput<int>(map['masterPasswordWoVersion']),
      masterUserSecretKmsKeyId:
          Input.asOptionalInput<String>(map['masterUserSecretKmsKeyId']),
      masterUsername: Input.asOptionalInput<String>(map['masterUsername']),
      monitoringInterval: Input.asOptionalInput<int>(map['monitoringInterval']),
      monitoringRoleArn:
          Input.asOptionalInput<String>(map['monitoringRoleArn']),
      networkType: Input.asOptionalInput<String>(map['networkType']),
      performanceInsightsEnabled:
          Input.asOptionalInput<bool>(map['performanceInsightsEnabled']),
      performanceInsightsKmsKeyId:
          Input.asOptionalInput<String>(map['performanceInsightsKmsKeyId']),
      performanceInsightsRetentionPeriod:
          Input.asOptionalInput<int>(map['performanceInsightsRetentionPeriod']),
      port: Input.asOptionalInput<int>(map['port']),
      preferredBackupWindow:
          Input.asOptionalInput<String>(map['preferredBackupWindow']),
      preferredMaintenanceWindow:
          Input.asOptionalInput<String>(map['preferredMaintenanceWindow']),
      region: Input.asOptionalInput<String>(map['region']),
      replicationSourceIdentifier:
          Input.asOptionalInput<String>(map['replicationSourceIdentifier']),
      restoreToPointInTime: Input.asOptionalInput<ClusterRestoreToPointInTime2>(
          map['restoreToPointInTime']),
      s3Import: Input.asOptionalInput<ClusterS3Import>(map['s3Import']),
      scalingConfiguration: Input.asOptionalInput<ClusterScalingConfiguration>(
          map['scalingConfiguration']),
      serverlessv2ScalingConfiguration:
          Input.asOptionalInput<ClusterServerlessv2ScalingConfiguration>(
              map['serverlessv2ScalingConfiguration']),
      skipFinalSnapshot: Input.asOptionalInput<bool>(map['skipFinalSnapshot']),
      snapshotIdentifier:
          Input.asOptionalInput<String>(map['snapshotIdentifier']),
      sourceRegion: Input.asOptionalInput<String>(map['sourceRegion']),
      storageEncrypted: Input.asOptionalInput<bool>(map['storageEncrypted']),
      storageType: Input.asOptionalInput<String>(map['storageType']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcSecurityGroupIds:
          Input.asOptionalInput<List<String>>(map['vpcSecurityGroupIds']),
    );
  }
}
