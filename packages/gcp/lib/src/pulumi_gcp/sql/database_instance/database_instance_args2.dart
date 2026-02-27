// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../database_instance_clone/database_instance_clone.dart';
import '../database_instance_point_in_time_restore_context/database_instance_point_in_time_restore_context.dart';
import '../database_instance_replica_configuration/database_instance_replica_configuration.dart';
import '../database_instance_replication_cluster/database_instance_replication_cluster.dart';
import '../database_instance_restore_backup_context/database_instance_restore_backup_context.dart';
import '../database_instance_settings/database_instance_settings.dart';

/// The set of arguments for DatabaseInstance.
class DatabaseInstanceArgs2 {
  /// The name of the BackupDR backup to restore from.
  final Input<String>? backupdrBackup;

  /// The context needed to create this instance as a clone of another instance. When this field is set during
  /// resource creation, this provider will attempt to clone another instance as indicated in the context. The
  /// configuration is detailed below.
  final Input<DatabaseInstanceClone>? clone;

  /// The MySQL, PostgreSQL or
  /// SQL Server version to use. Supported values include `MYSQL_5_6`,
  /// `MYSQL_5_7`, `MYSQL_8_0`, `MYSQL_8_4`, `POSTGRES_9_6`,`POSTGRES_10`, `POSTGRES_11`,
  /// `POSTGRES_12`, `POSTGRES_13`, `POSTGRES_14`, `POSTGRES_15`, `POSTGRES_16`, `POSTGRES_17`,
  /// `SQLSERVER_2017_STANDARD`, `SQLSERVER_2017_ENTERPRISE`, `SQLSERVER_2017_EXPRESS`, `SQLSERVER_2017_WEB`.
  /// `SQLSERVER_2019_STANDARD`, `SQLSERVER_2019_ENTERPRISE`, `SQLSERVER_2019_EXPRESS`,
  /// `SQLSERVER_2019_WEB`.
  /// [Database Version Policies](https://cloud.google.com/sql/docs/db-versions)
  /// includes an up-to-date reference of supported versions.
  final Input<String> databaseVersion;

  /// Whether or not to allow the provider to destroy the instance. Unless this field is set to false
  /// in state, a `destroy` or `update` command that deletes the instance will fail. Defaults to `true`.
  ///
  /// > **NOTE:** This flag only protects instances from deletion within Pulumi. To protect your instances from accidental deletion across all surfaces (API, gcloud, Cloud Console and Pulumi), use the API flag `settings.deletion_protection_enabled`.
  final Input<bool>? deletionProtection;

  /// The full path to the encryption key used for the CMEK disk encryption.  Setting
  /// up disk encryption currently requires manual steps outside of this provider.
  /// The provided key must be in the same region as the SQL instance.  In order
  /// to use this feature, a special kind of service account must be created and
  /// granted permission on this key.  This step can currently only be done
  /// manually, please see [this step](https://cloud.google.com/sql/docs/mysql/configure-cmek#service-account).
  /// That service account needs the `Cloud KMS > Cloud KMS CryptoKey Encrypter/Decrypter` role on your
  /// key - please see [this step](https://cloud.google.com/sql/docs/mysql/configure-cmek#grantkey).
  final Input<String>? encryptionKeyName;

  /// The description of final backup. Only set this field when `final_backup_config.enabled` is true.
  final Input<String>? finalBackupDescription;

  /// The type of the instance. See [API reference for SqlInstanceType](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1/instances#SqlInstanceType) for supported values.
  final Input<String>? instanceType;

  /// The current software version on the instance. This attribute can not be set during creation. Refer to `available_maintenance_versions` attribute to see what `maintenance_version` are available for upgrade. When this attribute gets updated, it will cause an instance restart. Setting a `maintenance_version` value that is older than the current one on the instance will be ignored.
  final Input<String>? maintenanceVersion;

  /// The name of the existing instance that will
  /// act as the master in the replication setup. Note, this requires the master to
  /// have `binary_log_enabled` set, as well as existing backups.
  final Input<String>? masterInstanceName;

  /// The name of the instance. If the name is left
  /// blank, the provider will randomly generate one when the instance is first
  /// created. This is done because after a name is used, it cannot be reused for
  /// up to [one week](https://cloud.google.com/sql/docs/delete-instance).
  final Input<String>? name;

