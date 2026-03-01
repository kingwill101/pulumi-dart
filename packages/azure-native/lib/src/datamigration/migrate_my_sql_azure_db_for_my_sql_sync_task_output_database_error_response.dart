// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sync_migration_database_error_event_response.dart';

class MigrateMySqlAzureDbForMySqlSyncTaskOutputDatabaseErrorResponse {
  /// Error message
  final String? errorMessage;
  /// List of error events.
  final List<SyncMigrationDatabaseErrorEventResponse>? events;
  /// Result identifier
  final String id;
  /// Result type
  /// Expected value is 'DatabaseLevelErrorOutput'.
  final String resultType;

  /// Creates a new [MigrateMySqlAzureDbForMySqlSyncTaskOutputDatabaseErrorResponse].
  /// [errorMessage] Error message
  /// [events] List of error events.
  /// [id] Result identifier
  /// [resultType] Result type
  MigrateMySqlAzureDbForMySqlSyncTaskOutputDatabaseErrorResponse({
    this.errorMessage,
    this.events,
    required this.id,
    required this.resultType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessage': ?errorMessage,
      'events': ?events == null ? null : pulumi.Input.encodeList<SyncMigrationDatabaseErrorEventResponse, Map<String, dynamic>>(events!, (value) => value.toMap()),
      'id': id,
      'resultType': resultType,
    };
  }

  factory MigrateMySqlAzureDbForMySqlSyncTaskOutputDatabaseErrorResponse.fromMap(Map<String, dynamic> map) {
    return MigrateMySqlAzureDbForMySqlSyncTaskOutputDatabaseErrorResponse(
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      events: map['events'] == null ? null : pulumi.Input.decodeList<SyncMigrationDatabaseErrorEventResponse>(map['events'], (value) => SyncMigrationDatabaseErrorEventResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      resultType: map['resultType'] as String,
    );
  }
}

