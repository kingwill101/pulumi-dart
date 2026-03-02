// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sync_migration_database_error_event_response.dart';

class MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputDatabaseErrorResponse {
  /// Error message
  final pulumi.Input<String>? errorMessage;
  /// List of error events.
  final pulumi.Input<List<SyncMigrationDatabaseErrorEventResponse>>? events;
  /// Result identifier
  final pulumi.Input<String> id;
  /// Result type
  /// Expected value is 'DatabaseLevelErrorOutput'.
  final pulumi.Input<String> resultType;

  /// Creates a new [MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputDatabaseErrorResponse].
  /// [errorMessage] Error message
  /// [events] List of error events.
  /// [id] Result identifier
  /// [resultType] Result type
  MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputDatabaseErrorResponse({
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

  factory MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputDatabaseErrorResponse.fromMap(Map<String, dynamic> map) {
    return MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputDatabaseErrorResponse(
      errorMessage: map['errorMessage'] == null ? null : (map['errorMessage'] as String).input(),
      events: map['events'] == null ? null : (pulumi.Input.decodeList<SyncMigrationDatabaseErrorEventResponse>(map['events'], (value) => SyncMigrationDatabaseErrorEventResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: (map['id'] as String).input(),
      resultType: (map['resultType'] as String).input(),
    );
  }
}

