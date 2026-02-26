// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_blue_green_update/instance_blue_green_update.dart';
import '../instance_restore_to_point_in_time/instance_restore_to_point_in_time.dart';
import '../instance_s3_import/instance_s3_import.dart';

/// The set of arguments for Instance.
class InstanceArgs4 {
  /// The allocated storage in gibibytes. If <span pulumi-lang-nodejs="`maxAllocatedStorage`" pulumi-lang-dotnet="`MaxAllocatedStorage`" pulumi-lang-go="`maxAllocatedStorage`" pulumi-lang-python="`max_allocated_storage`" pulumi-lang-yaml="`maxAllocatedStorage`" pulumi-lang-java="`maxAllocatedStorage`">`max_allocated_storage`</span> is configured, this argument represents the initial storage allocation and differences from the configuration will be ignored automatically when Storage Autoscaling occurs. If <span pulumi-lang-nodejs="`replicateSourceDb`" pulumi-lang-dotnet="`ReplicateSourceDb`" pulumi-lang-go="`replicateSourceDb`" pulumi-lang-python="`replicate_source_db`" pulumi-lang-yaml="`replicateSourceDb`" pulumi-lang-java="`replicateSourceDb`">`replicate_source_db`</span> is set, the value is ignored during the creation of the instance.
  final Input<int>? allocatedStorage;

  /// Indicates that major version
  /// upgrades are allowed. Changing this parameter does not result in an outage and
  /// the change is asynchronously applied as soon as possible.
  final Input<bool>? allowMajorVersionUpgrade;

  /// Specifies whether any database modifications
  /// are applied immediately, or during the next maintenance window. Default is
  /// <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. See [Amazon RDS Documentation for more
  /// information.](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html)
  final Input<bool>? applyImmediately;

  /// Indicates that minor engine upgrades
  /// will be applied automatically to the DB instance during the maintenance window.
  /// Defaults to true.
  final Input<bool>? autoMinorVersionUpgrade;

  /// The AZ for the RDS instance.
  final Input<String>? availabilityZone;

  /// The days to retain backups for.
  /// Must be between <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> and <span pulumi-lang-nodejs="`35`" pulumi-lang-dotnet="`35`" pulumi-lang-go="`35`" pulumi-lang-python="`35`" pulumi-lang-yaml="`35`" pulumi-lang-java="`35`">`35`</span>.
  /// Default is <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
  /// Must be greater than <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> if the database is used as a source for a [Read Replica][instance-replication],
  /// uses low-downtime updates,
  /// or will use [RDS Blue/Green deployments][blue-green].
  final Input<int>? backupRetentionPeriod;

  /// Specifies where automated backups and manual snapshots are stored. Possible values are <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (default) and <span pulumi-lang-nodejs="`outposts`" pulumi-lang-dotnet="`Outposts`" pulumi-lang-go="`outposts`" pulumi-lang-python="`outposts`" pulumi-lang-yaml="`outposts`" pulumi-lang-java="`outposts`">`outposts`</span>. See [Working with Amazon RDS on AWS Outposts](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html) for more information.
  final Input<String>? backupTarget;

  /// The daily time range (in UTC) during which automated backups are created if they are enabled.
  /// Example: "09:46-10:16". Must not overlap with <span pulumi-lang-nodejs="`maintenanceWindow`" pulumi-lang-dotnet="`MaintenanceWindow`" pulumi-lang-go="`maintenanceWindow`" pulumi-lang-python="`maintenance_window`" pulumi-lang-yaml="`maintenanceWindow`" pulumi-lang-java="`maintenanceWindow`">`maintenance_window`</span>.
  final Input<String>? backupWindow;

  /// Enables low-downtime updates using [RDS Blue/Green deployments][blue-green].
  /// See <span pulumi-lang-nodejs="`blueGreenUpdate`" pulumi-lang-dotnet="`BlueGreenUpdate`" pulumi-lang-go="`blueGreenUpdate`" pulumi-lang-python="`blue_green_update`" pulumi-lang-yaml="`blueGreenUpdate`" pulumi-lang-java="`blueGreenUpdate`">`blue_green_update`</span> below.
  final Input<InstanceBlueGreenUpdate>? blueGreenUpdate;

  /// The identifier of the CA certificate for the DB instance.
  final Input<String>? caCertIdentifier;

  /// The character set name to use for DB encoding in Oracle and Microsoft SQL instances (collation).
  /// This can't be changed.
  /// See [Oracle Character Sets Supported in Amazon RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.OracleCharacterSets.html) or
  /// [Server-Level Collation for Microsoft SQL Server](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.SQLServer.CommonDBATasks.Collation.html) for more information.
  /// Cannot be set  with <span pulumi-lang-nodejs="`replicateSourceDb`" pulumi-lang-dotnet="`ReplicateSourceDb`" pulumi-lang-go="`replicateSourceDb`" pulumi-lang-python="`replicate_source_db`" pulumi-lang-yaml="`replicateSourceDb`" pulumi-lang-java="`replicateSourceDb`">`replicate_source_db`</span>, <span pulumi-lang-nodejs="`restoreToPointInTime`" pulumi-lang-dotnet="`RestoreToPointInTime`" pulumi-lang-go="`restoreToPointInTime`" pulumi-lang-python="`restore_to_point_in_time`" pulumi-lang-yaml="`restoreToPointInTime`" pulumi-lang-java="`restoreToPointInTime`">`restore_to_point_in_time`</span>, <span pulumi-lang-nodejs="`s3Import`" pulumi-lang-dotnet="`S3Import`" pulumi-lang-go="`s3Import`" pulumi-lang-python="`s3_import`" pulumi-lang-yaml="`s3Import`" pulumi-lang-java="`s3Import`">`s3_import`</span>, or <span pulumi-lang-nodejs="`snapshotIdentifier`" pulumi-lang-dotnet="`SnapshotIdentifier`" pulumi-lang-go="`snapshotIdentifier`" pulumi-lang-python="`snapshot_identifier`" pulumi-lang-yaml="`snapshotIdentifier`" pulumi-lang-java="`snapshotIdentifier`">`snapshot_identifier`</span>.
  final Input<String>? characterSetName;

