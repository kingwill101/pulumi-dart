import 'package:pulumi/pulumi.dart';
import '../database_instance_clone/database_instance_clone.dart';
import '../database_instance_dns_name/database_instance_dns_name.dart';
import '../database_instance_ip_address/database_instance_ip_address.dart';
import '../database_instance_point_in_time_restore_context/database_instance_point_in_time_restore_context.dart';
import '../database_instance_replica_configuration/database_instance_replica_configuration.dart';
import '../database_instance_replication_cluster/database_instance_replication_cluster.dart';
import '../database_instance_restore_backup_context/database_instance_restore_backup_context.dart';
import '../database_instance_server_ca_cert/database_instance_server_ca_cert.dart';
import '../database_instance_settings/database_instance_settings.dart';
import 'database_instance_args2.dart';

/// Creates a new Google SQL Database Instance. For more information, see the [official documentation](https://cloud.google.com/sql/docs/mysql/create-instance),
/// or the [JSON API](https://cloud.google.com/sql/docs/admin-api/v1beta4/instances).
///
/// > **NOTE on `gcp.sql.DatabaseInstance`:** - Second-generation instances include a
/// default 'root'@'%' user with no password. This user will be deleted by the provider on
/// instance creation. You should use `gcp.sql.User` to define a custom user with
/// a restricted host and strong password.
///
/// > **Note**: On newer versions of the provider, you must explicitly set `deletion_protection=false`
/// (and run `pulumi update` to write the field to state) in order to destroy an instance.
/// It is recommended to not set this field (or set it to true) until you're ready to destroy the instance and its databases.
///
/// ## Example Usage
///
/// ### SQL Second Generation Instance
///
///
///
/// ### Granular restriction of network access
///
///
///
/// ### Private IP Instance
/// > **NOTE:** For private IP instance setup, note that the `gcp.sql.DatabaseInstance` does not actually interpolate values from `gcp.servicenetworking.Connection`. You must explicitly add a `depends_on`reference as shown below.
///
///
///
/// ### ENTERPRISE_PLUS Instance with data_cache_config
///
///
///
/// ### Cloud SQL Instance with Managed Connection Pooling
///
///
/// ### Cloud SQL Instance with PSC connectivity
///
///
///
/// ### Cloud SQL Instance with PSC auto connections
///
///
///
/// ### Cloud SQL Instance with PSC outbound
///
///
///
/// ### Cloud SQL Instance created with backupdr_backup
/// > **NOTE:** For restoring from a backupdr_backup, note that the backup must be in active state. List down the backups using `gcp.backupdisasterrecovery.getBackup`. Replace `backupdr_backup_full_path` with the backup name.
///
///
///
/// ### Cloud SQL Instance created using point_in_time_restore
/// > **NOTE:** Replace `backupdr_datasource` with the full datasource path, `time_stamp` should be in the format of `YYYY-MM-DDTHH:MM:SSZ`.
///
///
///
/// ## Switchover
///
/// Users can perform a switchover on a replica by following the steps below.
///
/// ~>**WARNING:** Failure to follow these steps can lead to data loss (You will be warned during plan stage). To prevent data loss during a switchover, please verify your plan with the checklist below.
///
/// For a more in-depth walkthrough with example code, see the Switchover Guide
///
/// ### Steps to Invoke Switchover
///
/// MySQL/PostgreSQL: Create a cross-region, Enterprise Plus edition primary and replica pair, then set the value of primary's `replication_cluster.failover_dr_replica_name` as the replica.
///
/// SQL Server: Create a `cascadable` replica in a different region from the primary (`cascadable_replica` is set to true in `replica_configuration`)
///
/// #### Invoking switchover in the replica resource:
/// 1. Change instance_type from `READ_REPLICA_INSTANCE` to `CLOUD_SQL_INSTANCE`
/// 2. Remove `master_instance_name`
/// 3. (SQL Server) Remove `replica_configuration`
/// 4. Add current primary's name to the replica's `replica_names` list
/// 5. (MySQL/PostgreSQL) Add current primary's name to the replica's `replication_cluster.failover_dr_replica_name`.
/// 6. (MySQL/PostgreSQL) Adjust `backup_configuration`. See Switchover Guide for details.
///
/// #### Updating the primary resource:
/// 1. Change `instance_type` from `CLOUD_SQL_INSTANCE` to `READ_REPLICA_INSTANCE`
/// 2. Set `master_instance_name` to the original replica (which will be primary after switchover)
/// 3. (SQL Server) Set `replica_configuration` and set `cascadable_replica` to `true`
/// 4. Remove original replica from `replica_names`
/// * **NOTE**: Do **not** delete the replica_names field, even if it has no replicas remaining. Set replica_names = [ ] to indicate it having no replicas.
/// 5. (MySQL/PostgreSQL) Set `replication_cluster.failover_dr_replica_name` as the empty string.
/// 6. (MySQL/PostgreSQL) Adjust `backup_configuration`. See Switchover Guide for details.
/// #### Plan and verify that:
/// - `pulumi preview` outputs **"0 to add, 0 to destroy"**
/// - `pulumi preview` does not say **"must be replaced"** for any resource
/// - Every resource **"will be updated in-place"**
/// - Only the 2 instances involved in switchover have planned changes
/// - (Recommended) Use `deletion_protection` on instances as a safety measure
///
/// ## Import
///
/// Database instances can be imported using one of any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Database instances can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:sql/databaseInstance:DatabaseInstance default projects/{{project}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:sql/databaseInstance:DatabaseInstance default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:sql/databaseInstance:DatabaseInstance default {{name}}
/// ```
///
/// config and set on the server.
///
/// When importing, double-check that your config has all the fields set that you expect- just seeing
///
/// no diff isn't sufficient to know that your config could reproduce the imported resource.
class DatabaseInstance2 extends CustomResource {
  /// The list of all maintenance versions applicable on the instance.
  late final Output<List<String>> availableMaintenanceVersions;

