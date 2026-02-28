// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_blue_green_update.dart';
import 'instance_restore_to_point_in_time.dart';
import 'instance_s3_import.dart';

/// {@template pulumi_rds_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_rds_instance_instance_args_doc}
class InstanceArgs {
  /// The allocated storage in gibibytes. If `max_allocated_storage` is configured, this argument represents the initial storage allocation and differences from the configuration will be ignored automatically when Storage Autoscaling occurs. If `replicate_source_db` is set, the value is ignored during the creation of the instance.
  final pulumi.Input<int>? allocatedStorage;

  /// Indicates that major version
  /// upgrades are allowed. Changing this parameter does not result in an outage and
  /// the change is asynchronously applied as soon as possible.
  final pulumi.Input<bool>? allowMajorVersionUpgrade;

  /// Specifies whether any database modifications
  /// are applied immediately, or during the next maintenance window. Default is
  /// `false`. See [Amazon RDS Documentation for more
  /// information.](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html)
  final pulumi.Input<bool>? applyImmediately;

  /// Indicates that minor engine upgrades
  /// will be applied automatically to the DB instance during the maintenance window.
  /// Defaults to true.
  final pulumi.Input<bool>? autoMinorVersionUpgrade;

  /// The AZ for the RDS instance.
  final pulumi.Input<String>? availabilityZone;

  /// The days to retain backups for.
  /// Must be between `0` and `35`.
  /// Default is `0`.
  /// Must be greater than `0` if the database is used as a source for a [Read Replica][instance-replication],
  /// uses low-downtime updates,
  /// or will use [RDS Blue/Green deployments][blue-green].
  final pulumi.Input<int>? backupRetentionPeriod;

  /// Specifies where automated backups and manual snapshots are stored. Possible values are `region` (default) and `outposts`. See [Working with Amazon RDS on AWS Outposts](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html) for more information.
  final pulumi.Input<String>? backupTarget;

  /// The daily time range (in UTC) during which automated backups are created if they are enabled.
  /// Example: "09:46-10:16". Must not overlap with `maintenance_window`.
  final pulumi.Input<String>? backupWindow;

  /// Enables low-downtime updates using [RDS Blue/Green deployments][blue-green].
  /// See `blue_green_update` below.
  final pulumi.Input<InstanceBlueGreenUpdate>? blueGreenUpdate;

  /// The identifier of the CA certificate for the DB instance.
  final pulumi.Input<String>? caCertIdentifier;

  /// The character set name to use for DB encoding in Oracle and Microsoft SQL instances (collation).
  /// This can't be changed.
  /// See [Oracle Character Sets Supported in Amazon RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.OracleCharacterSets.html) or
  /// [Server-Level Collation for Microsoft SQL Server](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.SQLServer.CommonDBATasks.Collation.html) for more information.
  /// Cannot be set  with `replicate_source_db`, `restore_to_point_in_time`, `s3_import`, or `snapshot_identifier`.
  final pulumi.Input<String>? characterSetName;

  /// Copy all Instance `tags` to snapshots. Default is `false`.
  final pulumi.Input<bool>? copyTagsToSnapshot;

  /// The instance profile associated with the underlying Amazon EC2 instance of an RDS Custom DB instance.
  final pulumi.Input<String>? customIamInstanceProfile;

  /// Indicates whether to enable a customer-owned IP address (CoIP) for an RDS on Outposts DB instance. See [CoIP for RDS on Outposts](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html#rds-on-outposts.coip) for more information.
  ///
  /// For more detailed documentation about each argument, refer to the [AWS official
  /// documentation](http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html).
  ///
  /// > **NOTE:** Removing the `replicate_source_db` attribute from an existing RDS
  /// Replicate database managed by the provider will promote the database to a fully
  /// standalone database.
  final pulumi.Input<bool>? customerOwnedIpEnabled;

  /// The mode of Database Insights that is enabled for the instance. Valid values: `standard`, `advanced` .
  final pulumi.Input<String>? databaseInsightsMode;

  /// The name of the database to create when the DB instance is created. If this parameter is not specified, no database is created in the DB instance. Note that this does not apply for Oracle or SQL Server engines. See the [AWS documentation](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/rds/create-db-instance.html) for more details on what applies for those engines. If you are providing an Oracle db name, it needs to be in all upper case. Cannot be specified for a replica.
  final pulumi.Input<String>? dbName;

  /// Name of DB subnet group.
  /// DB instance will be created in the VPC associated with the DB subnet group.
  /// If unspecified, will be created in the `default` Subnet Group.
  /// When working with read replicas created in the same region, defaults to the Subnet Group Name of the source DB.
  /// When working with read replicas created in a different region, defaults to the `default` Subnet Group.
  /// See [DBSubnetGroupName in API action CreateDBInstanceReadReplica](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstanceReadReplica.html) for additional read replica constraints.
  final pulumi.Input<String>? dbSubnetGroupName;

  /// Use a dedicated log volume (DLV) for the DB instance. Requires Provisioned IOPS. See the [AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.dlv) for more details.
  final pulumi.Input<bool>? dedicatedLogVolume;

  /// Specifies whether to remove automated backups immediately after the DB instance is deleted. Default is `true`.
  final pulumi.Input<bool>? deleteAutomatedBackups;

  /// If the DB instance should have deletion protection enabled. The database can't be deleted when this value is set to `true`. The default is `false`.
  final pulumi.Input<bool>? deletionProtection;

  /// The ID of the Directory Service Active Directory domain to create the instance in. Conflicts with `domain_fqdn`, `domain_ou`, `domain_auth_secret_arn` and a `domain_dns_ips`.
  final pulumi.Input<String>? domain;

  /// The ARN for the Secrets Manager secret with the self managed Active Directory credentials for the user joining the domain. Conflicts with `domain` and `domain_iam_role_name`.
  final pulumi.Input<String>? domainAuthSecretArn;

  /// The IPv4 DNS IP addresses of your primary and secondary self managed Active Directory domain controllers. Two IP addresses must be provided. If there isn't a secondary domain controller, use the IP address of the primary domain controller for both entries in the list. Conflicts with `domain` and `domain_iam_role_name`.
  final pulumi.Input<List<String>>? domainDnsIps;

  /// The fully qualified domain name (FQDN) of the self managed Active Directory domain. Conflicts with `domain` and `domain_iam_role_name`.
  final pulumi.Input<String>? domainFqdn;

  /// The name of the IAM role to be used when making API calls to the Directory Service. Conflicts with `domain_fqdn`, `domain_ou`, `domain_auth_secret_arn` and a `domain_dns_ips`.
  final pulumi.Input<String>? domainIamRoleName;

  /// The self managed Active Directory organizational unit for your DB instance to join. Conflicts with `domain` and `domain_iam_role_name`.
  final pulumi.Input<String>? domainOu;

