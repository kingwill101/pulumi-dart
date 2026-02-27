import 'package:pulumi/pulumi.dart';
import '../instance_blue_green_update/instance_blue_green_update.dart';
import '../instance_listener_endpoint/instance_listener_endpoint.dart';
import '../instance_master_user_secret/instance_master_user_secret.dart';
import '../instance_restore_to_point_in_time/instance_restore_to_point_in_time.dart';
import '../instance_s3_import/instance_s3_import.dart';
import 'instance_args4.dart';

/// Provides an RDS instance resource.  A DB instance is an isolated database
/// environment in the cloud.  A DB instance can contain multiple user-created
/// databases.
///
/// Changes to a DB instance can occur when you manually change a parameter, such as
/// `allocated_storage`, and are reflected in the next maintenance window. Because
/// of this, this provider may report a difference in its planning phase because a
/// modification has not yet taken place. You can use the `apply_immediately` flag
/// to instruct the service to apply the change immediately (see documentation
/// below).
///
/// When upgrading the major version of an engine, `allow_major_version_upgrade` must be set to `true`.
///
/// > **Note:** using `apply_immediately` can result in a brief downtime as the server reboots.
/// See the AWS Docs on [RDS Instance Maintenance][instance-maintenance] for more information.
///
/// > **Note:** All arguments including the username and password will be stored in the raw state as plain-text.
/// Read more about sensitive data instate.
///
///
///
///
/// ## RDS Instance Class Types
///
/// Amazon RDS supports instance classes for the following use cases: General-purpose, Memory-optimized, Burstable Performance, and Optimized-reads.
/// For more information please read the AWS RDS documentation about [DB Instance Class Types](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html)
///
/// ## Low-Downtime Updates
///
/// By default, RDS applies updates to DB Instances in-place, which can lead to service interruptions.
/// Low-downtime updates minimize service interruptions by performing the updates with an [RDS Blue/Green deployment][blue-green] and switching over the instances when complete.
///
/// Low-downtime updates are only available for DB Instances using MySQL, MariaDB and PostgreSQL,
/// as other engines are not supported by RDS Blue/Green deployments.
/// They cannot be used with DB Instances with replicas.
///
/// Backups must be enabled to use low-downtime updates.
///
/// Enable low-downtime updates by setting `blue_green_update.enabled` to `true`.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### RDS Custom for Oracle Usage with Replica
///
///
///
/// ### RDS Custom for SQL Server
///
///
///
/// ### RDS Db2 Usage
///
///
///
/// ### Storage Autoscaling
///
/// To enable Storage Autoscaling with instances that support the feature, define the `max_allocated_storage` argument higher than the `allocated_storage` argument. This provider will automatically hide differences with the `allocated_storage` argument value if autoscaling occurs.
///
///
///
/// ### Managed Master Passwords via Secrets Manager, default KMS Key
///
/// > More information about RDS/Aurora Aurora integrates with Secrets Manager to manage master user passwords for your DB clusters can be found in the [RDS User Guide](https://aws.amazon.com/about-aws/whats-new/2022/12/amazon-rds-integration-aws-secrets-manager/) and [Aurora User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html).
///
/// You can specify the `manage_master_user_password` attribute to enable managing the master password with Secrets Manager. You can also update an existing cluster to use Secrets Manager by specify the `manage_master_user_password` attribute and removing the `password` attribute (removal is required).
///
///
///
/// ### Managed Master Passwords via Secrets Manager, specific KMS Key
///
/// > More information about RDS/Aurora Aurora integrates with Secrets Manager to manage master user passwords for your DB clusters can be found in the [RDS User Guide](https://aws.amazon.com/about-aws/whats-new/2022/12/amazon-rds-integration-aws-secrets-manager/) and [Aurora User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html).
///
/// You can specify the `master_user_secret_kms_key_id` attribute to specify a specific KMS Key.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DB Instances using the `identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/instance:Instance default mydb-rds-instance
/// ```
class Instance4 extends CustomResource {
  /// Specifies the DNS address of the DB instance.
  late final Output<String> address;

