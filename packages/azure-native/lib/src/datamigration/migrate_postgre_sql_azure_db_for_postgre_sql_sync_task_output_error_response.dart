// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';
import 'sync_migration_database_error_event_response.dart';

class MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputErrorResponse {
  /// Migration error
  final ReportableExceptionResponse error;
  /// List of error events
  final List<SyncMigrationDatabaseErrorEventResponse>? events;
  /// Result identifier
  final String id;
  /// Result type
  /// Expected value is 'ErrorOutput'.
  final String resultType;

  /// Creates a new [MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputErrorResponse].
  /// [error] Migration error
  /// [events] List of error events
  /// [id] Result identifier
  /// [resultType] Result type
  MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputErrorResponse({
    required this.error,
    this.events,
    required this.id,
    required this.resultType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': error.toMap(),
      'events': ?events == null ? null : pulumi.Input.encodeList<SyncMigrationDatabaseErrorEventResponse, Map<String, dynamic>>(events!, (value) => value.toMap()),
      'id': id,
      'resultType': resultType,
    };
  }

  factory MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputErrorResponse.fromMap(Map<String, dynamic> map) {
    return MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputErrorResponse(
      error: ReportableExceptionResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      events: map['events'] == null ? null : pulumi.Input.decodeList<SyncMigrationDatabaseErrorEventResponse>(map['events'], (value) => SyncMigrationDatabaseErrorEventResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      resultType: map['resultType'] as String,
    );
  }
}