  /// For a read pool instance, the number of nodes in the read pool. For read pools with auto scaling enabled, this field is read only.
  final Input<int>? nodeCount;

  /// Configuration for creating a new instance using point-in-time-restore from backupdr backup.
  final Input<DatabaseInstancePointInTimeRestoreContext>?
      pointInTimeRestoreContext;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// The region the instance will sit in. If a region is not provided in the resource definition,
  /// the provider region will be used instead.
  ///
  /// - - -
  final Input<String>? region;

  /// The configuration for replication. The
  /// configuration is detailed below.
  final Input<DatabaseInstanceReplicaConfiguration>? replicaConfiguration;

  /// List of replica names. Can be updated.
  final Input<List<String>>? replicaNames;

  /// A primary instance and disaster recovery replica pair. Applicable to MySQL and PostgreSQL. This field can be set if the primary has psa_write_endpoint set or both the primary and replica are created.
  final Input<DatabaseInstanceReplicationCluster>? replicationCluster;

  /// The context needed to restore the database to a backup run. This field will
  /// cause the provider to trigger the database to restore from the backup run indicated. The configuration is detailed below.
  /// **NOTE:** Restoring from a backup is an imperative action and not recommended via this provider. Adding or modifying this
  /// block during resource creation/update will trigger the restore action after the resource is created/updated.
  final Input<DatabaseInstanceRestoreBackupContext>? restoreBackupContext;

  /// Initial root password. Can be updated. Required for MS SQL Server.
  final Input<String>? rootPassword;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Initial root password. Can be updated. Required for MS SQL Server. **Note**: This property is write-only and will not be read from the API.
  ///
  /// > **Note:** One of `root_password` or `root_password_wo` can only be set.
  final Input<String>? rootPasswordWo;

  /// Triggers update of `root_password_wo` write-only. Increment this value when an update to `root_password_wo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final Input<String>? rootPasswordWoVersion;

  /// The settings to use for the database. The
  /// configuration is detailed below. Required if `clone` is not set.
  final Input<DatabaseInstanceSettings>? settings;