  /// The allocated storage in gibibytes. If `max_allocated_storage` is configured, this argument represents the initial storage allocation and differences from the configuration will be ignored automatically when Storage Autoscaling occurs. If `replicate_source_db` is set, the value is ignored during the creation of the instance.
  late final Output<int> allocatedStorage;

  /// Indicates that major version
  /// upgrades are allowed. Changing this parameter does not result in an outage and
  /// the change is asynchronously applied as soon as possible.
  late final Output<bool?> allowMajorVersionUpgrade;

  /// Specifies whether any database modifications
  /// are applied immediately, or during the next maintenance window. Default is
  /// `false`. See [Amazon RDS Documentation for more
  /// information.](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html)
  late final Output<bool?> applyImmediately;

  /// The ARN of the RDS instance.
  late final Output<String> arn;

  /// Indicates that minor engine upgrades
  /// will be applied automatically to the DB instance during the maintenance window.
  /// Defaults to true.
  late final Output<bool?> autoMinorVersionUpgrade;

  /// The AZ for the RDS instance.
  late final Output<String> availabilityZone;

  /// The days to retain backups for.
  /// Must be between `0` and `35`.
  /// Default is `0`.
  /// Must be greater than `0` if the database is used as a source for a [Read Replica][instance-replication],
  /// uses low-downtime updates,
  /// or will use [RDS Blue/Green deployments][blue-green].
  late final Output<int> backupRetentionPeriod;

  /// Specifies where automated backups and manual snapshots are stored. Possible values are `region` (default) and `outposts`. See [Working with Amazon RDS on AWS Outposts](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html) for more information.
  late final Output<String> backupTarget;

  /// The daily time range (in UTC) during which automated backups are created if they are enabled.
  /// Example: "09:46-10:16". Must not overlap with `maintenance_window`.
  late final Output<String> backupWindow;

  /// Enables low-downtime updates using [RDS Blue/Green deployments][blue-green].
  /// See `blue_green_update` below.
  late final Output<InstanceBlueGreenUpdate?> blueGreenUpdate;

  /// The identifier of the CA certificate for the DB instance.
  late final Output<String> caCertIdentifier;

  /// The character set name to use for DB encoding in Oracle and Microsoft SQL instances (collation).
  /// This can't be changed.
  /// See [Oracle Character Sets Supported in Amazon RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.OracleCharacterSets.html) or
  /// [Server-Level Collation for Microsoft SQL Server](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.SQLServer.CommonDBATasks.Collation.html) for more information.
  /// Cannot be set  with `replicate_source_db`, `restore_to_point_in_time`, `s3_import`, or `snapshot_identifier`.
  late final Output<String> characterSetName;

  /// Copy all Instance `tags` to snapshots. Default is `false`.
  late final Output<bool?> copyTagsToSnapshot;

  /// The instance profile associated with the underlying Amazon EC2 instance of an RDS Custom DB instance.
  late final Output<String?> customIamInstanceProfile;

  /// Indicates whether to enable a customer-owned IP address (CoIP) for an RDS on Outposts DB instance. See [CoIP for RDS on Outposts](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html#rds-on-outposts.coip) for more information.
  ///
  /// For more detailed documentation about each argument, refer to the [AWS official
  /// documentation](http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html).
  ///
  /// > **NOTE:** Removing the `replicate_source_db` attribute from an existing RDS
  /// Replicate database managed by the provider will promote the database to a fully
  /// standalone database.
  late final Output<bool?> customerOwnedIpEnabled;

  /// The mode of Database Insights that is enabled for the instance. Valid values: `standard`, `advanced` .
  late final Output<String> databaseInsightsMode;

  /// The name of the database to create when the DB instance is created. If this parameter is not specified, no database is created in the DB instance. Note that this does not apply for Oracle or SQL Server engines. See the [AWS documentation](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/rds/create-db-instance.html) for more details on what applies for those engines. If you are providing an Oracle db name, it needs to be in all upper case. Cannot be specified for a replica.
  late final Output<String> dbName;