  /// The name of the BackupDR backup to restore from.
  late final Output<String?> backupdrBackup;

  /// The context needed to create this instance as a clone of another instance. When this field is set during
  /// resource creation, this provider will attempt to clone another instance as indicated in the context. The
  /// configuration is detailed below.
  late final Output<DatabaseInstanceClone?> clone;

  /// The connection name of the instance to be used in
  /// connection strings. For example, when connecting with [Cloud SQL Proxy](https://cloud.google.com/sql/docs/mysql/connect-admin-proxy).
  late final Output<String> connectionName;

  /// The MySQL, PostgreSQL or
  /// SQL Server version to use. Supported values include `MYSQL_5_6`,
  /// `MYSQL_5_7`, `MYSQL_8_0`, `MYSQL_8_4`, `POSTGRES_9_6`,`POSTGRES_10`, `POSTGRES_11`,
  /// `POSTGRES_12`, `POSTGRES_13`, `POSTGRES_14`, `POSTGRES_15`, `POSTGRES_16`, `POSTGRES_17`,
  /// `SQLSERVER_2017_STANDARD`, `SQLSERVER_2017_ENTERPRISE`, `SQLSERVER_2017_EXPRESS`, `SQLSERVER_2017_WEB`.
  /// `SQLSERVER_2019_STANDARD`, `SQLSERVER_2019_ENTERPRISE`, `SQLSERVER_2019_EXPRESS`,
  /// `SQLSERVER_2019_WEB`.
  /// [Database Version Policies](https://cloud.google.com/sql/docs/db-versions)
  /// includes an up-to-date reference of supported versions.
  late final Output<String> databaseVersion;

  /// Whether or not to allow the provider to destroy the instance. Unless this field is set to false
  /// in state, a `destroy` or `update` command that deletes the instance will fail. Defaults to `true`.
  ///
  /// > **NOTE:** This flag only protects instances from deletion within Pulumi. To protect your instances from accidental deletion across all surfaces (API, gcloud, Cloud Console and Pulumi), use the API flag `settings.deletion_protection_enabled`.
  late final Output<bool?> deletionProtection;