  /// Set of log types to enable for exporting to CloudWatch logs. If omitted, no logs will be exported. For supported values, see the EnableCloudwatchLogsExports.member.N parameter in [API action CreateDBInstance](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html).
  final pulumi.Input<List<String>>? enabledCloudwatchLogsExports;

  /// The database engine to use. For supported values, see the Engine parameter in [API action CreateDBInstance](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html). Note that for Amazon Aurora instances the engine must match the DB cluster's engine'. For information on the difference between the available Aurora MySQL engines see [Comparison between Aurora MySQL 1 and Aurora MySQL 2](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraMySQL.Updates.20180206.html) in the Amazon RDS User Guide.
  final pulumi.Input<String>? engine;

  /// The life cycle type for this DB instance. This setting applies only to RDS for MySQL and RDS for PostgreSQL. Valid values are `open-source-rds-extended-support`, `open-source-rds-extended-support-disabled`. Default value is `open-source-rds-extended-support`. [Using Amazon RDS Extended Support]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html
  final pulumi.Input<String>? engineLifecycleSupport;

  /// The engine version to use. If `auto_minor_version_upgrade` is enabled, you can provide a prefix of the version such as `8.0` (for `8.0.36`). The actual engine version used is returned in the attribute `engine_version_actual`, see Attribute Reference below. For supported values, see the EngineVersion parameter in [API action CreateDBInstance](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html). Note that for Amazon Aurora instances the engine version must match the DB cluster's engine version'.
  final pulumi.Input<String>? engineVersion;

  /// The name of your final DB snapshot
  /// when this DB instance is deleted. Must be provided if `skip_final_snapshot` is
  /// set to `false`. The value must begin with a letter, only contain alphanumeric characters and hyphens, and not end with a hyphen or contain two consecutive hyphens. Must not be provided when deleting a read replica.
  final pulumi.Input<String>? finalSnapshotIdentifier;

  /// Specifies whether mappings of AWS Identity and Access Management (IAM) accounts to database
  /// accounts is enabled.
  final pulumi.Input<bool>? iamDatabaseAuthenticationEnabled;

  /// The name of the RDS instance, if omitted, this provider will assign a random, unique identifier. Required if `restore_to_point_in_time` is specified.
  final pulumi.Input<String>? identifier;

  /// Creates a unique identifier beginning with the specified prefix. Conflicts with `identifier`.
  final pulumi.Input<String>? identifierPrefix;

  /// The instance type of the RDS instance.
  final pulumi.Input<String> instanceClass;

  /// The amount of provisioned IOPS. Setting this implies a
  /// storage_type of "io1" or "io2". Can only be set when `storage_type` is `"io1"`, `"io2` or `"gp3"`.
  /// Cannot be specified for gp3 storage if the `allocated_storage` value is below a per-`engine` threshold.
  /// See the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#gp3-storage) for details.
  final pulumi.Input<int>? iops;

  /// The ARN for the KMS encryption key. If creating an
  /// encrypted replica, set this to the destination KMS ARN.
  final pulumi.Input<String>? kmsKeyId;

  /// License model information for this DB instance. Valid values for this field are as follows:
  /// * RDS for MariaDB: `general-public-license`
  /// * RDS for Microsoft SQL Server: `license-included`
  /// * RDS for MySQL: `general-public-license`
  /// * RDS for Oracle: `bring-your-own-license | license-included`
  /// * RDS for PostgreSQL: `postgresql-license`
  final pulumi.Input<String>? licenseModel;

  /// The window to perform maintenance in.
  /// Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00". See [RDS
  /// Maintenance Window
  /// docs](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow)
  /// for more information.
  final pulumi.Input<String>? maintenanceWindow;

  /// Set to true to allow RDS to manage the master user password in Secrets Manager. Cannot be set if `password` or `password_wo` is provided.
  final pulumi.Input<bool>? manageMasterUserPassword;

  /// The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. To use a KMS key in a different Amazon Web Services account, specify the key ARN or alias ARN. If not specified, the default KMS key for your Amazon Web Services account is used.
  final pulumi.Input<String>? masterUserSecretKmsKeyId;

  /// Specifies the maximum storage (in GiB) that Amazon RDS can automatically scale to for this DB instance. By default, Storage Autoscaling is disabled. To enable Storage Autoscaling, set `max_allocated_storage` to **greater than or equal to** `allocated_storage`. Setting `max_allocated_storage` to 0 explicitly disables Storage Autoscaling. When configured, changes to `allocated_storage` will be automatically ignored as the storage can dynamically scale.
  final pulumi.Input<int>? maxAllocatedStorage;

  /// The interval, in seconds, between points
  /// when Enhanced Monitoring metrics are collected for the DB instance. To disable
  /// collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid
  /// Values: 0, 1, 5, 10, 15, 30, 60.
  final pulumi.Input<int>? monitoringInterval;

  /// The ARN for the IAM role that permits RDS
  /// to send enhanced monitoring metrics to CloudWatch Logs. You can find more
  /// information on the [AWS
  /// Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html)
  /// what IAM permissions are needed to allow Enhanced Monitoring for RDS Instances.
  final pulumi.Input<String>? monitoringRoleArn;

  /// Specifies if the RDS instance is multi-AZ
  final pulumi.Input<bool>? multiAz;

  /// The national character set is used in the NCHAR, NVARCHAR2, and NCLOB data types for Oracle instances. This can't be changed. See [Oracle Character Sets
  /// Supported in Amazon RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.OracleCharacterSets.html).
  final pulumi.Input<String>? ncharCharacterSetName;

  /// The network type of the DB instance. Valid values: `IPV4`, `DUAL`.
  final pulumi.Input<String>? networkType;

  /// Name of the DB option group to associate.
  final pulumi.Input<String>? optionGroupName;

  /// Name of the DB parameter group to associate.
  final pulumi.Input<String>? parameterGroupName;

  /// Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Cannot be set if `manage_master_user_password` is set to `true`.
  final pulumi.Input<String>? password;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Cannot be set if `manage_master_user_password` is set to `true`.
  final pulumi.Input<String>? passwordWo;

  /// Used together with `password_wo` to trigger an update. Increment this value when an update to `password_wo` is required.
  final pulumi.Input<int>? passwordWoVersion;

  /// Specifies whether Performance Insights are enabled. Defaults to false.
  final pulumi.Input<bool>? performanceInsightsEnabled;

  /// The ARN for the KMS key to encrypt Performance Insights data. When specifying `performance_insights_kms_key_id`, `performance_insights_enabled` needs to be set to true. Once KMS key is set, it can never be changed.
  final pulumi.Input<String>? performanceInsightsKmsKeyId;

