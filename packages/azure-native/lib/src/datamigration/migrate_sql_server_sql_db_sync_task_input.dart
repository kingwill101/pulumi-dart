// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_sql_server_sql_db_sync_database_input.dart';
import 'migration_validation_options.dart';
import 'sql_connection_info.dart';

/// Input for the task that migrates on-prem SQL Server databases to Azure SQL Database for online migrations
class MigrateSqlServerSqlDbSyncTaskInput {
  /// Databases to migrate
  final List<MigrateSqlServerSqlDbSyncDatabaseInput> selectedDatabases;
  /// Information for connecting to source
  final SqlConnectionInfo sourceConnectionInfo;
  /// Information for connecting to target
  final SqlConnectionInfo targetConnectionInfo;
  /// Validation options
  final MigrationValidationOptions? validationOptions;

  /// Creates a new [MigrateSqlServerSqlDbSyncTaskInput].
  /// [selectedDatabases] Databases to migrate
  /// [sourceConnectionInfo] Information for connecting to source
  /// [targetConnectionInfo] Information for connecting to target
  /// [validationOptions] Validation options
  MigrateSqlServerSqlDbSyncTaskInput({
    required this.selectedDatabases,
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
    this.validationOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedDatabases': pulumi.Input.encodeList<MigrateSqlServerSqlDbSyncDatabaseInput, Map<String, dynamic>>(selectedDatabases, (value) => value.toMap()),
      'sourceConnectionInfo': sourceConnectionInfo.toMap(),
      'targetConnectionInfo': targetConnectionInfo.toMap(),
      'validationOptions': ?validationOptions == null ? null : validationOptions!.toMap(),
    };
  }

  factory MigrateSqlServerSqlDbSyncTaskInput.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlDbSyncTaskInput(
      selectedDatabases: pulumi.Input.decodeList<MigrateSqlServerSqlDbSyncDatabaseInput>(map['selectedDatabases'], (value) => MigrateSqlServerSqlDbSyncDatabaseInput.fromMap((value as Map).cast<String, dynamic>())),
      sourceConnectionInfo: SqlConnectionInfo.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
      targetConnectionInfo: SqlConnectionInfo.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
      validationOptions: map['validationOptions'] == null ? null : MigrationValidationOptions.fromMap((map['validationOptions'] as Map).cast<String, dynamic>()),
    );
  }
}