  /// Copy all Instance <span pulumi-lang-nodejs="`tags`" pulumi-lang-dotnet="`Tags`" pulumi-lang-go="`tags`" pulumi-lang-python="`tags`" pulumi-lang-yaml="`tags`" pulumi-lang-java="`tags`">`tags`</span> to snapshots. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? copyTagsToSnapshot;

  /// The instance profile associated with the underlying Amazon EC2 instance of an RDS Custom DB instance.
  final Input<String>? customIamInstanceProfile;

  /// Indicates whether to enable a customer-owned IP address (CoIP) for an RDS on Outposts DB instance. See [CoIP for RDS on Outposts](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html#rds-on-outposts.coip) for more information.
  ///
  /// For more detailed documentation about each argument, refer to the [AWS official
  /// documentation](http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html).
  ///
  /// > **NOTE:** Removing the <span pulumi-lang-nodejs="`replicateSourceDb`" pulumi-lang-dotnet="`ReplicateSourceDb`" pulumi-lang-go="`replicateSourceDb`" pulumi-lang-python="`replicate_source_db`" pulumi-lang-yaml="`replicateSourceDb`" pulumi-lang-java="`replicateSourceDb`">`replicate_source_db`</span> attribute from an existing RDS
  /// Replicate database managed by the provider will promote the database to a fully
  /// standalone database.
  final Input<bool>? customerOwnedIpEnabled;

  /// The mode of Database Insights that is enabled for the instance. Valid values: <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>, <span pulumi-lang-nodejs="`advanced`" pulumi-lang-dotnet="`Advanced`" pulumi-lang-go="`advanced`" pulumi-lang-python="`advanced`" pulumi-lang-yaml="`advanced`" pulumi-lang-java="`advanced`">`advanced`</span> .
  final Input<String>? databaseInsightsMode;

  /// The name of the database to create when the DB instance is created. If this parameter is not specified, no database is created in the DB instance. Note that this does not apply for Oracle or SQL Server engines. See the [AWS documentation](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/rds/create-db-instance.html) for more details on what applies for those engines. If you are providing an Oracle db name, it needs to be in all upper case. Cannot be specified for a replica.
  final Input<String>? dbName;

  /// Name of DB subnet group.
  /// DB instance will be created in the VPC associated with the DB subnet group.
  /// If unspecified, will be created in the <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span> Subnet Group.
  /// When working with read replicas created in the same region, defaults to the Subnet Group Name of the source DB.
  /// When working with read replicas created in a different region, defaults to the <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span> Subnet Group.
  /// See [DBSubnetGroupName in API action CreateDBInstanceReadReplica](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstanceReadReplica.html) for additional read replica constraints.
  final Input<String>? dbSubnetGroupName;

  /// Use a dedicated log volume (DLV) for the DB instance. Requires Provisioned IOPS. See the [AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.dlv) for more details.
  final Input<bool>? dedicatedLogVolume;

  /// Specifies whether to remove automated backups immediately after the DB instance is deleted. Default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? deleteAutomatedBackups;

  /// If the DB instance should have deletion protection enabled. The database can't be deleted when this value is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? deletionProtection;

  /// The ID of the Directory Service Active Directory domain to create the instance in. Conflicts with <span pulumi-lang-nodejs="`domainFqdn`" pulumi-lang-dotnet="`DomainFqdn`" pulumi-lang-go="`domainFqdn`" pulumi-lang-python="`domain_fqdn`" pulumi-lang-yaml="`domainFqdn`" pulumi-lang-java="`domainFqdn`">`domain_fqdn`</span>, <span pulumi-lang-nodejs="`domainOu`" pulumi-lang-dotnet="`DomainOu`" pulumi-lang-go="`domainOu`" pulumi-lang-python="`domain_ou`" pulumi-lang-yaml="`domainOu`" pulumi-lang-java="`domainOu`">`domain_ou`</span>, <span pulumi-lang-nodejs="`domainAuthSecretArn`" pulumi-lang-dotnet="`DomainAuthSecretArn`" pulumi-lang-go="`domainAuthSecretArn`" pulumi-lang-python="`domain_auth_secret_arn`" pulumi-lang-yaml="`domainAuthSecretArn`" pulumi-lang-java="`domainAuthSecretArn`">`domain_auth_secret_arn`</span> and a <span pulumi-lang-nodejs="`domainDnsIps`" pulumi-lang-dotnet="`DomainDnsIps`" pulumi-lang-go="`domainDnsIps`" pulumi-lang-python="`domain_dns_ips`" pulumi-lang-yaml="`domainDnsIps`" pulumi-lang-java="`domainDnsIps`">`domain_dns_ips`</span>.
  final Input<String>? domain;

  /// The ARN for the Secrets Manager secret with the self managed Active Directory credentials for the user joining the domain. Conflicts with <span pulumi-lang-nodejs="`domain`" pulumi-lang-dotnet="`Domain`" pulumi-lang-go="`domain`" pulumi-lang-python="`domain`" pulumi-lang-yaml="`domain`" pulumi-lang-java="`domain`">`domain`</span> and <span pulumi-lang-nodejs="`domainIamRoleName`" pulumi-lang-dotnet="`DomainIamRoleName`" pulumi-lang-go="`domainIamRoleName`" pulumi-lang-python="`domain_iam_role_name`" pulumi-lang-yaml="`domainIamRoleName`" pulumi-lang-java="`domainIamRoleName`">`domain_iam_role_name`</span>.
  final Input<String>? domainAuthSecretArn;

