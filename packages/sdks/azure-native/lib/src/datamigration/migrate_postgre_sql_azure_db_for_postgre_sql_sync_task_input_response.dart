// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_postgre_sql_azure_db_for_postgre_sql_sync_database_input_response.dart';
import 'postgre_sql_connection_info_response.dart';

/// Input for the task that migrates PostgreSQL databases to Azure Database for PostgreSQL for online migrations
class MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInputResponse {
  /// encrypted key for secure fields
  final String? encryptedKeyForSecureFields;
  /// Databases to migrate
  final List<MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInputResponse> selectedDatabases;
  /// Connection information for source PostgreSQL
  final PostgreSqlConnectionInfoResponse sourceConnectionInfo;
  /// Migration start time
  final String startedOn;
  /// Connection information for target Azure Database for PostgreSQL
  final PostgreSqlConnectionInfoResponse targetConnectionInfo;

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
      'selectedDatabases': pulumi.Input.encodeList<MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInputResponse, Map<String, dynamic>>(selectedDatabases, (value) => value.toMap()),
      'sourceConnectionInfo': sourceConnectionInfo.toMap(),
      'startedOn': startedOn,
      'targetConnectionInfo': targetConnectionInfo.toMap(),
    };
  }

  factory MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInputResponse(
      encryptedKeyForSecureFields: map['encryptedKeyForSecureFields'] == null ? null : map['encryptedKeyForSecureFields'] as String,
      selectedDatabases: pulumi.Input.decodeList<MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInputResponse>(map['selectedDatabases'], (value) => MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInputResponse.fromMap((value as Map).cast<String, dynamic>())),
      sourceConnectionInfo: PostgreSqlConnectionInfoResponse.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
      startedOn: map['startedOn'] as String,
      targetConnectionInfo: PostgreSqlConnectionInfoResponse.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

