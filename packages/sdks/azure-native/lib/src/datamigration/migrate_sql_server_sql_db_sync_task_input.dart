// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_sql_server_sql_db_sync_database_input.dart';
import 'migration_validation_options.dart';
import 'sql_connection_info.dart';

/// Input for the task that migrates on-prem SQL Server databases to Azure SQL Database for online migrations
class MigrateSqlServerSqlDbSyncTaskInput {
  /// Databases to migrate
  final pulumi.Input<List<MigrateSqlServerSqlDbSyncDatabaseInput>> selectedDatabases;
  /// Information for connecting to source
  final pulumi.Input<SqlConnectionInfo> sourceConnectionInfo;
  /// Information for connecting to target
  final pulumi.Input<SqlConnectionInfo> targetConnectionInfo;
  /// Validation options
  final pulumi.Input<MigrationValidationOptions>? validationOptions;

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
      'selectedDatabases': pulumi.Input.mapInputValue<List<MigrateSqlServerSqlDbSyncDatabaseInput>, List<Map<String, dynamic>>>(selectedDatabases, (value) => pulumi.Input.encodeList<MigrateSqlServerSqlDbSyncDatabaseInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfo, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'targetConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfo, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
      'validationOptions': ?pulumi.Input.mapOptionalInputValue<MigrationValidationOptions, Map<String, dynamic>>(validationOptions, (value) => value.toMap()),
    };
  }

  factory MigrateSqlServerSqlDbSyncTaskInput.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlDbSyncTaskInput(
      selectedDatabases: (pulumi.Input.decodeList<MigrateSqlServerSqlDbSyncDatabaseInput>(map['selectedDatabases'], (value) => MigrateSqlServerSqlDbSyncDatabaseInput.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceConnectionInfo: (SqlConnectionInfo.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>())).input(),
      targetConnectionInfo: (SqlConnectionInfo.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>())).input(),
      validationOptions: map['validationOptions'] == null ? null : (MigrationValidationOptions.fromMap((map['validationOptions']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