  DatabaseInstanceArgs2({
    this.backupdrBackup,
    this.clone,
    required this.databaseVersion,
    this.deletionProtection,
    this.encryptionKeyName,
    this.finalBackupDescription,
    this.instanceType,
    this.maintenanceVersion,
    this.masterInstanceName,
    this.name,
    this.nodeCount,
    this.pointInTimeRestoreContext,
    this.project,
    this.region,
    this.replicaConfiguration,
    this.replicaNames,
    this.replicationCluster,
    this.restoreBackupContext,
    this.rootPassword,
    this.rootPasswordWo,
    this.rootPasswordWoVersion,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backupdrBackupValue = backupdrBackup;
    if (backupdrBackupValue != null) {
      map['backupdrBackup'] = backupdrBackupValue;
    }
    final cloneValue = clone;
    if (cloneValue != null) {
      map['clone'] = Input.mapOptionalInputValue<DatabaseInstanceClone,
          Map<String, dynamic>>(cloneValue, (value) => value.toMap());
    }
    map['databaseVersion'] = databaseVersion;
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final encryptionKeyNameValue = encryptionKeyName;
    if (encryptionKeyNameValue != null) {
      map['encryptionKeyName'] = encryptionKeyNameValue;
    }
    final finalBackupDescriptionValue = finalBackupDescription;
    if (finalBackupDescriptionValue != null) {
      map['finalBackupDescription'] = finalBackupDescriptionValue;
    }
    final instanceTypeValue = instanceType;
    if (instanceTypeValue != null) {
      map['instanceType'] = instanceTypeValue;
    }
    final maintenanceVersionValue = maintenanceVersion;
    if (maintenanceVersionValue != null) {
      map['maintenanceVersion'] = maintenanceVersionValue;
    }
    final masterInstanceNameValue = masterInstanceName;
    if (masterInstanceNameValue != null) {
      map['masterInstanceName'] = masterInstanceNameValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nodeCountValue = nodeCount;
    if (nodeCountValue != null) {
      map['nodeCount'] = nodeCountValue;
    }
    final pointInTimeRestoreContextValue = pointInTimeRestoreContext;
    if (pointInTimeRestoreContextValue != null) {
      map['pointInTimeRestoreContext'] = Input.mapOptionalInputValue<
              DatabaseInstancePointInTimeRestoreContext, Map<String, dynamic>>(
          pointInTimeRestoreContextValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final replicaConfigurationValue = replicaConfiguration;
    if (replicaConfigurationValue != null) {
      map['replicaConfiguration'] = Input.mapOptionalInputValue<
              DatabaseInstanceReplicaConfiguration, Map<String, dynamic>>(
          replicaConfigurationValue, (value) => value.toMap());
    }
    final replicaNamesValue = replicaNames;
    if (replicaNamesValue != null) {
      map['replicaNames'] = replicaNamesValue;
    }
    final replicationClusterValue = replicationCluster;
    if (replicationClusterValue != null) {
      map['replicationCluster'] = Input.mapOptionalInputValue<
              DatabaseInstanceReplicationCluster, Map<String, dynamic>>(
          replicationClusterValue, (value) => value.toMap());
    }
    final restoreBackupContextValue = restoreBackupContext;
    if (restoreBackupContextValue != null) {
      map['restoreBackupContext'] = Input.mapOptionalInputValue<
              DatabaseInstanceRestoreBackupContext, Map<String, dynamic>>(
          restoreBackupContextValue, (value) => value.toMap());
    }
    final rootPasswordValue = rootPassword;
    if (rootPasswordValue != null) {
      map['rootPassword'] = rootPasswordValue;
    }
    final rootPasswordWoValue = rootPasswordWo;
    if (rootPasswordWoValue != null) {
      map['rootPasswordWo'] = rootPasswordWoValue;
    }
    final rootPasswordWoVersionValue = rootPasswordWoVersion;
    if (rootPasswordWoVersionValue != null) {
      map['rootPasswordWoVersion'] = rootPasswordWoVersionValue;
    }
    final settingsValue = settings;
    if (settingsValue != null) {
      map['settings'] = Input.mapOptionalInputValue<DatabaseInstanceSettings,
          Map<String, dynamic>>(settingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DatabaseInstanceArgs2.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceArgs2(
      backupdrBackup: Input.asOptionalInput<String>(map['backupdrBackup']),
      clone: Input.asOptionalInput<DatabaseInstanceClone>(map['clone']),
      databaseVersion: Input.asInput<String>(map['databaseVersion']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      encryptionKeyName:
          Input.asOptionalInput<String>(map['encryptionKeyName']),
      finalBackupDescription:
          Input.asOptionalInput<String>(map['finalBackupDescription']),
      instanceType: Input.asOptionalInput<String>(map['instanceType']),
      maintenanceVersion:
          Input.asOptionalInput<String>(map['maintenanceVersion']),
      masterInstanceName:
          Input.asOptionalInput<String>(map['masterInstanceName']),
      name: Input.asOptionalInput<String>(map['name']),
      nodeCount: Input.asOptionalInput<int>(map['nodeCount']),
      pointInTimeRestoreContext:
          Input.asOptionalInput<DatabaseInstancePointInTimeRestoreContext>(
              map['pointInTimeRestoreContext']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      replicaConfiguration:
          Input.asOptionalInput<DatabaseInstanceReplicaConfiguration>(
              map['replicaConfiguration']),
      replicaNames: Input.asOptionalInput<List<String>>(map['replicaNames']),
      replicationCluster:
          Input.asOptionalInput<DatabaseInstanceReplicationCluster>(
              map['replicationCluster']),
      restoreBackupContext:
          Input.asOptionalInput<DatabaseInstanceRestoreBackupContext>(
              map['restoreBackupContext']),
      rootPassword: Input.asOptionalInput<String>(map['rootPassword']),
      rootPasswordWo: Input.asOptionalInput<String>(map['rootPasswordWo']),
      rootPasswordWoVersion:
          Input.asOptionalInput<String>(map['rootPasswordWoVersion']),
      settings:
          Input.asOptionalInput<DatabaseInstanceSettings>(map['settings']),
    );
  }
}