  /// The IPv4 DNS IP addresses of your primary and secondary self managed Active Directory domain controllers. Two IP addresses must be provided. If there isn't a secondary domain controller, use the IP address of the primary domain controller for both entries in the list. Conflicts with <span pulumi-lang-nodejs="`domain`" pulumi-lang-dotnet="`Domain`" pulumi-lang-go="`domain`" pulumi-lang-python="`domain`" pulumi-lang-yaml="`domain`" pulumi-lang-java="`domain`">`domain`</span> and <span pulumi-lang-nodejs="`domainIamRoleName`" pulumi-lang-dotnet="`DomainIamRoleName`" pulumi-lang-go="`domainIamRoleName`" pulumi-lang-python="`domain_iam_role_name`" pulumi-lang-yaml="`domainIamRoleName`" pulumi-lang-java="`domainIamRoleName`">`domain_iam_role_name`</span>.
  final Input<List<String>>? domainDnsIps;

  /// The fully qualified domain name (FQDN) of the self managed Active Directory domain. Conflicts with <span pulumi-lang-nodejs="`domain`" pulumi-lang-dotnet="`Domain`" pulumi-lang-go="`domain`" pulumi-lang-python="`domain`" pulumi-lang-yaml="`domain`" pulumi-lang-java="`domain`">`domain`</span> and <span pulumi-lang-nodejs="`domainIamRoleName`" pulumi-lang-dotnet="`DomainIamRoleName`" pulumi-lang-go="`domainIamRoleName`" pulumi-lang-python="`domain_iam_role_name`" pulumi-lang-yaml="`domainIamRoleName`" pulumi-lang-java="`domainIamRoleName`">`domain_iam_role_name`</span>.
  final Input<String>? domainFqdn;

  /// The name of the IAM role to be used when making API calls to the Directory Service. Conflicts with <span pulumi-lang-nodejs="`domainFqdn`" pulumi-lang-dotnet="`DomainFqdn`" pulumi-lang-go="`domainFqdn`" pulumi-lang-python="`domain_fqdn`" pulumi-lang-yaml="`domainFqdn`" pulumi-lang-java="`domainFqdn`">`domain_fqdn`</span>, <span pulumi-lang-nodejs="`domainOu`" pulumi-lang-dotnet="`DomainOu`" pulumi-lang-go="`domainOu`" pulumi-lang-python="`domain_ou`" pulumi-lang-yaml="`domainOu`" pulumi-lang-java="`domainOu`">`domain_ou`</span>, <span pulumi-lang-nodejs="`domainAuthSecretArn`" pulumi-lang-dotnet="`DomainAuthSecretArn`" pulumi-lang-go="`domainAuthSecretArn`" pulumi-lang-python="`domain_auth_secret_arn`" pulumi-lang-yaml="`domainAuthSecretArn`" pulumi-lang-java="`domainAuthSecretArn`">`domain_auth_secret_arn`</span> and a <span pulumi-lang-nodejs="`domainDnsIps`" pulumi-lang-dotnet="`DomainDnsIps`" pulumi-lang-go="`domainDnsIps`" pulumi-lang-python="`domain_dns_ips`" pulumi-lang-yaml="`domainDnsIps`" pulumi-lang-java="`domainDnsIps`">`domain_dns_ips`</span>.
  final Input<String>? domainIamRoleName;

  /// The self managed Active Directory organizational unit for your DB instance to join. Conflicts with <span pulumi-lang-nodejs="`domain`" pulumi-lang-dotnet="`Domain`" pulumi-lang-go="`domain`" pulumi-lang-python="`domain`" pulumi-lang-yaml="`domain`" pulumi-lang-java="`domain`">`domain`</span> and <span pulumi-lang-nodejs="`domainIamRoleName`" pulumi-lang-dotnet="`DomainIamRoleName`" pulumi-lang-go="`domainIamRoleName`" pulumi-lang-python="`domain_iam_role_name`" pulumi-lang-yaml="`domainIamRoleName`" pulumi-lang-java="`domainIamRoleName`">`domain_iam_role_name`</span>.
  final Input<String>? domainOu;

  /// Set of log types to enable for exporting to CloudWatch logs. If omitted, no logs will be exported. For supported values, see the EnableCloudwatchLogsExports.member.N parameter in [API action CreateDBInstance](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html).
  final Input<List<String>>? enabledCloudwatchLogsExports;

  /// The database engine to use. For supported values, see the Engine parameter in [API action CreateDBInstance](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html). Note that for Amazon Aurora instances the engine must match the DB cluster's engine'. For information on the difference between the available Aurora MySQL engines see [Comparison between Aurora MySQL 1 and Aurora MySQL 2](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraMySQL.Updates.20180206.html) in the Amazon RDS User Guide.
  final Input<String>? engine;

  /// The life cycle type for this DB instance. This setting applies only to RDS for MySQL and RDS for PostgreSQL. Valid values are `open-source-rds-extended-support`, `open-source-rds-extended-support-disabled`. Default value is `open-source-rds-extended-support`. [Using Amazon RDS Extended Support]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html
  final Input<String>? engineLifecycleSupport;

  /// The engine version to use. If <span pulumi-lang-nodejs="`autoMinorVersionUpgrade`" pulumi-lang-dotnet="`AutoMinorVersionUpgrade`" pulumi-lang-go="`autoMinorVersionUpgrade`" pulumi-lang-python="`auto_minor_version_upgrade`" pulumi-lang-yaml="`autoMinorVersionUpgrade`" pulumi-lang-java="`autoMinorVersionUpgrade`">`auto_minor_version_upgrade`</span> is enabled, you can provide a prefix of the version such as `8.0` (for `8.0.36`). The actual engine version used is returned in the attribute <span pulumi-lang-nodejs="`engineVersionActual`" pulumi-lang-dotnet="`EngineVersionActual`" pulumi-lang-go="`engineVersionActual`" pulumi-lang-python="`engine_version_actual`" pulumi-lang-yaml="`engineVersionActual`" pulumi-lang-java="`engineVersionActual`">`engine_version_actual`</span>, see Attribute Reference below. For supported values, see the EngineVersion parameter in [API action CreateDBInstance](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html). Note that for Amazon Aurora instances the engine version must match the DB cluster's engine version'.
  final Input<String>? engineVersion;