  /// Amount of time in days to retain Performance Insights data. Valid values are `7`, `731` (2 years) or a multiple of `31`. When specifying `performance_insights_retention_period`, `performance_insights_enabled` needs to be set to true. Defaults to '7'.
  final pulumi.Input<int>? performanceInsightsRetentionPeriod;

  /// The port on which the DB accepts connections.
  final pulumi.Input<int>? port;

  /// Bool to control if instance is publicly
  /// accessible. Default is `false`.
  final pulumi.Input<bool>? publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Specifies whether the replica is in either `mounted` or `open-read-only` mode. This attribute
  /// is only supported by Oracle instances. Oracle replicas operate in `open-read-only` mode unless otherwise specified. See [Working with Oracle Read Replicas](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html) for more information.
  final pulumi.Input<String>? replicaMode;

  /// Specifies that this resource is a Replica database, and to use this value as the source database.
  /// If replicating an Amazon RDS Database Instance in the same region, use the `identifier` of the source DB, unless also specifying the `db_subnet_group_name`.
  /// If specifying the `db_subnet_group_name` in the same region, use the `arn` of the source DB.
  /// If replicating an Instance in a different region, use the `arn` of the source DB.
  /// Note that if you are creating a cross-region replica of an encrypted database you will also need to specify a `kms_key_id`.
  /// See [DB Instance Replication][instance-replication] and [Working with PostgreSQL and MySQL Read Replicas](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReadRepl.html) for more information on using Replication.
  final pulumi.Input<String>? replicateSourceDb;

  /// A configuration block for restoring a DB instance to an arbitrary point in time.
  /// Requires the `identifier` argument to be set with the name of the new DB instance to be created.
  /// See Restore To Point In Time below for details.
  final pulumi.Input<InstanceRestoreToPointInTime>? restoreToPointInTime;

  /// Restore from a Percona Xtrabackup in S3.  See [Importing Data into an Amazon RDS MySQL DB Instance](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/MySQL.Procedural.Importing.html)
  final pulumi.Input<InstanceS3Import>? s3Import;

  /// Determines whether a final DB snapshot is
  /// created before the DB instance is deleted. If true is specified, no DBSnapshot
  /// is created. If false is specified, a DB snapshot is created before the DB
  /// instance is deleted, using the value from `final_snapshot_identifier`. Default
  /// is `false`.
  final pulumi.Input<bool>? skipFinalSnapshot;

  /// Specifies whether or not to create this database from a snapshot.
  /// This corresponds to the snapshot ID you'd find in the RDS console, e.g: rds:production-2015-06-26-06-05.
  final pulumi.Input<String>? snapshotIdentifier;

  /// Specifies whether the DB instance is
  /// encrypted. Note that if you are creating a cross-region read replica this field
  /// is ignored and you should instead declare `kms_key_id` with a valid ARN. The
  /// default is `false` if not specified.
  final pulumi.Input<bool>? storageEncrypted;

  /// The storage throughput value for the DB instance. Can only be set when `storage_type` is `"gp3"`. Cannot be specified if the `allocated_storage` value is below a per-`engine` threshold. See the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#gp3-storage) for details.
  final pulumi.Input<int>? storageThroughput;

  /// One of "standard" (magnetic), "gp2" (general
  /// purpose SSD), "gp3" (general purpose SSD that needs `iops` independently)
  /// "io1" (provisioned IOPS SSD) or "io2" (block express storage provisioned IOPS
  /// SSD). The default is "io1" if `iops` is specified, "gp2" if not.
  final pulumi.Input<String>? storageType;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Time zone of the DB instance. `timezone` is currently
  /// only supported by Microsoft SQL Server. The `timezone` can only be set on
  /// creation. See [MSSQL User
  /// Guide](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.TimeZone)
  /// for more information.
  final pulumi.Input<String>? timezone;

  /// Whether to upgrade the storage file system configuration on the read replica.
  /// Can only be set with `replicate_source_db`.
  final pulumi.Input<bool>? upgradeStorageConfig;

  /// (Required unless a `snapshot_identifier` or `replicate_source_db`
  /// is provided) Username for the master DB user. Cannot be specified for a replica.
  final pulumi.Input<String>? username;

