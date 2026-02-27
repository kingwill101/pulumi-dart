import 'package:pulumi/pulumi.dart' hide Config;
import 'database_args3.dart';
import 'encryption_config_response15.dart';
import 'encryption_info_response5.dart';
import 'restore_info_response2.dart';

/// Creates a new Cloud Spanner database and starts to prepare it for serving. The returned long-running operation will have a name of the format `/operations/` and can be used to track preparation of the database. The metadata field type is CreateDatabaseMetadata. The response field type is Database, if successful.
/// Auto-naming is currently not supported for this resource.
class Database3 extends CustomResource {
  /// If exists, the time at which the database creation started.
  late final Output<String> createTime;

  /// The dialect of the Cloud Spanner Database.
  late final Output<String> databaseDialect;

  /// The read-write region which contains the database's leader replicas. This is the same as the value of default_leader database option set using DatabaseAdmin.CreateDatabase or DatabaseAdmin.UpdateDatabaseDdl. If not explicitly set, this is empty.
  late final Output<String> defaultLeader;

  /// Earliest timestamp at which older versions of the data can be read. This value is continuously updated by Cloud Spanner and becomes stale the moment it is queried. If you are using this value to recover data, make sure to account for the time from the moment when the value is queried to the moment when you initiate the recovery.
  late final Output<String> earliestVersionTime;

  /// Whether drop protection is enabled for this database. Defaults to false, if not set. For more details, please see how to [prevent accidental database deletion](https://cloud.google.com/spanner/docs/prevent-database-deletion).
  late final Output<bool> enableDropProtection;

  /// For databases that are using customer managed encryption, this field contains the encryption configuration for the database. For databases that are using Google default or other types of encryption, this field is empty.
  late final Output<EncryptionConfigResponse15> encryptionConfig;

  /// For databases that are using customer managed encryption, this field contains the encryption information for the database, such as all Cloud KMS key versions that are in use. The `encryption_status' field inside of each `EncryptionInfo` is not populated. For databases that are using Google default or other types of encryption, this field is empty. This field is propagated lazily from the backend. There might be a delay from when a key version is being used and when it appears in this field.
  late final Output<List<EncryptionInfoResponse5>> encryptionInfo;
  late final Output<String> instanceId;

  /// The name of the database. Values are of the form `projects//instances//databases/`, where `` is as specified in the `CREATE DATABASE` statement. This name can be passed to other API methods to identify the database.
  late final Output<String> name;
  late final Output<String> project;

  /// If true, the database is being updated. If false, there are no ongoing update operations for the database.
  late final Output<bool> reconciling;

  /// Applicable only for restored databases. Contains information about the restore source.
  late final Output<RestoreInfoResponse2> restoreInfo;

  /// The current database state.
  late final Output<String> state;

  /// The period in which Cloud Spanner retains all versions of data for the database. This is the same as the value of version_retention_period database option set using UpdateDatabaseDdl. Defaults to 1 hour, if not set.
  late final Output<String> versionRetentionPeriod;

  Database3(
    String name, {
    DatabaseArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:spanner/v1:Database',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.databaseDialect = registerOutput<String>('databaseDialect');
    this.defaultLeader = registerOutput<String>('defaultLeader');
    this.earliestVersionTime = registerOutput<String>('earliestVersionTime');
    this.enableDropProtection = registerOutput<bool>('enableDropProtection');
    this.encryptionConfig =
        registerOutput<EncryptionConfigResponse15>('encryptionConfig');
    this.encryptionInfo =
        registerOutput<List<EncryptionInfoResponse5>>('encryptionInfo');
    this.instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.restoreInfo = registerOutput<RestoreInfoResponse2>('restoreInfo');
    this.state = registerOutput<String>('state');
    this.versionRetentionPeriod =
        registerOutput<String>('versionRetentionPeriod');
  }
}