  /// Name of DB subnet group.
  /// DB instance will be created in the VPC associated with the DB subnet group.
  /// If unspecified, will be created in the `default` Subnet Group.
  /// When working with read replicas created in the same region, defaults to the Subnet Group Name of the source DB.
  /// When working with read replicas created in a different region, defaults to the `default` Subnet Group.
  /// See [DBSubnetGroupName in API action CreateDBInstanceReadReplica](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstanceReadReplica.html) for additional read replica constraints.
  late final Output<String> dbSubnetGroupName;

  /// Use a dedicated log volume (DLV) for the DB instance. Requires Provisioned IOPS. See the [AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.dlv) for more details.
  late final Output<bool?> dedicatedLogVolume;

  /// Specifies whether to remove automated backups immediately after the DB instance is deleted. Default is `true`.
  late final Output<bool?> deleteAutomatedBackups;

  /// If the DB instance should have deletion protection enabled. The database can't be deleted when this value is set to `true`. The default is `false`.
  late final Output<bool?> deletionProtection;

  /// The ID of the Directory Service Active Directory domain to create the instance in. Conflicts with `domain_fqdn`, `domain_ou`, `domain_auth_secret_arn` and a `domain_dns_ips`.
  late final Output<String?> domain;

  /// The ARN for the Secrets Manager secret with the self managed Active Directory credentials for the user joining the domain. Conflicts with `domain` and `domain_iam_role_name`.
  late final Output<String?> domainAuthSecretArn;

  /// The IPv4 DNS IP addresses of your primary and secondary self managed Active Directory domain controllers. Two IP addresses must be provided. If there isn't a secondary domain controller, use the IP address of the primary domain controller for both entries in the list. Conflicts with `domain` and `domain_iam_role_name`.
  late final Output<List<String>?> domainDnsIps;

  /// The fully qualified domain name (FQDN) of the self managed Active Directory domain. Conflicts with `domain` and `domain_iam_role_name`.
  late final Output<String> domainFqdn;

  /// The name of the IAM role to be used when making API calls to the Directory Service. Conflicts with `domain_fqdn`, `domain_ou`, `domain_auth_secret_arn` and a `domain_dns_ips`.
  late final Output<String?> domainIamRoleName;

  /// The self managed Active Directory organizational unit for your DB instance to join. Conflicts with `domain` and `domain_iam_role_name`.
  late final Output<String?> domainOu;

  /// Set of log types to enable for exporting to CloudWatch logs. If omitted, no logs will be exported. For supported values, see the EnableCloudwatchLogsExports.member.N parameter in [API action CreateDBInstance](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html).
  late final Output<List<String>?> enabledCloudwatchLogsExports;

  /// The connection endpoint in `address:port` format.
  late final Output<String> endpoint;

  /// The database engine to use. For supported values, see the Engine parameter in [API action CreateDBInstance](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html). Note that for Amazon Aurora instances the engine must match the DB cluster's engine'. For information on the difference between the available Aurora MySQL engines see [Comparison between Aurora MySQL 1 and Aurora MySQL 2](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraMySQL.Updates.20180206.html) in the Amazon RDS User Guide.
  late final Output<String> engine;

  /// The life cycle type for this DB instance. This setting applies only to RDS for MySQL and RDS for PostgreSQL. Valid values are `open-source-rds-extended-support`, `open-source-rds-extended-support-disabled`. Default value is `open-source-rds-extended-support`. [Using Amazon RDS Extended Support]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html
  late final Output<String> engineLifecycleSupport;

  /// The engine version to use. If `auto_minor_version_upgrade` is enabled, you can provide a prefix of the version such as `8.0` (for `8.0.36`). The actual engine version used is returned in the attribute `engine_version_actual`, see Attribute Reference below. For supported values, see the EngineVersion parameter in [API action CreateDBInstance](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html). Note that for Amazon Aurora instances the engine version must match the DB cluster's engine version'.
  late final Output<String> engineVersion;

  /// The running version of the database.
  late final Output<String> engineVersionActual;

