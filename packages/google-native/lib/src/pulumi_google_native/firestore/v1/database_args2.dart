// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'database_app_engine_integration_mode.dart';
import 'database_concurrency_mode.dart';
import 'database_delete_protection_state.dart';
import 'database_point_in_time_recovery_enablement.dart';
import 'database_type4.dart';

/// The set of arguments for Database.
class DatabaseArgs2 {
  /// The App Engine integration mode to use for this database.
  final Input<DatabaseAppEngineIntegrationMode>? appEngineIntegrationMode;

  /// The concurrency control mode to use for this database.
  final Input<DatabaseConcurrencyMode>? concurrencyMode;

  /// Required. The ID to use for the database, which will become the final component of the database's resource name. This value should be 4-63 characters. Valid characters are /a-z-/ with first character a letter and the last a letter or a number. Must not be UUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/. "(default)" database id is also valid.
  final Input<String> databaseId;

  /// State of delete protection for the database.
  final Input<DatabaseDeleteProtectionState>? deleteProtectionState;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final Input<String>? etag;

  /// The location of the database. Available locations are listed at https://cloud.google.com/firestore/docs/locations.
  final Input<String>? location;

  /// The resource name of the Database. Format: `projects/{project}/databases/{database}`
  final Input<String>? name;

  /// Whether to enable the PITR feature on this database.
  final Input<DatabasePointInTimeRecoveryEnablement>?
      pointInTimeRecoveryEnablement;
  final Input<String>? project;

  /// The type of the database. See https://cloud.google.com/datastore/docs/firestore-or-datastore for information about how to choose.
  final Input<DatabaseType4>? type;

  DatabaseArgs2({
    this.appEngineIntegrationMode,
    this.concurrencyMode,
    required this.databaseId,
    this.deleteProtectionState,
    this.etag,
    this.location,
    this.name,
    this.pointInTimeRecoveryEnablement,
    this.project,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appEngineIntegrationModeValue = appEngineIntegrationMode;
    if (appEngineIntegrationModeValue != null) {
      map['appEngineIntegrationMode'] =
          Input.mapOptionalInputValue<DatabaseAppEngineIntegrationMode, String>(
              appEngineIntegrationModeValue, (value) => value.value);
    }
    final concurrencyModeValue = concurrencyMode;
    if (concurrencyModeValue != null) {
      map['concurrencyMode'] =
          Input.mapOptionalInputValue<DatabaseConcurrencyMode, String>(
              concurrencyModeValue, (value) => value.value);
    }
    map['databaseId'] = databaseId;
    final deleteProtectionStateValue = deleteProtectionState;
    if (deleteProtectionStateValue != null) {
      map['deleteProtectionState'] =
          Input.mapOptionalInputValue<DatabaseDeleteProtectionState, String>(
              deleteProtectionStateValue, (value) => value.value);
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
      map['pointInTimeRecoveryEnablement'] = Input.mapOptionalInputValue<
          DatabasePointInTimeRecoveryEnablement,
          String>(pointInTimeRecoveryEnablementValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.mapOptionalInputValue<DatabaseType4, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory DatabaseArgs2.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs2(
      appEngineIntegrationMode:
          Input.asOptionalInput<DatabaseAppEngineIntegrationMode>(
              map['appEngineIntegrationMode']),
      concurrencyMode: Input.asOptionalInput<DatabaseConcurrencyMode>(
          map['concurrencyMode']),
      databaseId: Input.asInput<String>(map['databaseId']),
      deleteProtectionState:
          Input.asOptionalInput<DatabaseDeleteProtectionState>(
              map['deleteProtectionState']),
      etag: Input.asOptionalInput<String>(map['etag']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      pointInTimeRecoveryEnablement:
          Input.asOptionalInput<DatabasePointInTimeRecoveryEnablement>(
              map['pointInTimeRecoveryEnablement']),
      project: Input.asOptionalInput<String>(map['project']),
      type: Input.asOptionalInput<DatabaseType4>(map['type']),
    );
  }
}