  /// The name of your final DB snapshot
  /// when this DB instance is deleted. Must be provided if <span pulumi-lang-nodejs="`skipFinalSnapshot`" pulumi-lang-dotnet="`SkipFinalSnapshot`" pulumi-lang-go="`skipFinalSnapshot`" pulumi-lang-python="`skip_final_snapshot`" pulumi-lang-yaml="`skipFinalSnapshot`" pulumi-lang-java="`skipFinalSnapshot`">`skip_final_snapshot`</span> is
  /// set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. The value must begin with a letter, only contain alphanumeric characters and hyphens, and not end with a hyphen or contain two consecutive hyphens. Must not be provided when deleting a read replica.
  final Input<String>? finalSnapshotIdentifier;

  /// Specifies whether mappings of AWS Identity and Access Management (IAM) accounts to database
  /// accounts is enabled.
  final Input<bool>? iamDatabaseAuthenticationEnabled;

  /// The name of the RDS instance, if omitted, this provider will assign a random, unique identifier. Required if <span pulumi-lang-nodejs="`restoreToPointInTime`" pulumi-lang-dotnet="`RestoreToPointInTime`" pulumi-lang-go="`restoreToPointInTime`" pulumi-lang-python="`restore_to_point_in_time`" pulumi-lang-yaml="`restoreToPointInTime`" pulumi-lang-java="`restoreToPointInTime`">`restore_to_point_in_time`</span> is specified.
  final Input<String>? identifier;

  /// Creates a unique identifier beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`identifier`" pulumi-lang-dotnet="`Identifier`" pulumi-lang-go="`identifier`" pulumi-lang-python="`identifier`" pulumi-lang-yaml="`identifier`" pulumi-lang-java="`identifier`">`identifier`</span>.
  final Input<String>? identifierPrefix;

  /// The instance type of the RDS instance.
  final Input<String> instanceClass;

  /// The amount of provisioned IOPS. Setting this implies a<span pulumi-lang-nodejs="
  /// storageType " pulumi-lang-dotnet="
  /// StorageType " pulumi-lang-go="
  /// storageType " pulumi-lang-python="
  /// storage_type " pulumi-lang-yaml="
  /// storageType " pulumi-lang-java="
  /// storageType ">
  /// storage_type </span>of "io1" or "io2". Can only be set when <span pulumi-lang-nodejs="`storageType`" pulumi-lang-dotnet="`StorageType`" pulumi-lang-go="`storageType`" pulumi-lang-python="`storage_type`" pulumi-lang-yaml="`storageType`" pulumi-lang-java="`storageType`">`storage_type`</span> is `"io1"`, `"io2` or `"gp3"`.
  /// Cannot be specified for gp3 storage if the <span pulumi-lang-nodejs="`allocatedStorage`" pulumi-lang-dotnet="`AllocatedStorage`" pulumi-lang-go="`allocatedStorage`" pulumi-lang-python="`allocated_storage`" pulumi-lang-yaml="`allocatedStorage`" pulumi-lang-java="`allocatedStorage`">`allocated_storage`</span> value is below a per-<span pulumi-lang-nodejs="`engine`" pulumi-lang-dotnet="`Engine`" pulumi-lang-go="`engine`" pulumi-lang-python="`engine`" pulumi-lang-yaml="`engine`" pulumi-lang-java="`engine`">`engine`</span> threshold.
  /// See the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#gp3-storage) for details.
  final Input<int>? iops;

  /// The ARN for the KMS encryption key. If creating an
  /// encrypted replica, set this to the destination KMS ARN.
  final Input<String>? kmsKeyId;

  /// License model information for this DB instance. Valid values for this field are as follows:
  /// * RDS for MariaDB: `general-public-license`
  /// * RDS for Microsoft SQL Server: `license-included`
  /// * RDS for MySQL: `general-public-license`
  /// * RDS for Oracle: `bring-your-own-license | license-included`
  /// * RDS for PostgreSQL: `postgresql-license`
  final Input<String>? licenseModel;

  /// The window to perform maintenance in.
  /// Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00". See [RDS
  /// Maintenance Window
  /// docs](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow)
  /// for more information.
  final Input<String>? maintenanceWindow;

  /// Set to true to allow RDS to manage the master user password in Secrets Manager. Cannot be set if <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span> or <span pulumi-lang-nodejs="`passwordWo`" pulumi-lang-dotnet="`PasswordWo`" pulumi-lang-go="`passwordWo`" pulumi-lang-python="`password_wo`" pulumi-lang-yaml="`passwordWo`" pulumi-lang-java="`passwordWo`">`password_wo`</span> is provided.
  final Input<bool>? manageMasterUserPassword;

  /// The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. To use a KMS key in a different Amazon Web Services account, specify the key ARN or alias ARN. If not specified, the default KMS key for your Amazon Web Services account is used.
  final Input<String>? masterUserSecretKmsKeyId;

  /// Specifies the maximum storage (in GiB) that Amazon RDS can automatically scale to for this DB instance. By default, Storage Autoscaling is disabled. To enable Storage Autoscaling, set <span pulumi-lang-nodejs="`maxAllocatedStorage`" pulumi-lang-dotnet="`MaxAllocatedStorage`" pulumi-lang-go="`maxAllocatedStorage`" pulumi-lang-python="`max_allocated_storage`" pulumi-lang-yaml="`maxAllocatedStorage`" pulumi-lang-java="`maxAllocatedStorage`">`max_allocated_storage`</span> to **greater than or equal to** <span pulumi-lang-nodejs="`allocatedStorage`" pulumi-lang-dotnet="`AllocatedStorage`" pulumi-lang-go="`allocatedStorage`" pulumi-lang-python="`allocated_storage`" pulumi-lang-yaml="`allocatedStorage`" pulumi-lang-java="`allocatedStorage`">`allocated_storage`</span>. Setting <span pulumi-lang-nodejs="`maxAllocatedStorage`" pulumi-lang-dotnet="`MaxAllocatedStorage`" pulumi-lang-go="`maxAllocatedStorage`" pulumi-lang-python="`max_allocated_storage`" pulumi-lang-yaml="`maxAllocatedStorage`" pulumi-lang-java="`maxAllocatedStorage`">`max_allocated_storage`</span> to 0 explicitly disables Storage Autoscaling. When configured, changes to <span pulumi-lang-nodejs="`allocatedStorage`" pulumi-lang-dotnet="`AllocatedStorage`" pulumi-lang-go="`allocatedStorage`" pulumi-lang-python="`allocated_storage`" pulumi-lang-yaml="`allocatedStorage`" pulumi-lang-java="`allocatedStorage`">`allocated_storage`</span> will be automatically ignored as the storage can dynamically scale.
  final Input<int>? maxAllocatedStorage;