  /// List of VPC security groups to
  /// associate.
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  /// Creates a new [InstanceArgs].
  /// [allocatedStorage] The allocated storage in gibibytes. If `max_allocated_storage` is configured, this argument represents the initial storage allocation and differences from the configuration will be ignored automatically when Storage Autoscaling occurs. If `replicate_source_db` is set, the value is ignored during the creation of the instance.
  /// [allowMajorVersionUpgrade] Indicates that major version
  /// [applyImmediately] Specifies whether any database modifications
  /// [autoMinorVersionUpgrade] Indicates that minor engine upgrades
  /// [availabilityZone] The AZ for the RDS instance.
  /// [backupRetentionPeriod] The days to retain backups for.
  /// [backupTarget] Specifies where automated backups and manual snapshots are stored. Possible values are `region` (default) and `outposts`. See [Working with Amazon RDS on AWS Outposts](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html) for more information.
  /// [backupWindow] The daily time range (in UTC) during which automated backups are created if they are enabled.
  /// [blueGreenUpdate] Enables low-downtime updates using [RDS Blue/Green deployments][blue-green].
  /// [caCertIdentifier] The identifier of the CA certificate for the DB instance.
  /// [characterSetName] The character set name to use for DB encoding in Oracle and Microsoft SQL instances (collation).
  /// [copyTagsToSnapshot] Copy all Instance `tags` to snapshots. Default is `false`.
  /// [customIamInstanceProfile] The instance profile associated with the underlying Amazon EC2 instance of an RDS Custom DB instance.
  /// [customerOwnedIpEnabled] Indicates whether to enable a customer-owned IP address (CoIP) for an RDS on Outposts DB instance. See [CoIP for RDS on Outposts](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html#rds-on-outposts.coip) for more information.
  /// [databaseInsightsMode] The mode of Database Insights that is enabled for the instance. Valid values: `standard`, `advanced` .
  /// [dbName] The name of the database to create when the DB instance is created. If this parameter is not specified, no database is created in the DB instance. Note that this does not apply for Oracle or SQL Server engines. See the [AWS documentation](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/rds/create-db-instance.html) for more details on what applies for those engines. If you are providing an Oracle db name, it needs to be in all upper case. Cannot be specified for a replica.
  /// [dbSubnetGroupName] Name of DB subnet group.
  /// [dedicatedLogVolume] Use a dedicated log volume (DLV) for the DB instance. Requires Provisioned IOPS. See the [AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.dlv) for more details.
  /// [deleteAutomatedBackups] Specifies whether to remove automated backups immediately after the DB instance is deleted. Default is `true`.
  /// [deletionProtection] If the DB instance should have deletion protection enabled. The database can't be deleted when this value is set to `true`. The default is `false`.
  /// [domain] The ID of the Directory Service Active Directory domain to create the instance in. Conflicts with `domain_fqdn`, `domain_ou`, `domain_auth_secret_arn` and a `domain_dns_ips`.
  /// [domainAuthSecretArn] The ARN for the Secrets Manager secret with the self managed Active Directory credentials for the user joining the domain. Conflicts with `domain` and `domain_iam_role_name`.
  /// [domainDnsIps] The IPv4 DNS IP addresses of your primary and secondary self managed Active Directory domain controllers. Two IP addresses must be provided. If there isn't a secondary domain controller, use the IP address of the primary domain controller for both entries in the list. Conflicts with `domain` and `domain_iam_role_name`.
  /// [domainFqdn] The fully qualified domain name (FQDN) of the self managed Active Directory domain. Conflicts with `domain` and `domain_iam_role_name`.
  /// [domainIamRoleName] The name of the IAM role to be used when making API calls to the Directory Service. Conflicts with `domain_fqdn`, `domain_ou`, `domain_auth_secret_arn` and a `domain_dns_ips`.
  /// [domainOu] The self managed Active Directory organizational unit for your DB instance to join. Conflicts with `domain` and `domain_iam_role_name`.
  /// [enabledCloudwatchLogsExports] Set of log types to enable for exporting to CloudWatch logs. If omitted, no logs will be exported. For supported values, see the EnableCloudwatchLogsExports.member.N parameter in [API action CreateDBInstance](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html).
  /// [engine] The database engine to use. For supported values, see the Engine parameter in [API action CreateDBInstance](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html). Note that for Amazon Aurora instances the engine must match the DB cluster's engine'. For information on the difference between the available Aurora MySQL engines see [Comparison between Aurora MySQL 1 and Aurora MySQL 2](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraMySQL.Updates.20180206.html) in the Amazon RDS User Guide.
  /// [engineLifecycleSupport] The life cycle type for this DB instance. This setting applies only to RDS for MySQL and RDS for PostgreSQL. Valid values are `open-source-rds-extended-support`, `open-source-rds-extended-support-disabled`. Default value is `open-source-rds-extended-support`. [Using Amazon RDS Extended Support]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html
  /// [engineVersion] The engine version to use. If `auto_minor_version_upgrade` is enabled, you can provide a prefix of the version such as `8.0` (for `8.0.36`). The actual engine version used is returned in the attribute `engine_version_actual`, see Attribute Reference below. For supported values, see the EngineVersion parameter in [API action CreateDBInstance](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html). Note that for Amazon Aurora instances the engine version must match the DB cluster's engine version'.
  /// [finalSnapshotIdentifier] The name of your final DB snapshot
  /// [iamDatabaseAuthenticationEnabled] Specifies whether mappings of AWS Identity and Access Management (IAM) accounts to database
  /// [identifier] The name of the RDS instance, if omitted, this provider will assign a random, unique identifier. Required if `restore_to_point_in_time` is specified.
  /// [identifierPrefix] Creates a unique identifier beginning with the specified prefix. Conflicts with `identifier`.
  /// [instanceClass] The instance type of the RDS instance.
  /// [iops] The amount of provisioned IOPS. Setting this implies a
  /// [kmsKeyId] The ARN for the KMS encryption key. If creating an
  /// [licenseModel] License model information for this DB instance. Valid values for this field are as follows:
  /// [maintenanceWindow] The window to perform maintenance in.
  /// [manageMasterUserPassword] Set to true to allow RDS to manage the master user password in Secrets Manager. Cannot be set if `password` or `password_wo` is provided.
  /// [masterUserSecretKmsKeyId] The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. To use a KMS key in a different Amazon Web Services account, specify the key ARN or alias ARN. If not specified, the default KMS key for your Amazon Web Services account is used.
  /// [maxAllocatedStorage] Specifies the maximum storage (in GiB) that Amazon RDS can automatically scale to for this DB instance. By default, Storage Autoscaling is disabled. To enable Storage Autoscaling, set `max_allocated_storage` to **greater than or equal to** `allocated_storage`. Setting `max_allocated_storage` to 0 explicitly disables Storage Autoscaling. When configured, changes to `allocated_storage` will be automatically ignored as the storage can dynamically scale.
  /// [monitoringInterval] The interval, in seconds, between points
  /// [monitoringRoleArn] The ARN for the IAM role that permits RDS
  /// [multiAz] Specifies if the RDS instance is multi-AZ
  /// [ncharCharacterSetName] The national character set is used in the NCHAR, NVARCHAR2, and NCLOB data types for Oracle instances. This can't be changed. See [Oracle Character Sets
  /// [networkType] The network type of the DB instance. Valid values: `IPV4`, `DUAL`.
  /// [optionGroupName] Name of the DB option group to associate.
  /// [parameterGroupName] Name of the DB parameter group to associate.
  /// [password] Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Cannot be set if `manage_master_user_password` is set to `true`.
  /// [passwordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [passwordWoVersion] Used together with `password_wo` to trigger an update. Increment this value when an update to `password_wo` is required.
  /// [performanceInsightsEnabled] Specifies whether Performance Insights are enabled. Defaults to false.
  /// [performanceInsightsKmsKeyId] The ARN for the KMS key to encrypt Performance Insights data. When specifying `performance_insights_kms_key_id`, `performance_insights_enabled` needs to be set to true. Once KMS key is set, it can never be changed.
  /// [performanceInsightsRetentionPeriod] Amount of time in days to retain Performance Insights data. Valid values are `7`, `731` (2 years) or a multiple of `31`. When specifying `performance_insights_retention_period`, `performance_insights_enabled` needs to be set to true. Defaults to '7'.
  /// [port] The port on which the DB accepts connections.
  /// [publiclyAccessible] Bool to control if instance is publicly
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicaMode] Specifies whether the replica is in either `mounted` or `open-read-only` mode. This attribute
  /// [replicateSourceDb] Specifies that this resource is a Replica database, and to use this value as the source database.
  /// [restoreToPointInTime] A configuration block for restoring a DB instance to an arbitrary point in time.
  /// [s3Import] Restore from a Percona Xtrabackup in S3.  See [Importing Data into an Amazon RDS MySQL DB Instance](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/MySQL.Procedural.Importing.html)
  /// [skipFinalSnapshot] Determines whether a final DB snapshot is
  /// [snapshotIdentifier] Specifies whether or not to create this database from a snapshot.
  /// [storageEncrypted] Specifies whether the DB instance is
  /// [storageThroughput] The storage throughput value for the DB instance. Can only be set when `storage_type` is `"gp3"`. Cannot be specified if the `allocated_storage` value is below a per-`engine` threshold. See the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#gp3-storage) for details.
  /// [storageType] One of "standard" (magnetic), "gp2" (general
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timezone] Time zone of the DB instance. `timezone` is currently
  /// [upgradeStorageConfig] Whether to upgrade the storage file system configuration on the read replica.
  /// [username] (Required unless a `snapshot_identifier` or `replicate_source_db`
  /// [vpcSecurityGroupIds] List of VPC security groups to
  InstanceArgs({
    int? allocatedStorage,
    bool? allowMajorVersionUpgrade,
    bool? applyImmediately,
    bool? autoMinorVersionUpgrade,
    String? availabilityZone,
    int? backupRetentionPeriod,
    String? backupTarget,
    String? backupWindow,
    InstanceBlueGreenUpdate? blueGreenUpdate,
    String? caCertIdentifier,
    String? characterSetName,
    bool? copyTagsToSnapshot,
    String? customIamInstanceProfile,
    bool? customerOwnedIpEnabled,
    String? databaseInsightsMode,
    String? dbName,
    String? dbSubnetGroupName,
    bool? dedicatedLogVolume,
    bool? deleteAutomatedBackups,
    bool? deletionProtection,
    String? domain,
    String? domainAuthSecretArn,
    List<String>? domainDnsIps,
    String? domainFqdn,
    String? domainIamRoleName,
    String? domainOu,
    List<String>? enabledCloudwatchLogsExports,
    String? engine,
    String? engineLifecycleSupport,
    String? engineVersion,
    String? finalSnapshotIdentifier,
    bool? iamDatabaseAuthenticationEnabled,
    String? identifier,
    String? identifierPrefix,
    required String instanceClass,
    int? iops,
    String? kmsKeyId,
    String? licenseModel,
    String? maintenanceWindow,
    bool? manageMasterUserPassword,
    String? masterUserSecretKmsKeyId,
    int? maxAllocatedStorage,
    int? monitoringInterval,
    String? monitoringRoleArn,
    bool? multiAz,
    String? ncharCharacterSetName,
    String? networkType,
    String? optionGroupName,
    String? parameterGroupName,
    String? password,
    String? passwordWo,
    int? passwordWoVersion,
    bool? performanceInsightsEnabled,
    String? performanceInsightsKmsKeyId,
    int? performanceInsightsRetentionPeriod,
    int? port,
    bool? publiclyAccessible,
    String? region,
    String? replicaMode,
    String? replicateSourceDb,
    InstanceRestoreToPointInTime? restoreToPointInTime,
    InstanceS3Import? s3Import,
    bool? skipFinalSnapshot,
    String? snapshotIdentifier,
    bool? storageEncrypted,
    int? storageThroughput,
    String? storageType,
    Map<String, String>? tags,
    String? timezone,
    bool? upgradeStorageConfig,
    String? username,
    List<String>? vpcSecurityGroupIds,
  })  : allocatedStorage = pulumi.Input.asOptionalInput<int>(allocatedStorage),
        allowMajorVersionUpgrade =
            pulumi.Input.asOptionalInput<bool>(allowMajorVersionUpgrade),
        applyImmediately = pulumi.Input.asOptionalInput<bool>(applyImmediately),
        autoMinorVersionUpgrade =
            pulumi.Input.asOptionalInput<bool>(autoMinorVersionUpgrade),
        availabilityZone =
            pulumi.Input.asOptionalInput<String>(availabilityZone),
        backupRetentionPeriod =
            pulumi.Input.asOptionalInput<int>(backupRetentionPeriod),
        backupTarget = pulumi.Input.asOptionalInput<String>(backupTarget),
        backupWindow = pulumi.Input.asOptionalInput<String>(backupWindow),
        blueGreenUpdate = pulumi.Input.asOptionalInput<InstanceBlueGreenUpdate>(
            blueGreenUpdate),
        caCertIdentifier =
            pulumi.Input.asOptionalInput<String>(caCertIdentifier),
        characterSetName =
            pulumi.Input.asOptionalInput<String>(characterSetName),
        copyTagsToSnapshot =
            pulumi.Input.asOptionalInput<bool>(copyTagsToSnapshot),
        customIamInstanceProfile =
            pulumi.Input.asOptionalInput<String>(customIamInstanceProfile),
        customerOwnedIpEnabled =
            pulumi.Input.asOptionalInput<bool>(customerOwnedIpEnabled),
        databaseInsightsMode =
            pulumi.Input.asOptionalInput<String>(databaseInsightsMode),
        dbName = pulumi.Input.asOptionalInput<String>(dbName),
        dbSubnetGroupName =
            pulumi.Input.asOptionalInput<String>(dbSubnetGroupName),
        dedicatedLogVolume =
            pulumi.Input.asOptionalInput<bool>(dedicatedLogVolume),
        deleteAutomatedBackups =
            pulumi.Input.asOptionalInput<bool>(deleteAutomatedBackups),
        deletionProtection =
            pulumi.Input.asOptionalInput<bool>(deletionProtection),
        domain = pulumi.Input.asOptionalInput<String>(domain),
        domainAuthSecretArn =
            pulumi.Input.asOptionalInput<String>(domainAuthSecretArn),
        domainDnsIps = pulumi.Input.asOptionalInput<List<String>>(domainDnsIps),
        domainFqdn = pulumi.Input.asOptionalInput<String>(domainFqdn),
        domainIamRoleName =
            pulumi.Input.asOptionalInput<String>(domainIamRoleName),
        domainOu = pulumi.Input.asOptionalInput<String>(domainOu),
        enabledCloudwatchLogsExports =
            pulumi.Input.asOptionalInput<List<String>>(
                enabledCloudwatchLogsExports),
        engine = pulumi.Input.asOptionalInput<String>(engine),
        engineLifecycleSupport =
            pulumi.Input.asOptionalInput<String>(engineLifecycleSupport),
        engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
        finalSnapshotIdentifier =
            pulumi.Input.asOptionalInput<String>(finalSnapshotIdentifier),
        iamDatabaseAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(
            iamDatabaseAuthenticationEnabled),
        identifier = pulumi.Input.asOptionalInput<String>(identifier),
        identifierPrefix =
            pulumi.Input.asOptionalInput<String>(identifierPrefix),
        instanceClass = pulumi.Input.asInput<String>(instanceClass),
        iops = pulumi.Input.asOptionalInput<int>(iops),
        kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
        licenseModel = pulumi.Input.asOptionalInput<String>(licenseModel),
        maintenanceWindow =
            pulumi.Input.asOptionalInput<String>(maintenanceWindow),
        manageMasterUserPassword =
            pulumi.Input.asOptionalInput<bool>(manageMasterUserPassword),
        masterUserSecretKmsKeyId =
            pulumi.Input.asOptionalInput<String>(masterUserSecretKmsKeyId),
        maxAllocatedStorage =
            pulumi.Input.asOptionalInput<int>(maxAllocatedStorage),
        monitoringInterval =
            pulumi.Input.asOptionalInput<int>(monitoringInterval),
        monitoringRoleArn =
            pulumi.Input.asOptionalInput<String>(monitoringRoleArn),
        multiAz = pulumi.Input.asOptionalInput<bool>(multiAz),
        ncharCharacterSetName =
            pulumi.Input.asOptionalInput<String>(ncharCharacterSetName),
        networkType = pulumi.Input.asOptionalInput<String>(networkType),
        optionGroupName = pulumi.Input.asOptionalInput<String>(optionGroupName),
        parameterGroupName =
            pulumi.Input.asOptionalInput<String>(parameterGroupName),
        password = pulumi.Input.asOptionalInput<String>(password),
        passwordWo = pulumi.Input.asOptionalInput<String>(passwordWo),
        passwordWoVersion =
            pulumi.Input.asOptionalInput<int>(passwordWoVersion),
        performanceInsightsEnabled =
            pulumi.Input.asOptionalInput<bool>(performanceInsightsEnabled),
        performanceInsightsKmsKeyId =
            pulumi.Input.asOptionalInput<String>(performanceInsightsKmsKeyId),
        performanceInsightsRetentionPeriod = pulumi.Input.asOptionalInput<int>(
            performanceInsightsRetentionPeriod),
        port = pulumi.Input.asOptionalInput<int>(port),
        publiclyAccessible =
            pulumi.Input.asOptionalInput<bool>(publiclyAccessible),
        region = pulumi.Input.asOptionalInput<String>(region),
        replicaMode = pulumi.Input.asOptionalInput<String>(replicaMode),
        replicateSourceDb =
            pulumi.Input.asOptionalInput<String>(replicateSourceDb),
        restoreToPointInTime =
            pulumi.Input.asOptionalInput<InstanceRestoreToPointInTime>(
                restoreToPointInTime),
        s3Import = pulumi.Input.asOptionalInput<InstanceS3Import>(s3Import),
        skipFinalSnapshot =
            pulumi.Input.asOptionalInput<bool>(skipFinalSnapshot),
        snapshotIdentifier =
            pulumi.Input.asOptionalInput<String>(snapshotIdentifier),
        storageEncrypted = pulumi.Input.asOptionalInput<bool>(storageEncrypted),
        storageThroughput =
            pulumi.Input.asOptionalInput<int>(storageThroughput),
        storageType = pulumi.Input.asOptionalInput<String>(storageType),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        timezone = pulumi.Input.asOptionalInput<String>(timezone),
        upgradeStorageConfig =
            pulumi.Input.asOptionalInput<bool>(upgradeStorageConfig),
        username = pulumi.Input.asOptionalInput<String>(username),
        vpcSecurityGroupIds =
            pulumi.Input.asOptionalInput<List<String>>(vpcSecurityGroupIds);

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
    final autoMinorVersionUpgradeValue = autoMinorVersionUpgrade;
    if (autoMinorVersionUpgradeValue != null) {
      map['autoMinorVersionUpgrade'] = autoMinorVersionUpgradeValue;
    }
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final backupRetentionPeriodValue = backupRetentionPeriod;
    if (backupRetentionPeriodValue != null) {
      map['backupRetentionPeriod'] = backupRetentionPeriodValue;
    }
    final backupTargetValue = backupTarget;
    if (backupTargetValue != null) {
      map['backupTarget'] = backupTargetValue;
    }
    final backupWindowValue = backupWindow;
    if (backupWindowValue != null) {
      map['backupWindow'] = backupWindowValue;
    }
    final blueGreenUpdateValue = blueGreenUpdate;
    if (blueGreenUpdateValue != null) {
      map['blueGreenUpdate'] = pulumi.Input.mapOptionalInputValue<
          InstanceBlueGreenUpdate,
          Map<String, dynamic>>(blueGreenUpdateValue, (value) => value.toMap());
    }
    final caCertIdentifierValue = caCertIdentifier;
    if (caCertIdentifierValue != null) {
      map['caCertIdentifier'] = caCertIdentifierValue;
    }
    final characterSetNameValue = characterSetName;
    if (characterSetNameValue != null) {
      map['characterSetName'] = characterSetNameValue;
    }
    final copyTagsToSnapshotValue = copyTagsToSnapshot;
    if (copyTagsToSnapshotValue != null) {
      map['copyTagsToSnapshot'] = copyTagsToSnapshotValue;
    }
    final customIamInstanceProfileValue = customIamInstanceProfile;
    if (customIamInstanceProfileValue != null) {
      map['customIamInstanceProfile'] = customIamInstanceProfileValue;
    }
    final customerOwnedIpEnabledValue = customerOwnedIpEnabled;
    if (customerOwnedIpEnabledValue != null) {
      map['customerOwnedIpEnabled'] = customerOwnedIpEnabledValue;
    }
    final databaseInsightsModeValue = databaseInsightsMode;
    if (databaseInsightsModeValue != null) {
      map['databaseInsightsMode'] = databaseInsightsModeValue;
    }
    final dbNameValue = dbName;
    if (dbNameValue != null) {
      map['dbName'] = dbNameValue;
    }
    final dbSubnetGroupNameValue = dbSubnetGroupName;
    if (dbSubnetGroupNameValue != null) {
      map['dbSubnetGroupName'] = dbSubnetGroupNameValue;
    }
    final dedicatedLogVolumeValue = dedicatedLogVolume;
    if (dedicatedLogVolumeValue != null) {
      map['dedicatedLogVolume'] = dedicatedLogVolumeValue;
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
    final domainAuthSecretArnValue = domainAuthSecretArn;
    if (domainAuthSecretArnValue != null) {
      map['domainAuthSecretArn'] = domainAuthSecretArnValue;
    }
    final domainDnsIpsValue = domainDnsIps;
    if (domainDnsIpsValue != null) {
      map['domainDnsIps'] = domainDnsIpsValue;
    }
    final domainFqdnValue = domainFqdn;
    if (domainFqdnValue != null) {
      map['domainFqdn'] = domainFqdnValue;
    }
    final domainIamRoleNameValue = domainIamRoleName;
    if (domainIamRoleNameValue != null) {
      map['domainIamRoleName'] = domainIamRoleNameValue;
    }
    final domainOuValue = domainOu;
    if (domainOuValue != null) {
      map['domainOu'] = domainOuValue;
    }
    final enabledCloudwatchLogsExportsValue = enabledCloudwatchLogsExports;
    if (enabledCloudwatchLogsExportsValue != null) {
      map['enabledCloudwatchLogsExports'] = enabledCloudwatchLogsExportsValue;
    }
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue;
    }
    final engineLifecycleSupportValue = engineLifecycleSupport;
    if (engineLifecycleSupportValue != null) {
      map['engineLifecycleSupport'] = engineLifecycleSupportValue;
    }
    final engineVersionValue = engineVersion;
    if (engineVersionValue != null) {
      map['engineVersion'] = engineVersionValue;
    }
    final finalSnapshotIdentifierValue = finalSnapshotIdentifier;
    if (finalSnapshotIdentifierValue != null) {
      map['finalSnapshotIdentifier'] = finalSnapshotIdentifierValue;
    }
    final iamDatabaseAuthenticationEnabledValue =
        iamDatabaseAuthenticationEnabled;
    if (iamDatabaseAuthenticationEnabledValue != null) {
      map['iamDatabaseAuthenticationEnabled'] =
          iamDatabaseAuthenticationEnabledValue;
    }
    final identifierValue = identifier;
    if (identifierValue != null) {
      map['identifier'] = identifierValue;
    }
    final identifierPrefixValue = identifierPrefix;
    if (identifierPrefixValue != null) {
      map['identifierPrefix'] = identifierPrefixValue;
    }
    map['instanceClass'] = instanceClass;
    final iopsValue = iops;
    if (iopsValue != null) {
      map['iops'] = iopsValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final licenseModelValue = licenseModel;
    if (licenseModelValue != null) {
      map['licenseModel'] = licenseModelValue;
    }
    final maintenanceWindowValue = maintenanceWindow;
    if (maintenanceWindowValue != null) {
      map['maintenanceWindow'] = maintenanceWindowValue;
    }
    final manageMasterUserPasswordValue = manageMasterUserPassword;
    if (manageMasterUserPasswordValue != null) {
      map['manageMasterUserPassword'] = manageMasterUserPasswordValue;
    }
    final masterUserSecretKmsKeyIdValue = masterUserSecretKmsKeyId;
    if (masterUserSecretKmsKeyIdValue != null) {
      map['masterUserSecretKmsKeyId'] = masterUserSecretKmsKeyIdValue;
    }
    final maxAllocatedStorageValue = maxAllocatedStorage;
    if (maxAllocatedStorageValue != null) {
      map['maxAllocatedStorage'] = maxAllocatedStorageValue;
    }
    final monitoringIntervalValue = monitoringInterval;
    if (monitoringIntervalValue != null) {
      map['monitoringInterval'] = monitoringIntervalValue;
    }
    final monitoringRoleArnValue = monitoringRoleArn;
    if (monitoringRoleArnValue != null) {
      map['monitoringRoleArn'] = monitoringRoleArnValue;
    }
    final multiAzValue = multiAz;
    if (multiAzValue != null) {
      map['multiAz'] = multiAzValue;
    }
    final ncharCharacterSetNameValue = ncharCharacterSetName;
    if (ncharCharacterSetNameValue != null) {
      map['ncharCharacterSetName'] = ncharCharacterSetNameValue;
    }
    final networkTypeValue = networkType;
    if (networkTypeValue != null) {
      map['networkType'] = networkTypeValue;
    }
    final optionGroupNameValue = optionGroupName;
    if (optionGroupNameValue != null) {
      map['optionGroupName'] = optionGroupNameValue;
    }
    final parameterGroupNameValue = parameterGroupName;
    if (parameterGroupNameValue != null) {
      map['parameterGroupName'] = parameterGroupNameValue;
    }
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final passwordWoValue = passwordWo;
    if (passwordWoValue != null) {
      map['passwordWo'] = passwordWoValue;
    }
    final passwordWoVersionValue = passwordWoVersion;
    if (passwordWoVersionValue != null) {
      map['passwordWoVersion'] = passwordWoVersionValue;
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
    final publiclyAccessibleValue = publiclyAccessible;
    if (publiclyAccessibleValue != null) {
      map['publiclyAccessible'] = publiclyAccessibleValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final replicaModeValue = replicaMode;
    if (replicaModeValue != null) {
      map['replicaMode'] = replicaModeValue;
    }
    final replicateSourceDbValue = replicateSourceDb;
    if (replicateSourceDbValue != null) {
      map['replicateSourceDb'] = replicateSourceDbValue;
    }
    final restoreToPointInTimeValue = restoreToPointInTime;
    if (restoreToPointInTimeValue != null) {
      map['restoreToPointInTime'] = pulumi.Input.mapOptionalInputValue<
              InstanceRestoreToPointInTime, Map<String, dynamic>>(
          restoreToPointInTimeValue, (value) => value.toMap());
    }
    final s3ImportValue = s3Import;
    if (s3ImportValue != null) {
      map['s3Import'] = pulumi.Input.mapOptionalInputValue<InstanceS3Import,
          Map<String, dynamic>>(s3ImportValue, (value) => value.toMap());
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
    final storageThroughputValue = storageThroughput;
    if (storageThroughputValue != null) {
      map['storageThroughput'] = storageThroughputValue;
    }
    final storageTypeValue = storageType;
    if (storageTypeValue != null) {
      map['storageType'] = storageTypeValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timezoneValue = timezone;
    if (timezoneValue != null) {
      map['timezone'] = timezoneValue;
    }
    final upgradeStorageConfigValue = upgradeStorageConfig;
    if (upgradeStorageConfigValue != null) {
      map['upgradeStorageConfig'] = upgradeStorageConfigValue;
    }
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    final vpcSecurityGroupIdsValue = vpcSecurityGroupIds;
    if (vpcSecurityGroupIdsValue != null) {
      map['vpcSecurityGroupIds'] = vpcSecurityGroupIdsValue;
    }
    return map;
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      allocatedStorage: map['allocatedStorage'] == null
          ? null
          : map['allocatedStorage'] as int,
      allowMajorVersionUpgrade: map['allowMajorVersionUpgrade'] == null
          ? null
          : map['allowMajorVersionUpgrade'] as bool,
      applyImmediately: map['applyImmediately'] == null
          ? null
          : map['applyImmediately'] as bool,
      autoMinorVersionUpgrade: map['autoMinorVersionUpgrade'] == null
          ? null
          : map['autoMinorVersionUpgrade'] as bool,
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      backupRetentionPeriod: map['backupRetentionPeriod'] == null
          ? null
          : map['backupRetentionPeriod'] as int,
      backupTarget:
          map['backupTarget'] == null ? null : map['backupTarget'] as String,
      backupWindow:
          map['backupWindow'] == null ? null : map['backupWindow'] as String,
      blueGreenUpdate: map['blueGreenUpdate'] == null
          ? null
          : InstanceBlueGreenUpdate.fromMap(
              (map['blueGreenUpdate'] as Map).cast<String, dynamic>()),
      caCertIdentifier: map['caCertIdentifier'] == null
          ? null
          : map['caCertIdentifier'] as String,
      characterSetName: map['characterSetName'] == null
          ? null
          : map['characterSetName'] as String,
      copyTagsToSnapshot: map['copyTagsToSnapshot'] == null
          ? null
          : map['copyTagsToSnapshot'] as bool,
      customIamInstanceProfile: map['customIamInstanceProfile'] == null
          ? null
          : map['customIamInstanceProfile'] as String,
      customerOwnedIpEnabled: map['customerOwnedIpEnabled'] == null
          ? null
          : map['customerOwnedIpEnabled'] as bool,
      databaseInsightsMode: map['databaseInsightsMode'] == null
          ? null
          : map['databaseInsightsMode'] as String,
      dbName: map['dbName'] == null ? null : map['dbName'] as String,
      dbSubnetGroupName: map['dbSubnetGroupName'] == null
          ? null
          : map['dbSubnetGroupName'] as String,
      dedicatedLogVolume: map['dedicatedLogVolume'] == null
          ? null
          : map['dedicatedLogVolume'] as bool,
      deleteAutomatedBackups: map['deleteAutomatedBackups'] == null
          ? null
          : map['deleteAutomatedBackups'] as bool,
      deletionProtection: map['deletionProtection'] == null
          ? null
          : map['deletionProtection'] as bool,
      domain: map['domain'] == null ? null : map['domain'] as String,
      domainAuthSecretArn: map['domainAuthSecretArn'] == null
          ? null
          : map['domainAuthSecretArn'] as String,
      domainDnsIps: map['domainDnsIps'] == null
          ? null
          : (map['domainDnsIps'] as List).cast<String>(),
      domainFqdn:
          map['domainFqdn'] == null ? null : map['domainFqdn'] as String,
      domainIamRoleName: map['domainIamRoleName'] == null
          ? null
          : map['domainIamRoleName'] as String,
      domainOu: map['domainOu'] == null ? null : map['domainOu'] as String,
      enabledCloudwatchLogsExports: map['enabledCloudwatchLogsExports'] == null
          ? null
          : (map['enabledCloudwatchLogsExports'] as List).cast<String>(),
      engine: map['engine'] == null ? null : map['engine'] as String,
      engineLifecycleSupport: map['engineLifecycleSupport'] == null
          ? null
          : map['engineLifecycleSupport'] as String,
      engineVersion:
          map['engineVersion'] == null ? null : map['engineVersion'] as String,
      finalSnapshotIdentifier: map['finalSnapshotIdentifier'] == null
          ? null
          : map['finalSnapshotIdentifier'] as String,
      iamDatabaseAuthenticationEnabled:
          map['iamDatabaseAuthenticationEnabled'] == null
              ? null
              : map['iamDatabaseAuthenticationEnabled'] as bool,
      identifier:
          map['identifier'] == null ? null : map['identifier'] as String,
      identifierPrefix: map['identifierPrefix'] == null
          ? null
          : map['identifierPrefix'] as String,
      instanceClass: map['instanceClass'] as String,
      iops: map['iops'] == null ? null : map['iops'] as int,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      licenseModel:
          map['licenseModel'] == null ? null : map['licenseModel'] as String,
      maintenanceWindow: map['maintenanceWindow'] == null
          ? null
          : map['maintenanceWindow'] as String,
      manageMasterUserPassword: map['manageMasterUserPassword'] == null
          ? null
          : map['manageMasterUserPassword'] as bool,
      masterUserSecretKmsKeyId: map['masterUserSecretKmsKeyId'] == null
          ? null
          : map['masterUserSecretKmsKeyId'] as String,
      maxAllocatedStorage: map['maxAllocatedStorage'] == null
          ? null
          : map['maxAllocatedStorage'] as int,
      monitoringInterval: map['monitoringInterval'] == null
          ? null
          : map['monitoringInterval'] as int,
      monitoringRoleArn: map['monitoringRoleArn'] == null
          ? null
          : map['monitoringRoleArn'] as String,
      multiAz: map['multiAz'] == null ? null : map['multiAz'] as bool,
      ncharCharacterSetName: map['ncharCharacterSetName'] == null
          ? null
          : map['ncharCharacterSetName'] as String,
      networkType:
          map['networkType'] == null ? null : map['networkType'] as String,
      optionGroupName: map['optionGroupName'] == null
          ? null
          : map['optionGroupName'] as String,
      parameterGroupName: map['parameterGroupName'] == null
          ? null
          : map['parameterGroupName'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      passwordWo:
          map['passwordWo'] == null ? null : map['passwordWo'] as String,
      passwordWoVersion: map['passwordWoVersion'] == null
          ? null
          : map['passwordWoVersion'] as int,
      performanceInsightsEnabled: map['performanceInsightsEnabled'] == null
          ? null
          : map['performanceInsightsEnabled'] as bool,
      performanceInsightsKmsKeyId: map['performanceInsightsKmsKeyId'] == null
          ? null
          : map['performanceInsightsKmsKeyId'] as String,
      performanceInsightsRetentionPeriod:
          map['performanceInsightsRetentionPeriod'] == null
              ? null
              : map['performanceInsightsRetentionPeriod'] as int,
      port: map['port'] == null ? null : map['port'] as int,
      publiclyAccessible: map['publiclyAccessible'] == null
          ? null
          : map['publiclyAccessible'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      replicaMode:
          map['replicaMode'] == null ? null : map['replicaMode'] as String,
      replicateSourceDb: map['replicateSourceDb'] == null
          ? null
          : map['replicateSourceDb'] as String,
      restoreToPointInTime: map['restoreToPointInTime'] == null
          ? null
          : InstanceRestoreToPointInTime.fromMap(
              (map['restoreToPointInTime'] as Map).cast<String, dynamic>()),
      s3Import: map['s3Import'] == null
          ? null
          : InstanceS3Import.fromMap(
              (map['s3Import'] as Map).cast<String, dynamic>()),
      skipFinalSnapshot: map['skipFinalSnapshot'] == null
          ? null
          : map['skipFinalSnapshot'] as bool,
      snapshotIdentifier: map['snapshotIdentifier'] == null
          ? null
          : map['snapshotIdentifier'] as String,
      storageEncrypted: map['storageEncrypted'] == null
          ? null
          : map['storageEncrypted'] as bool,
      storageThroughput: map['storageThroughput'] == null
          ? null
          : map['storageThroughput'] as int,
      storageType:
          map['storageType'] == null ? null : map['storageType'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timezone: map['timezone'] == null ? null : map['timezone'] as String,
      upgradeStorageConfig: map['upgradeStorageConfig'] == null
          ? null
          : map['upgradeStorageConfig'] as bool,
      username: map['username'] == null ? null : map['username'] as String,
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null
          ? null
          : (map['vpcSecurityGroupIds'] as List).cast<String>(),
    );
  }
}