  /// The name of your final DB snapshot
  /// when this DB instance is deleted. Must be provided if `skip_final_snapshot` is
  /// set to `false`. The value must begin with a letter, only contain alphanumeric characters and hyphens, and not end with a hyphen or contain two consecutive hyphens. Must not be provided when deleting a read replica.
  late final Output<String?> finalSnapshotIdentifier;

  /// Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.
  late final Output<String> hostedZoneId;

  /// Specifies whether mappings of AWS Identity and Access Management (IAM) accounts to database
  /// accounts is enabled.
  late final Output<bool?> iamDatabaseAuthenticationEnabled;

  /// The name of the RDS instance, if omitted, this provider will assign a random, unique identifier. Required if `restore_to_point_in_time` is specified.
  late final Output<String> identifier;

  /// Creates a unique identifier beginning with the specified prefix. Conflicts with `identifier`.
  late final Output<String> identifierPrefix;

  /// The instance type of the RDS instance.
  late final Output<String> instanceClass;

  /// The amount of provisioned IOPS. Setting this implies a
  /// storage_type of "io1" or "io2". Can only be set when `storage_type` is `"io1"`, `"io2` or `"gp3"`.
  /// Cannot be specified for gp3 storage if the `allocated_storage` value is below a per-`engine` threshold.
  /// See the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#gp3-storage) for details.
  late final Output<int> iops;

  /// The ARN for the KMS encryption key. If creating an
  /// encrypted replica, set this to the destination KMS ARN.
  late final Output<String> kmsKeyId;

  /// The latest time, in UTC [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8), to which a database can be restored with point-in-time restore.
  late final Output<String> latestRestorableTime;

  /// License model information for this DB instance. Valid values for this field are as follows:
  /// * RDS for MariaDB: `general-public-license`
  /// * RDS for Microsoft SQL Server: `license-included`
  /// * RDS for MySQL: `general-public-license`
  /// * RDS for Oracle: `bring-your-own-license | license-included`
  /// * RDS for PostgreSQL: `postgresql-license`
  late final Output<String> licenseModel;

  /// Specifies the listener connection endpoint for SQL Server Always On. See endpoint below.
  late final Output<List<InstanceListenerEndpoint>> listenerEndpoints;

  /// The window to perform maintenance in.
  /// Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00". See [RDS
  /// Maintenance Window
  /// docs](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow)
  /// for more information.
  late final Output<String> maintenanceWindow;

  /// Set to true to allow RDS to manage the master user password in Secrets Manager. Cannot be set if `password` or `password_wo` is provided.
  late final Output<bool?> manageMasterUserPassword;

  /// The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. To use a KMS key in a different Amazon Web Services account, specify the key ARN or alias ARN. If not specified, the default KMS key for your Amazon Web Services account is used.
  late final Output<String> masterUserSecretKmsKeyId;

  /// A block that specifies the master user secret. Only available when `manage_master_user_password` is set to true. Documented below.
  late final Output<List<InstanceMasterUserSecret>> masterUserSecrets;

  /// Specifies the maximum storage (in GiB) that Amazon RDS can automatically scale to for this DB instance. By default, Storage Autoscaling is disabled. To enable Storage Autoscaling, set `max_allocated_storage` to **greater than or equal to** `allocated_storage`. Setting `max_allocated_storage` to 0 explicitly disables Storage Autoscaling. When configured, changes to `allocated_storage` will be automatically ignored as the storage can dynamically scale.
  late final Output<int?> maxAllocatedStorage;

  /// The interval, in seconds, between points
  /// when Enhanced Monitoring metrics are collected for the DB instance. To disable
  /// collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid
  /// Values: 0, 1, 5, 10, 15, 30, 60.
  late final Output<int?> monitoringInterval;

  /// The ARN for the IAM role that permits RDS
  /// to send enhanced monitoring metrics to CloudWatch Logs. You can find more
  /// information on the [AWS
  /// Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html)
  /// what IAM permissions are needed to allow Enhanced Monitoring for RDS Instances.
  late final Output<String> monitoringRoleArn;

  /// Specifies if the RDS instance is multi-AZ
  late final Output<bool> multiAz;