  /// The DNS name of the instance. See [Connect to an instance using Private Service Connect](https://cloud.google.com/sql/docs/mysql/configure-private-service-connect#view-summary-information-cloud-sql-instances-psc-enabled) for more details.
  late final Output<String> dnsName;

  /// The list of DNS names used by this instance. Different connection types for an instance may have different DNS names. DNS names can apply to an individual instance or a cluster of instances.
  late final Output<List<DatabaseInstanceDnsName>> dnsNames;

  /// The full path to the encryption key used for the CMEK disk encryption.  Setting
  /// up disk encryption currently requires manual steps outside of this provider.
  /// The provided key must be in the same region as the SQL instance.  In order
  /// to use this feature, a special kind of service account must be created and
  /// granted permission on this key.  This step can currently only be done
  /// manually, please see [this step](https://cloud.google.com/sql/docs/mysql/configure-cmek#service-account).
  /// That service account needs the `Cloud KMS > Cloud KMS CryptoKey Encrypter/Decrypter` role on your
  /// key - please see [this step](https://cloud.google.com/sql/docs/mysql/configure-cmek#grantkey).
  late final Output<String> encryptionKeyName;

  /// The description of final backup. Only set this field when `final_backup_config.enabled` is true.
  late final Output<String?> finalBackupDescription;

  /// The first IPv4 address of any type assigned.
  late final Output<String> firstIpAddress;

  /// The type of the instance. See [API reference for SqlInstanceType](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1/instances#SqlInstanceType) for supported values.
  late final Output<String> instanceType;
  late final Output<List<DatabaseInstanceIpAddress>> ipAddresses;

  /// The current software version on the instance. This attribute can not be set during creation. Refer to `available_maintenance_versions` attribute to see what `maintenance_version` are available for upgrade. When this attribute gets updated, it will cause an instance restart. Setting a `maintenance_version` value that is older than the current one on the instance will be ignored.
  late final Output<String> maintenanceVersion;

  /// The name of the existing instance that will
  /// act as the master in the replication setup. Note, this requires the master to
  /// have `binary_log_enabled` set, as well as existing backups.
  late final Output<String> masterInstanceName;

  /// The name of the instance. If the name is left
  /// blank, the provider will randomly generate one when the instance is first
  /// created. This is done because after a name is used, it cannot be reused for
  /// up to [one week](https://cloud.google.com/sql/docs/delete-instance).
  late final Output<String> name;

  /// For a read pool instance, the number of nodes in the read pool. For read pools with auto scaling enabled, this field is read only.
  late final Output<int> nodeCount;

  /// Configuration for creating a new instance using point-in-time-restore from backupdr backup.
  late final Output<DatabaseInstancePointInTimeRestoreContext?>
      pointInTimeRestoreContext;

  /// The first private (`PRIVATE`) IPv4 address assigned.
  late final Output<String> privateIpAddress;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final Output<String> project;

  /// the URI that points to the service attachment of the instance.
  late final Output<String> pscServiceAttachmentLink;

  /// The first public (`PRIMARY`) IPv4 address assigned.
  late final Output<String> publicIpAddress;

  /// The region the instance will sit in. If a region is not provided in the resource definition,
  /// the provider region will be used instead.
  ///
  /// - - -
  late final Output<String> region;

  /// The configuration for replication. The
  /// configuration is detailed below.
  late final Output<DatabaseInstanceReplicaConfiguration> replicaConfiguration;

  /// List of replica names. Can be updated.
  late final Output<List<String>> replicaNames;

  /// A primary instance and disaster recovery replica pair. Applicable to MySQL and PostgreSQL. This field can be set if the primary has psa_write_endpoint set or both the primary and replica are created.
  late final Output<DatabaseInstanceReplicationCluster> replicationCluster;

  /// The context needed to restore the database to a backup run. This field will
  /// cause the provider to trigger the database to restore from the backup run indicated. The configuration is detailed below.
  /// **NOTE:** Restoring from a backup is an imperative action and not recommended via this provider. Adding or modifying this
  /// block during resource creation/update will trigger the restore action after the resource is created/updated.
  late final Output<DatabaseInstanceRestoreBackupContext?> restoreBackupContext;

