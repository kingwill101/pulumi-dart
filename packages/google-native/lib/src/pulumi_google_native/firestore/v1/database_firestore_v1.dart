import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_firestore_v1_args.dart';

/// Create a database.
class DatabaseFirestoreV1 extends pulumi.CustomResource {
  /// The App Engine integration mode to use for this database.
  late final pulumi.Output<String> appEngineIntegrationMode;

  /// The concurrency control mode to use for this database.
  late final pulumi.Output<String> concurrencyMode;

  /// The timestamp at which this database was created. Databases created before 2016 do not populate create_time.
  late final pulumi.Output<String> createTime;

  /// Required. The ID to use for the database, which will become the final component of the database's resource name. This value should be 4-63 characters. Valid characters are /a-z-/ with first character a letter and the last a letter or a number. Must not be UUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/. "(default)" database id is also valid.
  late final pulumi.Output<String> databaseId;

  /// State of delete protection for the database.
  late final pulumi.Output<String> deleteProtectionState;

  /// The earliest timestamp at which older versions of the data can be read from the database. See [version_retention_period] above; this field is populated with `now - version_retention_period`. This value is continuously updated, and becomes stale the moment it is queried. If you are using this value to recover data, make sure to account for the time from the moment when the value is queried to the moment when you initiate the recovery.
  late final pulumi.Output<String> earliestVersionTime;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// The key_prefix for this database. This key_prefix is used, in combination with the project id ("~") to construct the application id that is returned from the Cloud Datastore APIs in Google App Engine first generation runtimes. This value may be empty in which case the appid to use for URL-encoded keys is the project_id (eg: foo instead of v~foo).
  late final pulumi.Output<String> keyPrefix;

  /// The location of the database. Available locations are listed at https://cloud.google.com/firestore/docs/locations.
  late final pulumi.Output<String> location;

  /// The resource name of the Database. Format: `projects/{project}/databases/{database}`
  late final pulumi.Output<String> name;

  /// Whether to enable the PITR feature on this database.
  late final pulumi.Output<String> pointInTimeRecoveryEnablement;
  late final pulumi.Output<String> project;

  /// The type of the database. See https://cloud.google.com/datastore/docs/firestore-or-datastore for information about how to choose.
  late final pulumi.Output<String> type;

  /// The system-generated UUID4 for this Database.
  late final pulumi.Output<String> uid;

  /// The timestamp at which this database was most recently updated. Note this only includes updates to the database resource and not data contained by the database.
  late final pulumi.Output<String> updateTime;

  /// The period during which past versions of data are retained in the database. Any read or query can specify a `read_time` within this window, and will read the state of the database at that time. If the PITR feature is enabled, the retention period is 7 days. Otherwise, the retention period is 1 hour.
  late final pulumi.Output<String> versionRetentionPeriod;

  DatabaseFirestoreV1(
    String name, {
    DatabaseFirestoreV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:firestore/v1:Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appEngineIntegrationMode =
        registerOutput<String>('appEngineIntegrationMode');
    this.concurrencyMode = registerOutput<String>('concurrencyMode');
    this.createTime = registerOutput<String>('createTime');
    this.databaseId = registerOutput<String>('databaseId');
    this.deleteProtectionState =
        registerOutput<String>('deleteProtectionState');
    this.earliestVersionTime = registerOutput<String>('earliestVersionTime');
    this.etag = registerOutput<String>('etag');
    this.keyPrefix = registerOutput<String>('keyPrefix');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.pointInTimeRecoveryEnablement =
        registerOutput<String>('pointInTimeRecoveryEnablement');
    this.project = registerOutput<String>('project');
    this.type = registerOutput<String>('type');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.versionRetentionPeriod =
        registerOutput<String>('versionRetentionPeriod');
  }
}