  /// The interval, in seconds, between points
  /// when Enhanced Monitoring metrics are collected for the DB instance. To disable
  /// collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid
  /// Values: 0, 1, 5, 10, 15, 30, 60.
  final Input<int>? monitoringInterval;

  /// The ARN for the IAM role that permits RDS
  /// to send enhanced monitoring metrics to CloudWatch Logs. You can find more
  /// information on the [AWS
  /// Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html)
  /// what IAM permissions are needed to allow Enhanced Monitoring for RDS Instances.
  final Input<String>? monitoringRoleArn;

  /// Specifies if the RDS instance is multi-AZ
  final Input<bool>? multiAz;

  /// The national character set is used in the NCHAR, NVARCHAR2, and NCLOB data types for Oracle instances. This can't be changed. See [Oracle Character Sets
  /// Supported in Amazon RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.OracleCharacterSets.html).
  final Input<String>? ncharCharacterSetName;

  /// The network type of the DB instance. Valid values: `IPV4`, `DUAL`.
  final Input<String>? networkType;

  /// Name of the DB option group to associate.
  final Input<String>? optionGroupName;

  /// Name of the DB parameter group to associate.
  final Input<String>? parameterGroupName;

  /// Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Cannot be set if <span pulumi-lang-nodejs="`manageMasterUserPassword`" pulumi-lang-dotnet="`ManageMasterUserPassword`" pulumi-lang-go="`manageMasterUserPassword`" pulumi-lang-python="`manage_master_user_password`" pulumi-lang-yaml="`manageMasterUserPassword`" pulumi-lang-java="`manageMasterUserPassword`">`manage_master_user_password`</span> is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<String>? password;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Cannot be set if <span pulumi-lang-nodejs="`manageMasterUserPassword`" pulumi-lang-dotnet="`ManageMasterUserPassword`" pulumi-lang-go="`manageMasterUserPassword`" pulumi-lang-python="`manage_master_user_password`" pulumi-lang-yaml="`manageMasterUserPassword`" pulumi-lang-java="`manageMasterUserPassword`">`manage_master_user_password`</span> is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<String>? passwordWo;

  /// Used together with <span pulumi-lang-nodejs="`passwordWo`" pulumi-lang-dotnet="`PasswordWo`" pulumi-lang-go="`passwordWo`" pulumi-lang-python="`password_wo`" pulumi-lang-yaml="`passwordWo`" pulumi-lang-java="`passwordWo`">`password_wo`</span> to trigger an update. Increment this value when an update to <span pulumi-lang-nodejs="`passwordWo`" pulumi-lang-dotnet="`PasswordWo`" pulumi-lang-go="`passwordWo`" pulumi-lang-python="`password_wo`" pulumi-lang-yaml="`passwordWo`" pulumi-lang-java="`passwordWo`">`password_wo`</span> is required.
  final Input<int>? passwordWoVersion;

  /// Specifies whether Performance Insights are enabled. Defaults to false.
  final Input<bool>? performanceInsightsEnabled;

  /// The ARN for the KMS key to encrypt Performance Insights data. When specifying <span pulumi-lang-nodejs="`performanceInsightsKmsKeyId`" pulumi-lang-dotnet="`PerformanceInsightsKmsKeyId`" pulumi-lang-go="`performanceInsightsKmsKeyId`" pulumi-lang-python="`performance_insights_kms_key_id`" pulumi-lang-yaml="`performanceInsightsKmsKeyId`" pulumi-lang-java="`performanceInsightsKmsKeyId`">`performance_insights_kms_key_id`</span>, <span pulumi-lang-nodejs="`performanceInsightsEnabled`" pulumi-lang-dotnet="`PerformanceInsightsEnabled`" pulumi-lang-go="`performanceInsightsEnabled`" pulumi-lang-python="`performance_insights_enabled`" pulumi-lang-yaml="`performanceInsightsEnabled`" pulumi-lang-java="`performanceInsightsEnabled`">`performance_insights_enabled`</span> needs to be set to true. Once KMS key is set, it can never be changed.
  final Input<String>? performanceInsightsKmsKeyId;

  /// Amount of time in days to retain Performance Insights data. Valid values are <span pulumi-lang-nodejs="`7`" pulumi-lang-dotnet="`7`" pulumi-lang-go="`7`" pulumi-lang-python="`7`" pulumi-lang-yaml="`7`" pulumi-lang-java="`7`">`7`</span>, <span pulumi-lang-nodejs="`731`" pulumi-lang-dotnet="`731`" pulumi-lang-go="`731`" pulumi-lang-python="`731`" pulumi-lang-yaml="`731`" pulumi-lang-java="`731`">`731`</span> (2 years) or a multiple of <span pulumi-lang-nodejs="`31`" pulumi-lang-dotnet="`31`" pulumi-lang-go="`31`" pulumi-lang-python="`31`" pulumi-lang-yaml="`31`" pulumi-lang-java="`31`">`31`</span>. When specifying <span pulumi-lang-nodejs="`performanceInsightsRetentionPeriod`" pulumi-lang-dotnet="`PerformanceInsightsRetentionPeriod`" pulumi-lang-go="`performanceInsightsRetentionPeriod`" pulumi-lang-python="`performance_insights_retention_period`" pulumi-lang-yaml="`performanceInsightsRetentionPeriod`" pulumi-lang-java="`performanceInsightsRetentionPeriod`">`performance_insights_retention_period`</span>, <span pulumi-lang-nodejs="`performanceInsightsEnabled`" pulumi-lang-dotnet="`PerformanceInsightsEnabled`" pulumi-lang-go="`performanceInsightsEnabled`" pulumi-lang-python="`performance_insights_enabled`" pulumi-lang-yaml="`performanceInsightsEnabled`" pulumi-lang-java="`performanceInsightsEnabled`">`performance_insights_enabled`</span> needs to be set to true. Defaults to '7'.
  final Input<int>? performanceInsightsRetentionPeriod;