  /// The national character set is used in the NCHAR, NVARCHAR2, and NCLOB data types for Oracle instances. This can't be changed. See [Oracle Character Sets
  /// Supported in Amazon RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.OracleCharacterSets.html).
  late final Output<String> ncharCharacterSetName;

  /// The network type of the DB instance. Valid values: `IPV4`, `DUAL`.
  late final Output<String> networkType;

  /// Name of the DB option group to associate.
  late final Output<String> optionGroupName;

  /// Name of the DB parameter group to associate.
  late final Output<String> parameterGroupName;

  /// Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Cannot be set if `manage_master_user_password` is set to `true`.
  late final Output<String?> password;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Cannot be set if `manage_master_user_password` is set to `true`.
  late final Output<String?> passwordWo;

  /// Used together with `password_wo` to trigger an update. Increment this value when an update to `password_wo` is required.
  late final Output<int?> passwordWoVersion;

  /// Specifies whether Performance Insights are enabled. Defaults to false.
  late final Output<bool?> performanceInsightsEnabled;

  /// The ARN for the KMS key to encrypt Performance Insights data. When specifying `performance_insights_kms_key_id`, `performance_insights_enabled` needs to be set to true. Once KMS key is set, it can never be changed.
  late final Output<String> performanceInsightsKmsKeyId;

  /// Amount of time in days to retain Performance Insights data. Valid values are `7`, `731` (2 years) or a multiple of `31`. When specifying `performance_insights_retention_period`, `performance_insights_enabled` needs to be set to true. Defaults to '7'.
  late final Output<int> performanceInsightsRetentionPeriod;

  /// The port on which the DB accepts connections.
  late final Output<int> port;

  /// Bool to control if instance is publicly
  /// accessible. Default is `false`.
  late final Output<bool?> publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies whether the replica is in either `mounted` or `open-read-only` mode. This attribute
  /// is only supported by Oracle instances. Oracle replicas operate in `open-read-only` mode unless otherwise specified. See [Working with Oracle Read Replicas](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html) for more information.
  late final Output<String> replicaMode;
  late final Output<List<String>> replicas;

  /// Specifies that this resource is a Replica database, and to use this value as the source database.
  /// If replicating an Amazon RDS Database Instance in the same region, use the `identifier` of the source DB, unless also specifying the `db_subnet_group_name`.
  /// If specifying the `db_subnet_group_name` in the same region, use the `arn` of the source DB.
  /// If replicating an Instance in a different region, use the `arn` of the source DB.
  /// Note that if you are creating a cross-region replica of an encrypted database you will also need to specify a `kms_key_id`.
  /// See [DB Instance Replication][instance-replication] and [Working with PostgreSQL and MySQL Read Replicas](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReadRepl.html) for more information on using Replication.
  late final Output<String?> replicateSourceDb;

  /// The RDS Resource ID of this instance.
  late final Output<String> resourceId;

  /// A configuration block for restoring a DB instance to an arbitrary point in time.
  /// Requires the `identifier` argument to be set with the name of the new DB instance to be created.
  /// See Restore To Point In Time below for details.
  late final Output<InstanceRestoreToPointInTime?> restoreToPointInTime;

  /// Restore from a Percona Xtrabackup in S3.  See [Importing Data into an Amazon RDS MySQL DB Instance](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/MySQL.Procedural.Importing.html)
  late final Output<InstanceS3Import?> s3Import;

  /// Determines whether a final DB snapshot is
  /// created before the DB instance is deleted. If true is specified, no DBSnapshot
  /// is created. If false is specified, a DB snapshot is created before the DB
  /// instance is deleted, using the value from `final_snapshot_identifier`. Default
  /// is `false`.
  late final Output<bool?> skipFinalSnapshot;

  /// Specifies whether or not to create this database from a snapshot.
  /// This corresponds to the snapshot ID you'd find in the RDS console, e.g: rds:production-2015-06-26-06-05.
  late final Output<String> snapshotIdentifier;

  /// The RDS instance status.
  late final Output<String> status;

