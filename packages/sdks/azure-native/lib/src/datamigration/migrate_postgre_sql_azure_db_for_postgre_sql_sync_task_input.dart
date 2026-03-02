// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_postgre_sql_azure_db_for_postgre_sql_sync_database_input.dart';
import 'postgre_sql_connection_info.dart';

/// Input for the task that migrates PostgreSQL databases to Azure Database for PostgreSQL for online migrations
class MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInput {
  /// encrypted key for secure fields
  final pulumi.Input<String>? encryptedKeyForSecureFields;
  /// Databases to migrate
  final pulumi.Input<List<MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput>> selectedDatabases;
  /// Connection information for source PostgreSQL
  final pulumi.Input<PostgreSqlConnectionInfo> sourceConnectionInfo;
  /// Connection information for target Azure Database for PostgreSQL
  final pulumi.Input<PostgreSqlConnectionInfo> targetConnectionInfo;

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
      'selectedDatabases': pulumi.Input.mapInputValue<List<MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput>, List<Map<String, dynamic>>>(selectedDatabases, (value) => pulumi.Input.encodeList<MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceConnectionInfo': pulumi.Input.mapInputValue<PostgreSqlConnectionInfo, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'targetConnectionInfo': pulumi.Input.mapInputValue<PostgreSqlConnectionInfo, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInput.fromMap(Map<String, dynamic> map) {
    return MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInput(
      encryptedKeyForSecureFields: map['encryptedKeyForSecureFields'] == null ? null : (map['encryptedKeyForSecureFields']! as String).input(),
      selectedDatabases: (pulumi.Input.decodeList<MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput>(map['selectedDatabases'], (value) => MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceConnectionInfo: (PostgreSqlConnectionInfo.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>())).input(),
      targetConnectionInfo: (PostgreSqlConnectionInfo.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

