import 'package:pulumi/pulumi.dart';
import '../database_cmek_config/database_cmek_config.dart';
import 'database_args2.dart';

/// A Cloud Firestore Database.
///
/// If you wish to use Firestore with App Engine, use the
/// `gcp.appengine.Application`
/// resource instead. If you were previously using the `gcp.appengine.Application` resource exclusively for managing a Firestore database
/// and would like to use the `gcp.firestore.Database` resource instead, please follow the instructions
/// [here](https://cloud.google.com/firestore/docs/app-engine-requirement).
///
///
/// To get more information about Database, see:
///
/// * [API documentation](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/firestore/docs/)
///
/// ## Example Usage
///
/// ### Firestore Default Database
///
///
///
/// ### Firestore Database
///
///
///
/// ### Firestore Database With Tags
///
///
///
/// ### Firestore Cmek Database
///
///
///
/// ### Firestore Default Database In Datastore Mode
///
///
///
/// ### Firestore Database In Datastore Mode
///
///
///
/// ### Firestore Cmek Database In Datastore Mode
///
///
///
/// ### Firestore Database Enterprise
///
///
///
///
/// ## Import
///
/// Database can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/databases/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Database can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firestore/database:Database default projects/{{project}}/databases/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firestore/database:Database default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firestore/database:Database default {{name}}
/// ```
class Database2 extends CustomResource {
  /// The App Engine integration mode to use for this database.
  /// Possible values are: `ENABLED`, `DISABLED`.
  late final Output<String> appEngineIntegrationMode;

  /// The CMEK (Customer Managed Encryption Key) configuration for a Firestore
  /// database. If not present, the database is secured by the default Google
  /// encryption key.
  /// Structure is documented below.
  late final Output<DatabaseCmekConfig?> cmekConfig;

  /// The concurrency control mode to use for this database.
  /// Possible values are: `OPTIMISTIC`, `PESSIMISTIC`, `OPTIMISTIC_WITH_ENTITY_GROUPS`.
  late final Output<String> concurrencyMode;

  /// Output only. The timestamp at which this database was created.
  late final Output<String> createTime;

  /// The database edition.
  /// Possible values are: `STANDARD`, `ENTERPRISE`.
  late final Output<String> databaseEdition;
  late final Output<String> deleteProtectionState;
  late final Output<String?> deletionPolicy;

  /// Output only. The earliest timestamp at which older versions of the data can be read from the database. See versionRetentionPeriod above; this field is populated with now - versionRetentionPeriod.
  /// This value is continuously updated, and becomes stale the moment it is queried. If you are using this value to recover data, make sure to account for the time from the moment when the value is queried to the moment when you initiate the recovery.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> earliestVersionTime;

  /// Output only. This checksum is computed by the server based on the value of other fields,
  /// and may be sent on update and delete requests to ensure the client has an
  /// up-to-date value before proceeding.
  late final Output<String> etag;

  /// Output only. The keyPrefix for this database.
  /// This keyPrefix is used, in combination with the project id ("~") to construct the application id
  /// that is returned from the Cloud Datastore APIs in Google App Engine first generation runtimes.
  /// This value may be empty in which case the appid to use for URL-encoded keys is the project_id (eg: foo instead of v~foo).
  late final Output<String> keyPrefix;

  /// The location of the database. Available locations are listed at
  /// https://cloud.google.com/firestore/docs/locations.
  late final Output<String> locationId;

  /// The ID to use for the database, which will become the final
  /// component of the database's resource name. This value should be 4-63
  /// characters. Valid characters are /[a-z][0-9]-/ with first character
  /// a letter and the last a letter or a number. Must not be
  /// UUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/.
  /// "(default)" database id is also valid.
  late final Output<String> name;

  /// Whether to enable the PITR feature on this database.
  /// If `POINT_IN_TIME_RECOVERY_ENABLED` is selected, reads are supported on selected versions of the data from within the past 7 days.
  /// versionRetentionPeriod and earliestVersionTime can be used to determine the supported versions. These include reads against any timestamp within the past hour
  /// and reads against 1-minute snapshots beyond 1 hour and within 7 days.
  /// If `POINT_IN_TIME_RECOVERY_DISABLED` is selected, reads are supported on any version of the data from within the past 1 hour.
  /// Default value is `POINT_IN_TIME_RECOVERY_DISABLED`.
  /// Possible values are: `POINT_IN_TIME_RECOVERY_ENABLED`, `POINT_IN_TIME_RECOVERY_DISABLED`.
  late final Output<String?> pointInTimeRecoveryEnablement;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Input only. A map of resource manager tags. Resource manager tag keys
  /// and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456.
  /// The field is ignored when empty. The field is immutable and causes
  /// resource replacement when mutated. To apply tags to an existing resource, see
  /// the `gcp.tags.TagValue` resource.
  late final Output<Map<String, String>?> tags;

  /// The type of the database.
  /// See https://cloud.google.com/datastore/docs/firestore-or-datastore
  /// for information about how to choose.
  /// Possible values are: `FIRESTORE_NATIVE`, `DATASTORE_MODE`.
  late final Output<String> type;

  /// Output only. The system-generated UUID4 for this Database.
  late final Output<String> uid;

  /// Output only. The timestamp at which this database was most recently updated.
  late final Output<String> updateTime;

  /// Output only. The period during which past versions of data are retained in the database.
  /// Any read or query can specify a readTime within this window, and will read the state of the database at that time.
  /// If the PITR feature is enabled, the retention period is 7 days. Otherwise, the retention period is 1 hour.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  late final Output<String> versionRetentionPeriod;

  Database2(
    String name, {
    DatabaseArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:firestore/database:Database',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appEngineIntegrationMode =
        registerOutput<String>('appEngineIntegrationMode');
    this.cmekConfig = registerOutput<DatabaseCmekConfig?>('cmekConfig');
    this.concurrencyMode = registerOutput<String>('concurrencyMode');
    this.createTime = registerOutput<String>('createTime');
    this.databaseEdition = registerOutput<String>('databaseEdition');
    this.deleteProtectionState =
        registerOutput<String>('deleteProtectionState');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.earliestVersionTime = registerOutput<String>('earliestVersionTime');
    this.etag = registerOutput<String>('etag');
    this.keyPrefix = registerOutput<String>('keyPrefix');
    this.locationId = registerOutput<String>('locationId');
    this.name = registerOutput<String>('name');
    this.pointInTimeRecoveryEnablement =
        registerOutput<String?>('pointInTimeRecoveryEnablement');
    this.project = registerOutput<String>('project');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.versionRetentionPeriod =
        registerOutput<String>('versionRetentionPeriod');
  }
}