  /// Specifies whether the DB instance is
  /// encrypted. Note that if you are creating a cross-region read replica this field
  /// is ignored and you should instead declare `kms_key_id` with a valid ARN. The
  /// default is `false` if not specified.
  late final Output<bool?> storageEncrypted;

  /// The storage throughput value for the DB instance. Can only be set when `storage_type` is `"gp3"`. Cannot be specified if the `allocated_storage` value is below a per-`engine` threshold. See the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#gp3-storage) for details.
  late final Output<int> storageThroughput;

  /// One of "standard" (magnetic), "gp2" (general
  /// purpose SSD), "gp3" (general purpose SSD that needs `iops` independently)
  /// "io1" (provisioned IOPS SSD) or "io2" (block express storage provisioned IOPS
  /// SSD). The default is "io1" if `iops` is specified, "gp2" if not.
  late final Output<String> storageType;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Time zone of the DB instance. `timezone` is currently
  /// only supported by Microsoft SQL Server. The `timezone` can only be set on
  /// creation. See [MSSQL User
  /// Guide](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.TimeZone)
  /// for more information.
  late final Output<String> timezone;

  /// Order in which the instances are upgraded (`first`, `second`, `last`). See [the AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Maintenance.AMVU.UpgradeRollout.html) for details.
  late final Output<String> upgradeRolloutOrder;

  /// Whether to upgrade the storage file system configuration on the read replica.
  /// Can only be set with `replicate_source_db`.
  late final Output<bool?> upgradeStorageConfig;

  /// (Required unless a `snapshot_identifier` or `replicate_source_db`
  /// is provided) Username for the master DB user. Cannot be specified for a replica.
  late final Output<String> username;

  /// List of VPC security groups to
  /// associate.
  late final Output<List<String>> vpcSecurityGroupIds;

