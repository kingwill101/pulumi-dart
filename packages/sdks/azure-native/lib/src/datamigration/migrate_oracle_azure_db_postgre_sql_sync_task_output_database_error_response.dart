// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sync_migration_database_error_event_response.dart';

class MigrateOracleAzureDbPostgreSqlSyncTaskOutputDatabaseErrorResponse {
  /// Error message
  final pulumi.Input<String?>? errorMessage;
  /// List of error events.
  final pulumi.Input<List<SyncMigrationDatabaseErrorEventResponse>?>? events;
  /// Result identifier
  final pulumi.Input<String> id;
  /// Result type
  /// Expected value is 'DatabaseLevelErrorOutput'.
  final pulumi.Input<String> resultType;

  /// Creates a new [MigrateOracleAzureDbPostgreSqlSyncTaskOutputDatabaseErrorResponse].
  /// [errorMessage] Error message
  /// [events] List of error events.
  /// [id] Result identifier
  /// [resultType] Result type
  const MigrateOracleAzureDbPostgreSqlSyncTaskOutputDatabaseErrorResponse({
    this.errorMessage,
    this.events,
    required this.id,
    required this.resultType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessage': ?errorMessage,
      'events': ?pulumi.Input.mapOptionalInputValue<List<SyncMigrationDatabaseErrorEventResponse>, List<Map<String, dynamic>>>(events, (value) => pulumi.Input.encodeList<SyncMigrationDatabaseErrorEventResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'resultType': resultType,
    };
  }

  factory MigrateOracleAzureDbPostgreSqlSyncTaskOutputDatabaseErrorResponse.fromMap(Map<String, dynamic> map) {
    return MigrateOracleAzureDbPostgreSqlSyncTaskOutputDatabaseErrorResponse(
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      events: (() { final guardedValue = map['events']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SyncMigrationDatabaseErrorEventResponse>(guardedValue, (value) => SyncMigrationDatabaseErrorEventResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      resultType: pulumi.Input.fromValue(map['resultType'] as String),
    );
  }
}