  /// The port on which the DB accepts connections.
  final Input<int>? port;

  /// Bool to control if instance is publicly
  /// accessible. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies whether the replica is in either <span pulumi-lang-nodejs="`mounted`" pulumi-lang-dotnet="`Mounted`" pulumi-lang-go="`mounted`" pulumi-lang-python="`mounted`" pulumi-lang-yaml="`mounted`" pulumi-lang-java="`mounted`">`mounted`</span> or `open-read-only` mode. This attribute
  /// is only supported by Oracle instances. Oracle replicas operate in `open-read-only` mode unless otherwise specified. See [Working with Oracle Read Replicas](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html) for more information.
  final Input<String>? replicaMode;

  /// Specifies that this resource is a Replica database, and to use this value as the source database.
  /// If replicating an Amazon RDS Database Instance in the same region, use the <span pulumi-lang-nodejs="`identifier`" pulumi-lang-dotnet="`Identifier`" pulumi-lang-go="`identifier`" pulumi-lang-python="`identifier`" pulumi-lang-yaml="`identifier`" pulumi-lang-java="`identifier`">`identifier`</span> of the source DB, unless also specifying the <span pulumi-lang-nodejs="`dbSubnetGroupName`" pulumi-lang-dotnet="`DbSubnetGroupName`" pulumi-lang-go="`dbSubnetGroupName`" pulumi-lang-python="`db_subnet_group_name`" pulumi-lang-yaml="`dbSubnetGroupName`" pulumi-lang-java="`dbSubnetGroupName`">`db_subnet_group_name`</span>.
  /// If specifying the <span pulumi-lang-nodejs="`dbSubnetGroupName`" pulumi-lang-dotnet="`DbSubnetGroupName`" pulumi-lang-go="`dbSubnetGroupName`" pulumi-lang-python="`db_subnet_group_name`" pulumi-lang-yaml="`dbSubnetGroupName`" pulumi-lang-java="`dbSubnetGroupName`">`db_subnet_group_name`</span> in the same region, use the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> of the source DB.
  /// If replicating an Instance in a different region, use the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> of the source DB.
  /// Note that if you are creating a cross-region replica of an encrypted database you will also need to specify a <span pulumi-lang-nodejs="`kmsKeyId`" pulumi-lang-dotnet="`KmsKeyId`" pulumi-lang-go="`kmsKeyId`" pulumi-lang-python="`kms_key_id`" pulumi-lang-yaml="`kmsKeyId`" pulumi-lang-java="`kmsKeyId`">`kms_key_id`</span>.
  /// See [DB Instance Replication][instance-replication] and [Working with PostgreSQL and MySQL Read Replicas](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReadRepl.html) for more information on using Replication.
  final Input<String>? replicateSourceDb;

  /// A configuration block for restoring a DB instance to an arbitrary point in time.
  /// Requires the <span pulumi-lang-nodejs="`identifier`" pulumi-lang-dotnet="`Identifier`" pulumi-lang-go="`identifier`" pulumi-lang-python="`identifier`" pulumi-lang-yaml="`identifier`" pulumi-lang-java="`identifier`">`identifier`</span> argument to be set with the name of the new DB instance to be created.
  /// See Restore To Point In Time below for details.
  final Input<InstanceRestoreToPointInTime>? restoreToPointInTime;

  /// Restore from a Percona Xtrabackup in S3.  See [Importing Data into an Amazon RDS MySQL DB Instance](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/MySQL.Procedural.Importing.html)
  final Input<InstanceS3Import>? s3Import;

  /// Determines whether a final DB snapshot is
  /// created before the DB instance is deleted. If true is specified, no DBSnapshot
  /// is created. If false is specified, a DB snapshot is created before the DB
  /// instance is deleted, using the value from <span pulumi-lang-nodejs="`finalSnapshotIdentifier`" pulumi-lang-dotnet="`FinalSnapshotIdentifier`" pulumi-lang-go="`finalSnapshotIdentifier`" pulumi-lang-python="`final_snapshot_identifier`" pulumi-lang-yaml="`finalSnapshotIdentifier`" pulumi-lang-java="`finalSnapshotIdentifier`">`final_snapshot_identifier`</span>. Default
  /// is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? skipFinalSnapshot;

  /// Specifies whether or not to create this database from a snapshot.
  /// This corresponds to the snapshot ID you'd find in the RDS console, e.g: rds:production-2015-06-26-06-05.
  final Input<String>? snapshotIdentifier;

  /// Specifies whether the DB instance is
  /// encrypted. Note that if you are creating a cross-region read replica this field
  /// is ignored and you should instead declare <span pulumi-lang-nodejs="`kmsKeyId`" pulumi-lang-dotnet="`KmsKeyId`" pulumi-lang-go="`kmsKeyId`" pulumi-lang-python="`kms_key_id`" pulumi-lang-yaml="`kmsKeyId`" pulumi-lang-java="`kmsKeyId`">`kms_key_id`</span> with a valid ARN. The
  /// default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> if not specified.
  final Input<bool>? storageEncrypted;

