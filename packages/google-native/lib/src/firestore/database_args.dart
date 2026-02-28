// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_app_engine_integration_mode.dart';
import 'database_concurrency_mode.dart';
import 'database_delete_protection_state.dart';
import 'database_point_in_time_recovery_enablement.dart';
import 'database_type.dart';

/// {@template pulumi_firestore_v1_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_firestore_v1_database_args_doc}
class DatabaseArgs {
  /// The App Engine integration mode to use for this database.
  final pulumi.Input<DatabaseAppEngineIntegrationMode>?
      appEngineIntegrationMode;

  /// The concurrency control mode to use for this database.
  final pulumi.Input<DatabaseConcurrencyMode>? concurrencyMode;

  /// Required. The ID to use for the database, which will become the final component of the database's resource name. This value should be 4-63 characters. Valid characters are /a-z-/ with first character a letter and the last a letter or a number. Must not be UUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/. "(default)" database id is also valid.
  final pulumi.Input<String> databaseId;

  /// State of delete protection for the database.
  final pulumi.Input<DatabaseDeleteProtectionState>? deleteProtectionState;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;

  /// The location of the database. Available locations are listed at https://cloud.google.com/firestore/docs/locations.
  final pulumi.Input<String>? location;

  /// The resource name of the Database. Format: `projects/{project}/databases/{database}`
  final pulumi.Input<String>? name;

  /// Whether to enable the PITR feature on this database.
  final pulumi.Input<DatabasePointInTimeRecoveryEnablement>?
      pointInTimeRecoveryEnablement;
  final pulumi.Input<String>? project;

  /// The type of the database. See https://cloud.google.com/datastore/docs/firestore-or-datastore for information about how to choose.
  final pulumi.Input<DatabaseType>? type;

  /// Creates a new [DatabaseArgs].
  /// [appEngineIntegrationMode] The App Engine integration mode to use for this database.
  /// [concurrencyMode] The concurrency control mode to use for this database.
  /// [databaseId] Required. The ID to use for the database, which will become the final component of the database's resource name. This value should be 4-63 characters. Valid characters are /a-z-/ with first character a letter and the last a letter or a number. Must not be UUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/. "(default)" database id is also valid.
  /// [deleteProtectionState] State of delete protection for the database.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [location] The location of the database. Available locations are listed at https://cloud.google.com/firestore/docs/locations.
  /// [name] The resource name of the Database. Format: `projects/{project}/databases/{database}`
  /// [pointInTimeRecoveryEnablement] Whether to enable the PITR feature on this database.
  /// [project] Optional.
  /// [type] The type of the database. See https://cloud.google.com/datastore/docs/firestore-or-datastore for information about how to choose.
  DatabaseArgs({
    DatabaseAppEngineIntegrationMode? appEngineIntegrationMode,
    DatabaseConcurrencyMode? concurrencyMode,
    required String databaseId,
    DatabaseDeleteProtectionState? deleteProtectionState,
    String? etag,
    String? location,
    String? name,
    DatabasePointInTimeRecoveryEnablement? pointInTimeRecoveryEnablement,
    String? project,
    DatabaseType? type,
  })  : appEngineIntegrationMode =
            pulumi.Input.asOptionalInput<DatabaseAppEngineIntegrationMode>(
                appEngineIntegrationMode),
        concurrencyMode = pulumi.Input.asOptionalInput<DatabaseConcurrencyMode>(
            concurrencyMode),
        databaseId = pulumi.Input.asInput<String>(databaseId),
        deleteProtectionState =
            pulumi.Input.asOptionalInput<DatabaseDeleteProtectionState>(
                deleteProtectionState),
        etag = pulumi.Input.asOptionalInput<String>(etag),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        pointInTimeRecoveryEnablement =
            pulumi.Input.asOptionalInput<DatabasePointInTimeRecoveryEnablement>(
                pointInTimeRecoveryEnablement),
        project = pulumi.Input.asOptionalInput<String>(project),
        type = pulumi.Input.asOptionalInput<DatabaseType>(type);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appEngineIntegrationModeValue = appEngineIntegrationMode;
    if (appEngineIntegrationModeValue != null) {
      map['appEngineIntegrationMode'] = pulumi.Input.mapOptionalInputValue<
          DatabaseAppEngineIntegrationMode,
          String>(appEngineIntegrationModeValue, (value) => value.value);
    }
    final concurrencyModeValue = concurrencyMode;
    if (concurrencyModeValue != null) {
      map['concurrencyMode'] =
          pulumi.Input.mapOptionalInputValue<DatabaseConcurrencyMode, String>(
              concurrencyModeValue, (value) => value.value);
    }
    map['databaseId'] = databaseId;
    final deleteProtectionStateValue = deleteProtectionState;
    if (deleteProtectionStateValue != null) {
      map['deleteProtectionState'] = pulumi.Input.mapOptionalInputValue<
          DatabaseDeleteProtectionState,
          String>(deleteProtectionStateValue, (value) => value.value);
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pointInTimeRecoveryEnablementValue = pointInTimeRecoveryEnablement;
    if (pointInTimeRecoveryEnablementValue != null) {
      map['pointInTimeRecoveryEnablement'] = pulumi.Input.mapOptionalInputValue<
          DatabasePointInTimeRecoveryEnablement,
          String>(pointInTimeRecoveryEnablementValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = pulumi.Input.mapOptionalInputValue<DatabaseType, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      appEngineIntegrationMode: map['appEngineIntegrationMode'] == null
          ? null
          : DatabaseAppEngineIntegrationMode.fromValue(
              map['appEngineIntegrationMode'] as String),
      concurrencyMode: map['concurrencyMode'] == null
          ? null
          : DatabaseConcurrencyMode.fromValue(map['concurrencyMode'] as String),
      databaseId: map['databaseId'] as String,
      deleteProtectionState: map['deleteProtectionState'] == null
          ? null
          : DatabaseDeleteProtectionState.fromValue(
              map['deleteProtectionState'] as String),
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      pointInTimeRecoveryEnablement:
          map['pointInTimeRecoveryEnablement'] == null
              ? null
              : DatabasePointInTimeRecoveryEnablement.fromValue(
                  map['pointInTimeRecoveryEnablement'] as String),
      project: map['project'] == null ? null : map['project'] as String,
      type: map['type'] == null
          ? null
          : DatabaseType.fromValue(map['type'] as String),
    );
  }
}