  Instance4(
    String name, {
    InstanceArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/instance:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.address = registerOutput<String>('address');
    this.allocatedStorage = registerOutput<int>('allocatedStorage');
    this.allowMajorVersionUpgrade =
        registerOutput<bool?>('allowMajorVersionUpgrade');
    this.applyImmediately = registerOutput<bool?>('applyImmediately');
    this.arn = registerOutput<String>('arn');
    this.autoMinorVersionUpgrade =
        registerOutput<bool?>('autoMinorVersionUpgrade');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.backupRetentionPeriod = registerOutput<int>('backupRetentionPeriod');
    this.backupTarget = registerOutput<String>('backupTarget');
    this.backupWindow = registerOutput<String>('backupWindow');
    this.blueGreenUpdate =
        registerOutput<InstanceBlueGreenUpdate?>('blueGreenUpdate');
    this.caCertIdentifier = registerOutput<String>('caCertIdentifier');
    this.characterSetName = registerOutput<String>('characterSetName');
    this.copyTagsToSnapshot = registerOutput<bool?>('copyTagsToSnapshot');
    this.customIamInstanceProfile =
        registerOutput<String?>('customIamInstanceProfile');
    this.customerOwnedIpEnabled =
        registerOutput<bool?>('customerOwnedIpEnabled');
    this.databaseInsightsMode = registerOutput<String>('databaseInsightsMode');
    this.dbName = registerOutput<String>('dbName');
    this.dbSubnetGroupName = registerOutput<String>('dbSubnetGroupName');
    this.dedicatedLogVolume = registerOutput<bool?>('dedicatedLogVolume');
    this.deleteAutomatedBackups =
        registerOutput<bool?>('deleteAutomatedBackups');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.domain = registerOutput<String?>('domain');
    this.domainAuthSecretArn = registerOutput<String?>('domainAuthSecretArn');
    this.domainDnsIps = registerOutput<List<String>?>('domainDnsIps');
    this.domainFqdn = registerOutput<String>('domainFqdn');
    this.domainIamRoleName = registerOutput<String?>('domainIamRoleName');
    this.domainOu = registerOutput<String?>('domainOu');
    this.enabledCloudwatchLogsExports =
        registerOutput<List<String>?>('enabledCloudwatchLogsExports');
    this.endpoint = registerOutput<String>('endpoint');
    this.engine = registerOutput<String>('engine');
    this.engineLifecycleSupport =
        registerOutput<String>('engineLifecycleSupport');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.engineVersionActual = registerOutput<String>('engineVersionActual');
    this.finalSnapshotIdentifier =
        registerOutput<String?>('finalSnapshotIdentifier');
    this.hostedZoneId = registerOutput<String>('hostedZoneId');
    this.iamDatabaseAuthenticationEnabled =
        registerOutput<bool?>('iamDatabaseAuthenticationEnabled');
    this.identifier = registerOutput<String>('identifier');
    this.identifierPrefix = registerOutput<String>('identifierPrefix');
    this.instanceClass = registerOutput<String>('instanceClass');
    this.iops = registerOutput<int>('iops');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.latestRestorableTime = registerOutput<String>('latestRestorableTime');
    this.licenseModel = registerOutput<String>('licenseModel');
    this.listenerEndpoints =
        registerOutput<List<InstanceListenerEndpoint>>('listenerEndpoints');
    this.maintenanceWindow = registerOutput<String>('maintenanceWindow');
    this.manageMasterUserPassword =
        registerOutput<bool?>('manageMasterUserPassword');
    this.masterUserSecretKmsKeyId =
        registerOutput<String>('masterUserSecretKmsKeyId');
    this.masterUserSecrets =
        registerOutput<List<InstanceMasterUserSecret>>('masterUserSecrets');
    this.maxAllocatedStorage = registerOutput<int?>('maxAllocatedStorage');
    this.monitoringInterval = registerOutput<int?>('monitoringInterval');
    this.monitoringRoleArn = registerOutput<String>('monitoringRoleArn');
    this.multiAz = registerOutput<bool>('multiAz');
    this.ncharCharacterSetName =
        registerOutput<String>('ncharCharacterSetName');
    this.networkType = registerOutput<String>('networkType');
    this.optionGroupName = registerOutput<String>('optionGroupName');
    this.parameterGroupName = registerOutput<String>('parameterGroupName');
    this.password = registerOutput<String?>('password');
    this.passwordWo = registerOutput<String?>('passwordWo');
    this.passwordWoVersion = registerOutput<int?>('passwordWoVersion');
    this.performanceInsightsEnabled =
        registerOutput<bool?>('performanceInsightsEnabled');
    this.performanceInsightsKmsKeyId =
        registerOutput<String>('performanceInsightsKmsKeyId');
    this.performanceInsightsRetentionPeriod =
        registerOutput<int>('performanceInsightsRetentionPeriod');
    this.port = registerOutput<int>('port');
    this.publiclyAccessible = registerOutput<bool?>('publiclyAccessible');
    this.region = registerOutput<String>('region');
    this.replicaMode = registerOutput<String>('replicaMode');
    this.replicas = registerOutput<List<String>>('replicas');
    this.replicateSourceDb = registerOutput<String?>('replicateSourceDb');
    this.resourceId = registerOutput<String>('resourceId');
    this.restoreToPointInTime =
        registerOutput<InstanceRestoreToPointInTime?>('restoreToPointInTime');
    this.s3Import = registerOutput<InstanceS3Import?>('s3Import');
    this.skipFinalSnapshot = registerOutput<bool?>('skipFinalSnapshot');
    this.snapshotIdentifier = registerOutput<String>('snapshotIdentifier');
    this.status = registerOutput<String>('status');
    this.storageEncrypted = registerOutput<bool?>('storageEncrypted');
    this.storageThroughput = registerOutput<int>('storageThroughput');
    this.storageType = registerOutput<String>('storageType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timezone = registerOutput<String>('timezone');
    this.upgradeRolloutOrder = registerOutput<String>('upgradeRolloutOrder');
    this.upgradeStorageConfig = registerOutput<bool?>('upgradeStorageConfig');
    this.username = registerOutput<String>('username');
    this.vpcSecurityGroupIds =
        registerOutput<List<String>>('vpcSecurityGroupIds');
  }
}