  /// The storage throughput value for the DB instance. Can only be set when <span pulumi-lang-nodejs="`storageType`" pulumi-lang-dotnet="`StorageType`" pulumi-lang-go="`storageType`" pulumi-lang-python="`storage_type`" pulumi-lang-yaml="`storageType`" pulumi-lang-java="`storageType`">`storage_type`</span> is `"gp3"`. Cannot be specified if the <span pulumi-lang-nodejs="`allocatedStorage`" pulumi-lang-dotnet="`AllocatedStorage`" pulumi-lang-go="`allocatedStorage`" pulumi-lang-python="`allocated_storage`" pulumi-lang-yaml="`allocatedStorage`" pulumi-lang-java="`allocatedStorage`">`allocated_storage`</span> value is below a per-<span pulumi-lang-nodejs="`engine`" pulumi-lang-dotnet="`Engine`" pulumi-lang-go="`engine`" pulumi-lang-python="`engine`" pulumi-lang-yaml="`engine`" pulumi-lang-java="`engine`">`engine`</span> threshold. See the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#gp3-storage) for details.
  final Input<int>? storageThroughput;

  /// One of "standard" (magnetic), "gp2" (general
  /// purpose SSD), "gp3" (general purpose SSD that needs <span pulumi-lang-nodejs="`iops`" pulumi-lang-dotnet="`Iops`" pulumi-lang-go="`iops`" pulumi-lang-python="`iops`" pulumi-lang-yaml="`iops`" pulumi-lang-java="`iops`">`iops`</span> independently)
  /// "io1" (provisioned IOPS SSD) or "io2" (block express storage provisioned IOPS
  /// SSD). The default is "io1" if <span pulumi-lang-nodejs="`iops`" pulumi-lang-dotnet="`Iops`" pulumi-lang-go="`iops`" pulumi-lang-python="`iops`" pulumi-lang-yaml="`iops`" pulumi-lang-java="`iops`">`iops`</span> is specified, "gp2" if not.
  final Input<String>? storageType;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Time zone of the DB instance. <span pulumi-lang-nodejs="`timezone`" pulumi-lang-dotnet="`Timezone`" pulumi-lang-go="`timezone`" pulumi-lang-python="`timezone`" pulumi-lang-yaml="`timezone`" pulumi-lang-java="`timezone`">`timezone`</span> is currently
  /// only supported by Microsoft SQL Server. The <span pulumi-lang-nodejs="`timezone`" pulumi-lang-dotnet="`Timezone`" pulumi-lang-go="`timezone`" pulumi-lang-python="`timezone`" pulumi-lang-yaml="`timezone`" pulumi-lang-java="`timezone`">`timezone`</span> can only be set on
  /// creation. See [MSSQL User
  /// Guide](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.TimeZone)
  /// for more information.
  final Input<String>? timezone;

  /// Whether to upgrade the storage file system configuration on the read replica.
  /// Can only be set with <span pulumi-lang-nodejs="`replicateSourceDb`" pulumi-lang-dotnet="`ReplicateSourceDb`" pulumi-lang-go="`replicateSourceDb`" pulumi-lang-python="`replicate_source_db`" pulumi-lang-yaml="`replicateSourceDb`" pulumi-lang-java="`replicateSourceDb`">`replicate_source_db`</span>.
  final Input<bool>? upgradeStorageConfig;

  /// (Required unless a <span pulumi-lang-nodejs="`snapshotIdentifier`" pulumi-lang-dotnet="`SnapshotIdentifier`" pulumi-lang-go="`snapshotIdentifier`" pulumi-lang-python="`snapshot_identifier`" pulumi-lang-yaml="`snapshotIdentifier`" pulumi-lang-java="`snapshotIdentifier`">`snapshot_identifier`</span> or <span pulumi-lang-nodejs="`replicateSourceDb`" pulumi-lang-dotnet="`ReplicateSourceDb`" pulumi-lang-go="`replicateSourceDb`" pulumi-lang-python="`replicate_source_db`" pulumi-lang-yaml="`replicateSourceDb`" pulumi-lang-java="`replicateSourceDb`">`replicate_source_db`</span>
  /// is provided) Username for the master DB user. Cannot be specified for a replica.
  final Input<String>? username;

  /// List of VPC security groups to
  /// associate.
  final Input<List<String>>? vpcSecurityGroupIds;

