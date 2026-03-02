// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_blue_green_update.dart';
import 'instance_listener_endpoint.dart';
import 'instance_master_user_secret.dart';
import 'instance_restore_to_point_in_time.dart';
import 'instance_s3_import.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Specifies the DNS address of the DB instance.
  final pulumi.Input<String>? address;
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
  /// The ARN of the RDS instance.
  final pulumi.Input<String>? arn;
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
  /// The connection endpoint in `address:port` format.
  final pulumi.Input<String>? endpoint;
  /// The database engine to use. For supported values, see the Engine parameter in [API action CreateDBInstance](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html). Note that for Amazon Aurora instances the engine must match the DB cluster's engine'. For information on the difference between the available Aurora MySQL engines see [Comparison between Aurora MySQL 1 and Aurora MySQL 2](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraMySQL.Updates.20180206.html) in the Amazon RDS User Guide.
  final pulumi.Input<String>? engine;
  /// The life cycle type for this DB instance. This setting applies only to RDS for MySQL and RDS for PostgreSQL. Valid values are `open-source-rds-extended-support`, `open-source-rds-extended-support-disabled`. Default value is `open-source-rds-extended-support`. [Using Amazon RDS Extended Support]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html
  final pulumi.Input<String>? engineLifecycleSupport;
  /// The engine version to use. If `auto_minor_version_upgrade` is enabled, you can provide a prefix of the version such as `8.0` (for `8.0.36`). The actual engine version used is returned in the attribute `engine_version_actual`, see Attribute Reference below. For supported values, see the EngineVersion parameter in [API action CreateDBInstance](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html). Note that for Amazon Aurora instances the engine version must match the DB cluster's engine version'.
  final pulumi.Input<String>? engineVersion;
  /// The running version of the database.
  final pulumi.Input<String>? engineVersionActual;
  /// The name of your final DB snapshot
  /// when this DB instance is deleted. Must be provided if `skip_final_snapshot` is
  /// set to `false`. The value must begin with a letter, only contain alphanumeric characters and hyphens, and not end with a hyphen or contain two consecutive hyphens. Must not be provided when deleting a read replica.
  final pulumi.Input<String>? finalSnapshotIdentifier;
  /// Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.
  final pulumi.Input<String>? hostedZoneId;
  /// Specifies whether mappings of AWS Identity and Access Management (IAM) accounts to database
  /// accounts is enabled.
  final pulumi.Input<bool>? iamDatabaseAuthenticationEnabled;
  /// The name of the RDS instance, if omitted, this provider will assign a random, unique identifier. Required if `restore_to_point_in_time` is specified.
  final pulumi.Input<String>? identifier;
  /// Creates a unique identifier beginning with the specified prefix. Conflicts with `identifier`.
  final pulumi.Input<String>? identifierPrefix;
  /// The instance type of the RDS instance.
  final pulumi.Input<String>? instanceClass;
  /// The amount of provisioned IOPS. Setting this implies a
  /// storage_type of "io1" or "io2". Can only be set when `storage_type` is `"io1"`, `"io2` or `"gp3"`.
  /// Cannot be specified for gp3 storage if the `allocated_storage` value is below a per-`engine` threshold.
  /// See the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#gp3-storage) for details.
  final pulumi.Input<int>? iops;
  /// The ARN for the KMS encryption key. If creating an
  /// encrypted replica, set this to the destination KMS ARN.
  final pulumi.Input<String>? kmsKeyId;
  /// The latest time, in UTC [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8), to which a database can be restored with point-in-time restore.
  final pulumi.Input<String>? latestRestorableTime;
  /// License model information for this DB instance. Valid values for this field are as follows:
  /// * RDS for MariaDB: `general-public-license`
  /// * RDS for Microsoft SQL Server: `license-included`
  /// * RDS for MySQL: `general-public-license`
  /// * RDS for Oracle: `bring-your-own-license | license-included`
  /// * RDS for PostgreSQL: `postgresql-license`
  final pulumi.Input<String>? licenseModel;
  /// Specifies the listener connection endpoint for SQL Server Always On. See endpoint below.
  final pulumi.Input<List<InstanceListenerEndpoint>>? listenerEndpoints;
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
  /// A block that specifies the master user secret. Only available when `manage_master_user_password` is set to true. Documented below.
  final pulumi.Input<List<InstanceMasterUserSecret>>? masterUserSecrets;
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
  final pulumi.Input<List<String>>? replicas;
  /// Specifies that this resource is a Replica database, and to use this value as the source database.
  /// If replicating an Amazon RDS Database Instance in the same region, use the `identifier` of the source DB, unless also specifying the `db_subnet_group_name`.
  /// If specifying the `db_subnet_group_name` in the same region, use the `arn` of the source DB.
  /// If replicating an Instance in a different region, use the `arn` of the source DB.
  /// Note that if you are creating a cross-region replica of an encrypted database you will also need to specify a `kms_key_id`.
  /// See [DB Instance Replication][instance-replication] and [Working with PostgreSQL and MySQL Read Replicas](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReadRepl.html) for more information on using Replication.
  final pulumi.Input<String>? replicateSourceDb;
  /// The RDS Resource ID of this instance.
  final pulumi.Input<String>? resourceId;
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
  /// The RDS instance status.
  final pulumi.Input<String>? status;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Time zone of the DB instance. `timezone` is currently
  /// only supported by Microsoft SQL Server. The `timezone` can only be set on
  /// creation. See [MSSQL User
  /// Guide](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.TimeZone)
  /// for more information.
  final pulumi.Input<String>? timezone;
  /// Order in which the instances are upgraded (`first`, `second`, `last`). See [the AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Maintenance.AMVU.UpgradeRollout.html) for details.
  final pulumi.Input<String>? upgradeRolloutOrder;
  /// Whether to upgrade the storage file system configuration on the read replica.
  /// Can only be set with `replicate_source_db`.
  final pulumi.Input<bool>? upgradeStorageConfig;
  /// (Required unless a `snapshot_identifier` or `replicate_source_db`
  /// is provided) Username for the master DB user. Cannot be specified for a replica.
  final pulumi.Input<String>? username;
  /// List of VPC security groups to
  /// associate.
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  /// Creates a new [InstanceState].
  /// [address] Specifies the DNS address of the DB instance.
  /// [allocatedStorage] The allocated storage in gibibytes. If `max_allocated_storage` is configured, this argument represents the initial storage allocation and differences from the configuration will be ignored automatically when Storage Autoscaling occurs. If `replicate_source_db` is set, the value is ignored during the creation of the instance.
  /// [allowMajorVersionUpgrade] Indicates that major version
  /// [applyImmediately] Specifies whether any database modifications
  /// [arn] The ARN of the RDS instance.
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
  /// [endpoint] The connection endpoint in `address:port` format.
  /// [engine] The database engine to use. For supported values, see the Engine parameter in [API action CreateDBInstance](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html). Note that for Amazon Aurora instances the engine must match the DB cluster's engine'. For information on the difference between the available Aurora MySQL engines see [Comparison between Aurora MySQL 1 and Aurora MySQL 2](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraMySQL.Updates.20180206.html) in the Amazon RDS User Guide.
  /// [engineLifecycleSupport] The life cycle type for this DB instance. This setting applies only to RDS for MySQL and RDS for PostgreSQL. Valid values are `open-source-rds-extended-support`, `open-source-rds-extended-support-disabled`. Default value is `open-source-rds-extended-support`. [Using Amazon RDS Extended Support]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html
  /// [engineVersion] The engine version to use. If `auto_minor_version_upgrade` is enabled, you can provide a prefix of the version such as `8.0` (for `8.0.36`). The actual engine version used is returned in the attribute `engine_version_actual`, see Attribute Reference below. For supported values, see the EngineVersion parameter in [API action CreateDBInstance](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html). Note that for Amazon Aurora instances the engine version must match the DB cluster's engine version'.
  /// [engineVersionActual] The running version of the database.
  /// [finalSnapshotIdentifier] The name of your final DB snapshot
  /// [hostedZoneId] Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.
  /// [iamDatabaseAuthenticationEnabled] Specifies whether mappings of AWS Identity and Access Management (IAM) accounts to database
  /// [identifier] The name of the RDS instance, if omitted, this provider will assign a random, unique identifier. Required if `restore_to_point_in_time` is specified.
  /// [identifierPrefix] Creates a unique identifier beginning with the specified prefix. Conflicts with `identifier`.
  /// [instanceClass] The instance type of the RDS instance.
  /// [iops] The amount of provisioned IOPS. Setting this implies a
  /// [kmsKeyId] The ARN for the KMS encryption key. If creating an
  /// [latestRestorableTime] The latest time, in UTC [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8), to which a database can be restored with point-in-time restore.
  /// [licenseModel] License model information for this DB instance. Valid values for this field are as follows:
  /// [listenerEndpoints] Specifies the listener connection endpoint for SQL Server Always On. See endpoint below.
  /// [maintenanceWindow] The window to perform maintenance in.
  /// [manageMasterUserPassword] Set to true to allow RDS to manage the master user password in Secrets Manager. Cannot be set if `password` or `password_wo` is provided.
  /// [masterUserSecretKmsKeyId] The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. To use a KMS key in a different Amazon Web Services account, specify the key ARN or alias ARN. If not specified, the default KMS key for your Amazon Web Services account is used.
  /// [masterUserSecrets] A block that specifies the master user secret. Only available when `manage_master_user_password` is set to true. Documented below.
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
  /// [replicas] Optional.
  /// [replicateSourceDb] Specifies that this resource is a Replica database, and to use this value as the source database.
  /// [resourceId] The RDS Resource ID of this instance.
  /// [restoreToPointInTime] A configuration block for restoring a DB instance to an arbitrary point in time.
  /// [s3Import] Restore from a Percona Xtrabackup in S3.  See [Importing Data into an Amazon RDS MySQL DB Instance](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/MySQL.Procedural.Importing.html)
  /// [skipFinalSnapshot] Determines whether a final DB snapshot is
  /// [snapshotIdentifier] Specifies whether or not to create this database from a snapshot.
  /// [status] The RDS instance status.
  /// [storageEncrypted] Specifies whether the DB instance is
  /// [storageThroughput] The storage throughput value for the DB instance. Can only be set when `storage_type` is `"gp3"`. Cannot be specified if the `allocated_storage` value is below a per-`engine` threshold. See the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#gp3-storage) for details.
  /// [storageType] One of "standard" (magnetic), "gp2" (general
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timezone] Time zone of the DB instance. `timezone` is currently
  /// [upgradeRolloutOrder] Order in which the instances are upgraded (`first`, `second`, `last`). See [the AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Maintenance.AMVU.UpgradeRollout.html) for details.
  /// [upgradeStorageConfig] Whether to upgrade the storage file system configuration on the read replica.
  /// [username] (Required unless a `snapshot_identifier` or `replicate_source_db`
  /// [vpcSecurityGroupIds] List of VPC security groups to
  InstanceState({
    this.address,
    this.allocatedStorage,
    this.allowMajorVersionUpgrade,
    this.applyImmediately,
    this.arn,
    this.autoMinorVersionUpgrade,
    this.availabilityZone,
    this.backupRetentionPeriod,
    this.backupTarget,
    this.backupWindow,
    this.blueGreenUpdate,
    this.caCertIdentifier,
    this.characterSetName,
    this.copyTagsToSnapshot,
    this.customIamInstanceProfile,
    this.customerOwnedIpEnabled,
    this.databaseInsightsMode,
    this.dbName,
    this.dbSubnetGroupName,
    this.dedicatedLogVolume,
    this.deleteAutomatedBackups,
    this.deletionProtection,
    this.domain,
    this.domainAuthSecretArn,
    this.domainDnsIps,
    this.domainFqdn,
    this.domainIamRoleName,
    this.domainOu,
    this.enabledCloudwatchLogsExports,
    this.endpoint,
    this.engine,
    this.engineLifecycleSupport,
    this.engineVersion,
    this.engineVersionActual,
    this.finalSnapshotIdentifier,
    this.hostedZoneId,
    this.iamDatabaseAuthenticationEnabled,
    this.identifier,
    this.identifierPrefix,
    this.instanceClass,
    this.iops,
    this.kmsKeyId,
    this.latestRestorableTime,
    this.licenseModel,
    this.listenerEndpoints,
    this.maintenanceWindow,
    this.manageMasterUserPassword,
    this.masterUserSecretKmsKeyId,
    this.masterUserSecrets,
    this.maxAllocatedStorage,
    this.monitoringInterval,
    this.monitoringRoleArn,
    this.multiAz,
    this.ncharCharacterSetName,
    this.networkType,
    this.optionGroupName,
    this.parameterGroupName,
    this.password,
    this.passwordWo,
    this.passwordWoVersion,
    this.performanceInsightsEnabled,
    this.performanceInsightsKmsKeyId,
    this.performanceInsightsRetentionPeriod,
    this.port,
    this.publiclyAccessible,
    this.region,
    this.replicaMode,
    this.replicas,
    this.replicateSourceDb,
    this.resourceId,
    this.restoreToPointInTime,
    this.s3Import,
    this.skipFinalSnapshot,
    this.snapshotIdentifier,
    this.status,
    this.storageEncrypted,
    this.storageThroughput,
    this.storageType,
    this.tags,
    this.tagsAll,
    this.timezone,
    this.upgradeRolloutOrder,
    this.upgradeStorageConfig,
    this.username,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'allocatedStorage': ?allocatedStorage,
      'allowMajorVersionUpgrade': ?allowMajorVersionUpgrade,
      'applyImmediately': ?applyImmediately,
      'arn': ?arn,
      'autoMinorVersionUpgrade': ?autoMinorVersionUpgrade,
      'availabilityZone': ?availabilityZone,
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'backupTarget': ?backupTarget,
      'backupWindow': ?backupWindow,
      'blueGreenUpdate': ?pulumi.Input.mapOptionalInputValue<InstanceBlueGreenUpdate, Map<String, dynamic>>(blueGreenUpdate, (value) => value.toMap()),
      'caCertIdentifier': ?caCertIdentifier,
      'characterSetName': ?characterSetName,
      'copyTagsToSnapshot': ?copyTagsToSnapshot,
      'customIamInstanceProfile': ?customIamInstanceProfile,
      'customerOwnedIpEnabled': ?customerOwnedIpEnabled,
      'databaseInsightsMode': ?databaseInsightsMode,
      'dbName': ?dbName,
      'dbSubnetGroupName': ?dbSubnetGroupName,
      'dedicatedLogVolume': ?dedicatedLogVolume,
      'deleteAutomatedBackups': ?deleteAutomatedBackups,
      'deletionProtection': ?deletionProtection,
      'domain': ?domain,
      'domainAuthSecretArn': ?domainAuthSecretArn,
      'domainDnsIps': ?domainDnsIps,
      'domainFqdn': ?domainFqdn,
      'domainIamRoleName': ?domainIamRoleName,
      'domainOu': ?domainOu,
      'enabledCloudwatchLogsExports': ?enabledCloudwatchLogsExports,
      'endpoint': ?endpoint,
      'engine': ?engine,
      'engineLifecycleSupport': ?engineLifecycleSupport,
      'engineVersion': ?engineVersion,
      'engineVersionActual': ?engineVersionActual,
      'finalSnapshotIdentifier': ?finalSnapshotIdentifier,
      'hostedZoneId': ?hostedZoneId,
      'iamDatabaseAuthenticationEnabled': ?iamDatabaseAuthenticationEnabled,
      'identifier': ?identifier,
      'identifierPrefix': ?identifierPrefix,
      'instanceClass': ?instanceClass,
      'iops': ?iops,
      'kmsKeyId': ?kmsKeyId,
      'latestRestorableTime': ?latestRestorableTime,
      'licenseModel': ?licenseModel,
      'listenerEndpoints': ?pulumi.Input.mapOptionalInputValue<List<InstanceListenerEndpoint>, List<Map<String, dynamic>>>(listenerEndpoints, (value) => pulumi.Input.encodeList<InstanceListenerEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maintenanceWindow': ?maintenanceWindow,
      'manageMasterUserPassword': ?manageMasterUserPassword,
      'masterUserSecretKmsKeyId': ?masterUserSecretKmsKeyId,
      'masterUserSecrets': ?pulumi.Input.mapOptionalInputValue<List<InstanceMasterUserSecret>, List<Map<String, dynamic>>>(masterUserSecrets, (value) => pulumi.Input.encodeList<InstanceMasterUserSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxAllocatedStorage': ?maxAllocatedStorage,
      'monitoringInterval': ?monitoringInterval,
      'monitoringRoleArn': ?monitoringRoleArn,
      'multiAz': ?multiAz,
      'ncharCharacterSetName': ?ncharCharacterSetName,
      'networkType': ?networkType,
      'optionGroupName': ?optionGroupName,
      'parameterGroupName': ?parameterGroupName,
      'password': ?password,
      'passwordWo': ?passwordWo,
      'passwordWoVersion': ?passwordWoVersion,
      'performanceInsightsEnabled': ?performanceInsightsEnabled,
      'performanceInsightsKmsKeyId': ?performanceInsightsKmsKeyId,
      'performanceInsightsRetentionPeriod': ?performanceInsightsRetentionPeriod,
      'port': ?port,
      'publiclyAccessible': ?publiclyAccessible,
      'region': ?region,
      'replicaMode': ?replicaMode,
      'replicas': ?replicas,
      'replicateSourceDb': ?replicateSourceDb,
      'resourceId': ?resourceId,
      'restoreToPointInTime': ?pulumi.Input.mapOptionalInputValue<InstanceRestoreToPointInTime, Map<String, dynamic>>(restoreToPointInTime, (value) => value.toMap()),
      's3Import': ?pulumi.Input.mapOptionalInputValue<InstanceS3Import, Map<String, dynamic>>(s3Import, (value) => value.toMap()),
      'skipFinalSnapshot': ?skipFinalSnapshot,
      'snapshotIdentifier': ?snapshotIdentifier,
      'status': ?status,
      'storageEncrypted': ?storageEncrypted,
      'storageThroughput': ?storageThroughput,
      'storageType': ?storageType,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timezone': ?timezone,
      'upgradeRolloutOrder': ?upgradeRolloutOrder,
      'upgradeStorageConfig': ?upgradeStorageConfig,
      'username': ?username,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      address: map['address'] == null ? null : (map['address'] as String).input(),
      allocatedStorage: map['allocatedStorage'] == null ? null : (map['allocatedStorage'] as int).input(),
      allowMajorVersionUpgrade: map['allowMajorVersionUpgrade'] == null ? null : (map['allowMajorVersionUpgrade'] as bool).input(),
      applyImmediately: map['applyImmediately'] == null ? null : (map['applyImmediately'] as bool).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      autoMinorVersionUpgrade: map['autoMinorVersionUpgrade'] == null ? null : (map['autoMinorVersionUpgrade'] as bool).input(),
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone'] as String).input(),
      backupRetentionPeriod: map['backupRetentionPeriod'] == null ? null : (map['backupRetentionPeriod'] as int).input(),
      backupTarget: map['backupTarget'] == null ? null : (map['backupTarget'] as String).input(),
      backupWindow: map['backupWindow'] == null ? null : (map['backupWindow'] as String).input(),
      blueGreenUpdate: map['blueGreenUpdate'] == null ? null : (InstanceBlueGreenUpdate.fromMap((map['blueGreenUpdate'] as Map).cast<String, dynamic>())).input(),
      caCertIdentifier: map['caCertIdentifier'] == null ? null : (map['caCertIdentifier'] as String).input(),
      characterSetName: map['characterSetName'] == null ? null : (map['characterSetName'] as String).input(),
      copyTagsToSnapshot: map['copyTagsToSnapshot'] == null ? null : (map['copyTagsToSnapshot'] as bool).input(),
      customIamInstanceProfile: map['customIamInstanceProfile'] == null ? null : (map['customIamInstanceProfile'] as String).input(),
      customerOwnedIpEnabled: map['customerOwnedIpEnabled'] == null ? null : (map['customerOwnedIpEnabled'] as bool).input(),
      databaseInsightsMode: map['databaseInsightsMode'] == null ? null : (map['databaseInsightsMode'] as String).input(),
      dbName: map['dbName'] == null ? null : (map['dbName'] as String).input(),
      dbSubnetGroupName: map['dbSubnetGroupName'] == null ? null : (map['dbSubnetGroupName'] as String).input(),
      dedicatedLogVolume: map['dedicatedLogVolume'] == null ? null : (map['dedicatedLogVolume'] as bool).input(),
      deleteAutomatedBackups: map['deleteAutomatedBackups'] == null ? null : (map['deleteAutomatedBackups'] as bool).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection'] as bool).input(),
      domain: map['domain'] == null ? null : (map['domain'] as String).input(),
      domainAuthSecretArn: map['domainAuthSecretArn'] == null ? null : (map['domainAuthSecretArn'] as String).input(),
      domainDnsIps: map['domainDnsIps'] == null ? null : ((map['domainDnsIps'] as List).cast<String>()).input(),
      domainFqdn: map['domainFqdn'] == null ? null : (map['domainFqdn'] as String).input(),
      domainIamRoleName: map['domainIamRoleName'] == null ? null : (map['domainIamRoleName'] as String).input(),
      domainOu: map['domainOu'] == null ? null : (map['domainOu'] as String).input(),
      enabledCloudwatchLogsExports: map['enabledCloudwatchLogsExports'] == null ? null : ((map['enabledCloudwatchLogsExports'] as List).cast<String>()).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      engine: map['engine'] == null ? null : (map['engine'] as String).input(),
      engineLifecycleSupport: map['engineLifecycleSupport'] == null ? null : (map['engineLifecycleSupport'] as String).input(),
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion'] as String).input(),
      engineVersionActual: map['engineVersionActual'] == null ? null : (map['engineVersionActual'] as String).input(),
      finalSnapshotIdentifier: map['finalSnapshotIdentifier'] == null ? null : (map['finalSnapshotIdentifier'] as String).input(),
      hostedZoneId: map['hostedZoneId'] == null ? null : (map['hostedZoneId'] as String).input(),
      iamDatabaseAuthenticationEnabled: map['iamDatabaseAuthenticationEnabled'] == null ? null : (map['iamDatabaseAuthenticationEnabled'] as bool).input(),
      identifier: map['identifier'] == null ? null : (map['identifier'] as String).input(),
      identifierPrefix: map['identifierPrefix'] == null ? null : (map['identifierPrefix'] as String).input(),
      instanceClass: map['instanceClass'] == null ? null : (map['instanceClass'] as String).input(),
      iops: map['iops'] == null ? null : (map['iops'] as int).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      latestRestorableTime: map['latestRestorableTime'] == null ? null : (map['latestRestorableTime'] as String).input(),
      licenseModel: map['licenseModel'] == null ? null : (map['licenseModel'] as String).input(),
      listenerEndpoints: map['listenerEndpoints'] == null ? null : (pulumi.Input.decodeList<InstanceListenerEndpoint>(map['listenerEndpoints'], (value) => InstanceListenerEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : (map['maintenanceWindow'] as String).input(),
      manageMasterUserPassword: map['manageMasterUserPassword'] == null ? null : (map['manageMasterUserPassword'] as bool).input(),
      masterUserSecretKmsKeyId: map['masterUserSecretKmsKeyId'] == null ? null : (map['masterUserSecretKmsKeyId'] as String).input(),
      masterUserSecrets: map['masterUserSecrets'] == null ? null : (pulumi.Input.decodeList<InstanceMasterUserSecret>(map['masterUserSecrets'], (value) => InstanceMasterUserSecret.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maxAllocatedStorage: map['maxAllocatedStorage'] == null ? null : (map['maxAllocatedStorage'] as int).input(),
      monitoringInterval: map['monitoringInterval'] == null ? null : (map['monitoringInterval'] as int).input(),
      monitoringRoleArn: map['monitoringRoleArn'] == null ? null : (map['monitoringRoleArn'] as String).input(),
      multiAz: map['multiAz'] == null ? null : (map['multiAz'] as bool).input(),
      ncharCharacterSetName: map['ncharCharacterSetName'] == null ? null : (map['ncharCharacterSetName'] as String).input(),
      networkType: map['networkType'] == null ? null : (map['networkType'] as String).input(),
      optionGroupName: map['optionGroupName'] == null ? null : (map['optionGroupName'] as String).input(),
      parameterGroupName: map['parameterGroupName'] == null ? null : (map['parameterGroupName'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      passwordWo: map['passwordWo'] == null ? null : (map['passwordWo'] as String).input(),
      passwordWoVersion: map['passwordWoVersion'] == null ? null : (map['passwordWoVersion'] as int).input(),
      performanceInsightsEnabled: map['performanceInsightsEnabled'] == null ? null : (map['performanceInsightsEnabled'] as bool).input(),
      performanceInsightsKmsKeyId: map['performanceInsightsKmsKeyId'] == null ? null : (map['performanceInsightsKmsKeyId'] as String).input(),
      performanceInsightsRetentionPeriod: map['performanceInsightsRetentionPeriod'] == null ? null : (map['performanceInsightsRetentionPeriod'] as int).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      publiclyAccessible: map['publiclyAccessible'] == null ? null : (map['publiclyAccessible'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      replicaMode: map['replicaMode'] == null ? null : (map['replicaMode'] as String).input(),
      replicas: map['replicas'] == null ? null : ((map['replicas'] as List).cast<String>()).input(),
      replicateSourceDb: map['replicateSourceDb'] == null ? null : (map['replicateSourceDb'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      restoreToPointInTime: map['restoreToPointInTime'] == null ? null : (InstanceRestoreToPointInTime.fromMap((map['restoreToPointInTime'] as Map).cast<String, dynamic>())).input(),
      s3Import: map['s3Import'] == null ? null : (InstanceS3Import.fromMap((map['s3Import'] as Map).cast<String, dynamic>())).input(),
      skipFinalSnapshot: map['skipFinalSnapshot'] == null ? null : (map['skipFinalSnapshot'] as bool).input(),
      snapshotIdentifier: map['snapshotIdentifier'] == null ? null : (map['snapshotIdentifier'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      storageEncrypted: map['storageEncrypted'] == null ? null : (map['storageEncrypted'] as bool).input(),
      storageThroughput: map['storageThroughput'] == null ? null : (map['storageThroughput'] as int).input(),
      storageType: map['storageType'] == null ? null : (map['storageType'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timezone: map['timezone'] == null ? null : (map['timezone'] as String).input(),
      upgradeRolloutOrder: map['upgradeRolloutOrder'] == null ? null : (map['upgradeRolloutOrder'] as String).input(),
      upgradeStorageConfig: map['upgradeStorageConfig'] == null ? null : (map['upgradeStorageConfig'] as bool).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null ? null : ((map['vpcSecurityGroupIds'] as List).cast<String>()).input(),
    );
  }
}

