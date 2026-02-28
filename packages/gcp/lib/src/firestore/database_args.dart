// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_cmek_config.dart';

/// {@template pulumi_firestore_database_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_firestore_database_database_args_doc}
class DatabaseArgs {
  /// The App Engine integration mode to use for this database.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? appEngineIntegrationMode;

  /// The CMEK (Customer Managed Encryption Key) configuration for a Firestore
  /// database. If not present, the database is secured by the default Google
  /// encryption key.
  /// Structure is documented below.
  final pulumi.Input<DatabaseCmekConfig>? cmekConfig;

  /// The concurrency control mode to use for this database.
  /// Possible values are: `OPTIMISTIC`, `PESSIMISTIC`, `OPTIMISTIC_WITH_ENTITY_GROUPS`.
  final pulumi.Input<String>? concurrencyMode;

  /// The database edition.
  /// Possible values are: `STANDARD`, `ENTERPRISE`.
  final pulumi.Input<String>? databaseEdition;
  final pulumi.Input<String>? deleteProtectionState;
  final pulumi.Input<String>? deletionPolicy;

  /// The location of the database. Available locations are listed at
  /// https://cloud.google.com/firestore/docs/locations.
  final pulumi.Input<String> locationId;

  /// The ID to use for the database, which will become the final
  /// component of the database's resource name. This value should be 4-63
  /// characters. Valid characters are /[a-z][0-9]-/ with first character
  /// a letter and the last a letter or a number. Must not be
  /// UUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/.
  /// "(default)" database id is also valid.
  final pulumi.Input<String>? name;

  /// Whether to enable the PITR feature on this database.
  /// If `POINT_IN_TIME_RECOVERY_ENABLED` is selected, reads are supported on selected versions of the data from within the past 7 days.
  /// versionRetentionPeriod and earliestVersionTime can be used to determine the supported versions. These include reads against any timestamp within the past hour
  /// and reads against 1-minute snapshots beyond 1 hour and within 7 days.
  /// If `POINT_IN_TIME_RECOVERY_DISABLED` is selected, reads are supported on any version of the data from within the past 1 hour.
  /// Default value is `POINT_IN_TIME_RECOVERY_DISABLED`.
  /// Possible values are: `POINT_IN_TIME_RECOVERY_ENABLED`, `POINT_IN_TIME_RECOVERY_DISABLED`.
  final pulumi.Input<String>? pointInTimeRecoveryEnablement;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Input only. A map of resource manager tags. Resource manager tag keys
  /// and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456.
  /// The field is ignored when empty. The field is immutable and causes
  /// resource replacement when mutated. To apply tags to an existing resource, see
  /// the `gcp.tags.TagValue` resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// The type of the database.
  /// See https://cloud.google.com/datastore/docs/firestore-or-datastore
  /// for information about how to choose.
  /// Possible values are: `FIRESTORE_NATIVE`, `DATASTORE_MODE`.
  final pulumi.Input<String> type;

  /// Creates a new [DatabaseArgs].
  /// [appEngineIntegrationMode] The App Engine integration mode to use for this database.
  /// [cmekConfig] The CMEK (Customer Managed Encryption Key) configuration for a Firestore
  /// [concurrencyMode] The concurrency control mode to use for this database.
  /// [databaseEdition] The database edition.
  /// [deleteProtectionState] Optional.
  /// [deletionPolicy] Optional.
  /// [locationId] The location of the database. Available locations are listed at
  /// [name] The ID to use for the database, which will become the final
  /// [pointInTimeRecoveryEnablement] Whether to enable the PITR feature on this database.
  /// [project] The ID of the project in which the resource belongs.
  /// [tags] Input only. A map of resource manager tags. Resource manager tag keys
  /// [type] The type of the database.
  DatabaseArgs({
    String? appEngineIntegrationMode,
    DatabaseCmekConfig? cmekConfig,
    String? concurrencyMode,
    String? databaseEdition,
    String? deleteProtectionState,
    String? deletionPolicy,
    required String locationId,
    String? name,
    String? pointInTimeRecoveryEnablement,
    String? project,
    Map<String, String>? tags,
    required String type,
  })  : appEngineIntegrationMode =
            pulumi.Input.asOptionalInput<String>(appEngineIntegrationMode),
        cmekConfig =
            pulumi.Input.asOptionalInput<DatabaseCmekConfig>(cmekConfig),
        concurrencyMode = pulumi.Input.asOptionalInput<String>(concurrencyMode),
        databaseEdition = pulumi.Input.asOptionalInput<String>(databaseEdition),
        deleteProtectionState =
            pulumi.Input.asOptionalInput<String>(deleteProtectionState),
        deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
        locationId = pulumi.Input.asInput<String>(locationId),
        name = pulumi.Input.asOptionalInput<String>(name),
        pointInTimeRecoveryEnablement =
            pulumi.Input.asOptionalInput<String>(pointInTimeRecoveryEnablement),
        project = pulumi.Input.asOptionalInput<String>(project),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appEngineIntegrationModeValue = appEngineIntegrationMode;
    if (appEngineIntegrationModeValue != null) {
      map['appEngineIntegrationMode'] = appEngineIntegrationModeValue;
    }
    final cmekConfigValue = cmekConfig;
    if (cmekConfigValue != null) {
      map['cmekConfig'] = pulumi.Input.mapOptionalInputValue<DatabaseCmekConfig,
          Map<String, dynamic>>(cmekConfigValue, (value) => value.toMap());
    }
    final concurrencyModeValue = concurrencyMode;
    if (concurrencyModeValue != null) {
      map['concurrencyMode'] = concurrencyModeValue;
    }
    final databaseEditionValue = databaseEdition;
    if (databaseEditionValue != null) {
      map['databaseEdition'] = databaseEditionValue;
    }
    final deleteProtectionStateValue = deleteProtectionState;
    if (deleteProtectionStateValue != null) {
      map['deleteProtectionState'] = deleteProtectionStateValue;
    }
    final deletionPolicyValue = deletionPolicy;
    if (deletionPolicyValue != null) {
      map['deletionPolicy'] = deletionPolicyValue;
    }
    map['locationId'] = locationId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pointInTimeRecoveryEnablementValue = pointInTimeRecoveryEnablement;
    if (pointInTimeRecoveryEnablementValue != null) {
      map['pointInTimeRecoveryEnablement'] = pointInTimeRecoveryEnablementValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['type'] = type;
    return map;
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      appEngineIntegrationMode: map['appEngineIntegrationMode'] == null
          ? null
          : map['appEngineIntegrationMode'] as String,
      cmekConfig: map['cmekConfig'] == null
          ? null
          : DatabaseCmekConfig.fromMap(
              (map['cmekConfig'] as Map).cast<String, dynamic>()),
      concurrencyMode: map['concurrencyMode'] == null
          ? null
          : map['concurrencyMode'] as String,
      databaseEdition: map['databaseEdition'] == null
          ? null
          : map['databaseEdition'] as String,
      deleteProtectionState: map['deleteProtectionState'] == null
          ? null
          : map['deleteProtectionState'] as String,
      deletionPolicy: map['deletionPolicy'] == null
          ? null
          : map['deletionPolicy'] as String,
      locationId: map['locationId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      pointInTimeRecoveryEnablement:
          map['pointInTimeRecoveryEnablement'] == null
              ? null
              : map['pointInTimeRecoveryEnablement'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}