  InstanceArgs4({
    this.allocatedStorage,
    this.allowMajorVersionUpgrade,
    this.applyImmediately,
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
    this.engine,
    this.engineLifecycleSupport,
    this.engineVersion,
    this.finalSnapshotIdentifier,
    this.iamDatabaseAuthenticationEnabled,
    this.identifier,
    this.identifierPrefix,
    required this.instanceClass,
    this.iops,
    this.kmsKeyId,
    this.licenseModel,
    this.maintenanceWindow,
    this.manageMasterUserPassword,
    this.masterUserSecretKmsKeyId,
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
    this.replicateSourceDb,
    this.restoreToPointInTime,
    this.s3Import,
    this.skipFinalSnapshot,
    this.snapshotIdentifier,
    this.storageEncrypted,
    this.storageThroughput,
    this.storageType,
    this.tags,
    this.timezone,
    this.upgradeStorageConfig,
    this.username,
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
      map['blueGreenUpdate'] = Input.mapOptionalInputValue<
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
      map['restoreToPointInTime'] = Input.mapOptionalInputValue<
              InstanceRestoreToPointInTime, Map<String, dynamic>>(
          restoreToPointInTimeValue, (value) => value.toMap());
    }
    final s3ImportValue = s3Import;
    if (s3ImportValue != null) {
      map['s3Import'] =
          Input.mapOptionalInputValue<InstanceS3Import, Map<String, dynamic>>(
              s3ImportValue, (value) => value.toMap());
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

  factory InstanceArgs4.fromMap(Map<String, dynamic> map) {
    return InstanceArgs4(
      allocatedStorage: Input.asOptionalInput<int>(map['allocatedStorage']),
      allowMajorVersionUpgrade:
          Input.asOptionalInput<bool>(map['allowMajorVersionUpgrade']),
      applyImmediately: Input.asOptionalInput<bool>(map['applyImmediately']),
      autoMinorVersionUpgrade:
          Input.asOptionalInput<bool>(map['autoMinorVersionUpgrade']),
      availabilityZone: Input.asOptionalInput<String>(map['availabilityZone']),
      backupRetentionPeriod:
          Input.asOptionalInput<int>(map['backupRetentionPeriod']),
      backupTarget: Input.asOptionalInput<String>(map['backupTarget']),
      backupWindow: Input.asOptionalInput<String>(map['backupWindow']),
      blueGreenUpdate: Input.asOptionalInput<InstanceBlueGreenUpdate>(
          map['blueGreenUpdate']),
      caCertIdentifier: Input.asOptionalInput<String>(map['caCertIdentifier']),
      characterSetName: Input.asOptionalInput<String>(map['characterSetName']),
      copyTagsToSnapshot:
          Input.asOptionalInput<bool>(map['copyTagsToSnapshot']),
      customIamInstanceProfile:
          Input.asOptionalInput<String>(map['customIamInstanceProfile']),
      customerOwnedIpEnabled:
          Input.asOptionalInput<bool>(map['customerOwnedIpEnabled']),
      databaseInsightsMode:
          Input.asOptionalInput<String>(map['databaseInsightsMode']),
      dbName: Input.asOptionalInput<String>(map['dbName']),
      dbSubnetGroupName:
          Input.asOptionalInput<String>(map['dbSubnetGroupName']),
      dedicatedLogVolume:
          Input.asOptionalInput<bool>(map['dedicatedLogVolume']),
      deleteAutomatedBackups:
          Input.asOptionalInput<bool>(map['deleteAutomatedBackups']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      domain: Input.asOptionalInput<String>(map['domain']),
      domainAuthSecretArn:
          Input.asOptionalInput<String>(map['domainAuthSecretArn']),
      domainDnsIps: Input.asOptionalInput<List<String>>(map['domainDnsIps']),
      domainFqdn: Input.asOptionalInput<String>(map['domainFqdn']),
      domainIamRoleName:
          Input.asOptionalInput<String>(map['domainIamRoleName']),
      domainOu: Input.asOptionalInput<String>(map['domainOu']),
      enabledCloudwatchLogsExports: Input.asOptionalInput<List<String>>(
          map['enabledCloudwatchLogsExports']),
      engine: Input.asOptionalInput<String>(map['engine']),
      engineLifecycleSupport:
          Input.asOptionalInput<String>(map['engineLifecycleSupport']),
      engineVersion: Input.asOptionalInput<String>(map['engineVersion']),
      finalSnapshotIdentifier:
          Input.asOptionalInput<String>(map['finalSnapshotIdentifier']),
      iamDatabaseAuthenticationEnabled:
          Input.asOptionalInput<bool>(map['iamDatabaseAuthenticationEnabled']),
      identifier: Input.asOptionalInput<String>(map['identifier']),
      identifierPrefix: Input.asOptionalInput<String>(map['identifierPrefix']),
      instanceClass: Input.asInput<String>(map['instanceClass']),
      iops: Input.asOptionalInput<int>(map['iops']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      licenseModel: Input.asOptionalInput<String>(map['licenseModel']),
      maintenanceWindow:
          Input.asOptionalInput<String>(map['maintenanceWindow']),
      manageMasterUserPassword:
          Input.asOptionalInput<bool>(map['manageMasterUserPassword']),
      masterUserSecretKmsKeyId:
          Input.asOptionalInput<String>(map['masterUserSecretKmsKeyId']),
      maxAllocatedStorage:
          Input.asOptionalInput<int>(map['maxAllocatedStorage']),
      monitoringInterval: Input.asOptionalInput<int>(map['monitoringInterval']),
      monitoringRoleArn:
          Input.asOptionalInput<String>(map['monitoringRoleArn']),
      multiAz: Input.asOptionalInput<bool>(map['multiAz']),
      ncharCharacterSetName:
          Input.asOptionalInput<String>(map['ncharCharacterSetName']),
      networkType: Input.asOptionalInput<String>(map['networkType']),
      optionGroupName: Input.asOptionalInput<String>(map['optionGroupName']),
      parameterGroupName:
          Input.asOptionalInput<String>(map['parameterGroupName']),
      password: Input.asOptionalInput<String>(map['password']),
      passwordWo: Input.asOptionalInput<String>(map['passwordWo']),
      passwordWoVersion: Input.asOptionalInput<int>(map['passwordWoVersion']),
      performanceInsightsEnabled:
          Input.asOptionalInput<bool>(map['performanceInsightsEnabled']),
      performanceInsightsKmsKeyId:
          Input.asOptionalInput<String>(map['performanceInsightsKmsKeyId']),
      performanceInsightsRetentionPeriod:
          Input.asOptionalInput<int>(map['performanceInsightsRetentionPeriod']),
      port: Input.asOptionalInput<int>(map['port']),
      publiclyAccessible:
          Input.asOptionalInput<bool>(map['publiclyAccessible']),
      region: Input.asOptionalInput<String>(map['region']),
      replicaMode: Input.asOptionalInput<String>(map['replicaMode']),
      replicateSourceDb:
          Input.asOptionalInput<String>(map['replicateSourceDb']),
      restoreToPointInTime: Input.asOptionalInput<InstanceRestoreToPointInTime>(
          map['restoreToPointInTime']),
      s3Import: Input.asOptionalInput<InstanceS3Import>(map['s3Import']),
      skipFinalSnapshot: Input.asOptionalInput<bool>(map['skipFinalSnapshot']),
      snapshotIdentifier:
          Input.asOptionalInput<String>(map['snapshotIdentifier']),
      storageEncrypted: Input.asOptionalInput<bool>(map['storageEncrypted']),
      storageThroughput: Input.asOptionalInput<int>(map['storageThroughput']),
      storageType: Input.asOptionalInput<String>(map['storageType']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timezone: Input.asOptionalInput<String>(map['timezone']),
      upgradeStorageConfig:
          Input.asOptionalInput<bool>(map['upgradeStorageConfig']),
      username: Input.asOptionalInput<String>(map['username']),
      vpcSecurityGroupIds:
          Input.asOptionalInput<List<String>>(map['vpcSecurityGroupIds']),
    );
  }
}
