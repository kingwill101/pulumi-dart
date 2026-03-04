// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_postgre_sql_azure_db_for_postgre_sql_sync_database_input_response.dart';
import 'postgre_sql_connection_info_response.dart';

/// Input for the task that migrates PostgreSQL databases to Azure Database for PostgreSQL for online migrations
class MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInputResponse {
  /// encrypted key for secure fields
  final pulumi.Input<String>? encryptedKeyForSecureFields;

  /// Databases to migrate
  final pulumi.Input<
    List<MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInputResponse>
  >
  selectedDatabases;

  /// Connection information for source PostgreSQL
  final pulumi.Input<PostgreSqlConnectionInfoResponse> sourceConnectionInfo;

  /// Migration start time
  final pulumi.Input<String> startedOn;

  /// Connection information for target Azure Database for PostgreSQL
  final pulumi.Input<PostgreSqlConnectionInfoResponse> targetConnectionInfo;

  /// Creates a new [MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInputResponse].
  /// [encryptedKeyForSecureFields] encrypted key for secure fields
  /// [selectedDatabases] Databases to migrate
  /// [sourceConnectionInfo] Connection information for source PostgreSQL
  /// [startedOn] Migration start time
  /// [targetConnectionInfo] Connection information for target Azure Database for PostgreSQL
  MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInputResponse({
    this.encryptedKeyForSecureFields,
    required this.selectedDatabases,
    required this.sourceConnectionInfo,
    required this.startedOn,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptedKeyForSecureFields': ?encryptedKeyForSecureFields,
      'selectedDatabases':
          pulumi.Input.mapInputValue<
            List<
              MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInputResponse
            >,
            List<Map<String, dynamic>>
          >(
            selectedDatabases,
            (value) =>
                pulumi.Input.encodeList<
                  MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInputResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sourceConnectionInfo':
          pulumi.Input.mapInputValue<
            PostgreSqlConnectionInfoResponse,
            Map<String, dynamic>
          >(sourceConnectionInfo, (value) => value.toMap()),
      'startedOn': startedOn,
      'targetConnectionInfo':
          pulumi.Input.mapInputValue<
            PostgreSqlConnectionInfoResponse,
            Map<String, dynamic>
          >(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInputResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInputResponse(
      encryptedKeyForSecureFields: (() {
        final guardedValue = map['encryptedKeyForSecureFields'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      selectedDatabases: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInputResponse
        >(
          map['selectedDatabases']!,
          (value) =>
              MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInputResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      sourceConnectionInfo: pulumi.Input.fromValue(
        PostgreSqlConnectionInfoResponse.fromMap(
          (map['sourceConnectionInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
      startedOn: pulumi.Input.fromValue(map['startedOn'] as String),
      targetConnectionInfo: pulumi.Input.fromValue(
        PostgreSqlConnectionInfoResponse.fromMap(
          (map['targetConnectionInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
