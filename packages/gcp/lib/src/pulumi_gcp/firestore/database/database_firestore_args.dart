// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../database_cmek_config/database_cmek_config.dart';

/// The set of arguments for Database.
class DatabaseFirestoreArgs {
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

  DatabaseFirestoreArgs({
    this.appEngineIntegrationMode,
    this.cmekConfig,
    this.concurrencyMode,
    this.databaseEdition,
    this.deleteProtectionState,
    this.deletionPolicy,
    required this.locationId,
    this.name,
    this.pointInTimeRecoveryEnablement,
    this.project,
    this.tags,
    required this.type,
  });

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

  factory DatabaseFirestoreArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseFirestoreArgs(
      appEngineIntegrationMode:
          pulumi.Input.asOptionalInput<String>(map['appEngineIntegrationMode']),
      cmekConfig:
          pulumi.Input.asOptionalInput<DatabaseCmekConfig>(map['cmekConfig']),
      concurrencyMode:
          pulumi.Input.asOptionalInput<String>(map['concurrencyMode']),
      databaseEdition:
          pulumi.Input.asOptionalInput<String>(map['databaseEdition']),
      deleteProtectionState:
          pulumi.Input.asOptionalInput<String>(map['deleteProtectionState']),
      deletionPolicy:
          pulumi.Input.asOptionalInput<String>(map['deletionPolicy']),
      locationId: pulumi.Input.asInput<String>(map['locationId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      pointInTimeRecoveryEnablement: pulumi.Input.asOptionalInput<String>(
          map['pointInTimeRecoveryEnablement']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
