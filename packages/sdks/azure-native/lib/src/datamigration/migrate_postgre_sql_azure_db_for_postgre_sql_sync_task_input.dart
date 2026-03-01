// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_postgre_sql_azure_db_for_postgre_sql_sync_database_input.dart';
import 'postgre_sql_connection_info.dart';

/// Input for the task that migrates PostgreSQL databases to Azure Database for PostgreSQL for online migrations
class MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInput {
  /// encrypted key for secure fields
  final String? encryptedKeyForSecureFields;
  /// Databases to migrate
  final List<MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput> selectedDatabases;
  /// Connection information for source PostgreSQL
  final PostgreSqlConnectionInfo sourceConnectionInfo;
  /// Connection information for target Azure Database for PostgreSQL
  final PostgreSqlConnectionInfo targetConnectionInfo;

  /// Creates a new [MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInput].
  /// [encryptedKeyForSecureFields] encrypted key for secure fields
  /// [selectedDatabases] Databases to migrate
  /// [sourceConnectionInfo] Connection information for source PostgreSQL
  /// [targetConnectionInfo] Connection information for target Azure Database for PostgreSQL
  MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInput({
    this.encryptedKeyForSecureFields,
    required this.selectedDatabases,
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptedKeyForSecureFields': ?encryptedKeyForSecureFields,
      'selectedDatabases': pulumi.Input.encodeList<MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput, Map<String, dynamic>>(selectedDatabases, (value) => value.toMap()),
      'sourceConnectionInfo': sourceConnectionInfo.toMap(),
      'targetConnectionInfo': targetConnectionInfo.toMap(),
    };
  }

  factory MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInput.fromMap(Map<String, dynamic> map) {
    return MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInput(
      encryptedKeyForSecureFields: map['encryptedKeyForSecureFields'] == null ? null : map['encryptedKeyForSecureFields'] as String,
      selectedDatabases: pulumi.Input.decodeList<MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput>(map['selectedDatabases'], (value) => MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput.fromMap((value as Map).cast<String, dynamic>())),
      sourceConnectionInfo: PostgreSqlConnectionInfo.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
      targetConnectionInfo: PostgreSqlConnectionInfo.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