  /// Initial root password. Can be updated. Required for MS SQL Server.
  late final Output<String?> rootPassword;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Initial root password. Can be updated. Required for MS SQL Server. **Note**: This property is write-only and will not be read from the API.
  ///
  /// > **Note:** One of `root_password` or `root_password_wo` can only be set.
  late final Output<String?> rootPasswordWo;

  /// Triggers update of `root_password_wo` write-only. Increment this value when an update to `root_password_wo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  late final Output<String?> rootPasswordWoVersion;

  /// The URI of the created resource.
  late final Output<String> selfLink;
  late final Output<List<DatabaseInstanceServerCaCert>> serverCaCerts;

  /// The service account email address assigned to the
  /// instance.
  late final Output<String> serviceAccountEmailAddress;

  /// The settings to use for the database. The
  /// configuration is detailed below. Required if `clone` is not set.
  late final Output<DatabaseInstanceSettings> settings;

  DatabaseInstance2(
    String name, {
    DatabaseInstanceArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:sql/databaseInstance:DatabaseInstance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.availableMaintenanceVersions =
        registerOutput<List<String>>('availableMaintenanceVersions');
    this.backupdrBackup = registerOutput<String?>('backupdrBackup');
    this.clone = registerOutput<DatabaseInstanceClone?>('clone');
    this.connectionName = registerOutput<String>('connectionName');
    this.databaseVersion = registerOutput<String>('databaseVersion');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.dnsName = registerOutput<String>('dnsName');
    this.dnsNames = registerOutput<List<DatabaseInstanceDnsName>>('dnsNames');
    this.encryptionKeyName = registerOutput<String>('encryptionKeyName');
    this.finalBackupDescription =
        registerOutput<String?>('finalBackupDescription');
    this.firstIpAddress = registerOutput<String>('firstIpAddress');
    this.instanceType = registerOutput<String>('instanceType');
    this.ipAddresses =
        registerOutput<List<DatabaseInstanceIpAddress>>('ipAddresses');
    this.maintenanceVersion = registerOutput<String>('maintenanceVersion');
    this.masterInstanceName = registerOutput<String>('masterInstanceName');
    this.name = registerOutput<String>('name');
    this.nodeCount = registerOutput<int>('nodeCount');
    this.pointInTimeRestoreContext =
        registerOutput<DatabaseInstancePointInTimeRestoreContext?>(
            'pointInTimeRestoreContext');
    this.privateIpAddress = registerOutput<String>('privateIpAddress');
    this.project = registerOutput<String>('project');
    this.pscServiceAttachmentLink =
        registerOutput<String>('pscServiceAttachmentLink');
    this.publicIpAddress = registerOutput<String>('publicIpAddress');
    this.region = registerOutput<String>('region');
    this.replicaConfiguration =
        registerOutput<DatabaseInstanceReplicaConfiguration>(
            'replicaConfiguration');
    this.replicaNames = registerOutput<List<String>>('replicaNames');
    this.replicationCluster =
        registerOutput<DatabaseInstanceReplicationCluster>(
            'replicationCluster');
    this.restoreBackupContext =
        registerOutput<DatabaseInstanceRestoreBackupContext?>(
            'restoreBackupContext');
    this.rootPassword = registerOutput<String?>('rootPassword');
    this.rootPasswordWo = registerOutput<String?>('rootPasswordWo');
    this.rootPasswordWoVersion =
        registerOutput<String?>('rootPasswordWoVersion');
    this.selfLink = registerOutput<String>('selfLink');
    this.serverCaCerts =
        registerOutput<List<DatabaseInstanceServerCaCert>>('serverCaCerts');
    this.serviceAccountEmailAddress =
        registerOutput<String>('serviceAccountEmailAddress');
    this.settings = registerOutput<DatabaseInstanceSettings>('settings');
  }
}
