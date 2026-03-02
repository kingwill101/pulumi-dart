// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_sql_server_sql_db_database_input.dart';
import 'migration_validation_options.dart';
import 'sql_connection_info.dart';

/// Input for the task that migrates on-prem SQL Server databases to Azure SQL Database
class MigrateSqlServerSqlDbTaskInput {
  /// encrypted key for secure fields
  final pulumi.Input<String>? encryptedKeyForSecureFields;
  /// Databases to migrate
  final pulumi.Input<List<MigrateSqlServerSqlDbDatabaseInput>> selectedDatabases;
  /// Information for connecting to source
  final pulumi.Input<SqlConnectionInfo> sourceConnectionInfo;
  /// Date and time relative to UTC when the migration was started on
  final pulumi.Input<String>? startedOn;
  /// Information for connecting to target
  final pulumi.Input<SqlConnectionInfo> targetConnectionInfo;
  /// Options for enabling various post migration validations. Available options,
  /// 1.) Data Integrity Check: Performs a checksum based comparison on source and target tables after the migration to ensure the correctness of the data.
  /// 2.) Schema Validation: Performs a thorough schema comparison between the source and target tables and provides a list of differences between the source and target database, 3.) Query Analysis: Executes a set of queries picked up automatically either from the Query Plan Cache or Query Store and execute them and compares the execution time between the source and target database.
  final pulumi.Input<MigrationValidationOptions>? validationOptions;

  /// Creates a new [MigrateSqlServerSqlDbTaskInput].
  /// [encryptedKeyForSecureFields] encrypted key for secure fields
  /// [selectedDatabases] Databases to migrate
  /// [sourceConnectionInfo] Information for connecting to source
  /// [startedOn] Date and time relative to UTC when the migration was started on
  /// [targetConnectionInfo] Information for connecting to target
  /// [validationOptions] Options for enabling various post migration validations. Available options,
  MigrateSqlServerSqlDbTaskInput({
    this.encryptedKeyForSecureFields,
    required this.selectedDatabases,
    required this.sourceConnectionInfo,
    this.startedOn,
    required this.targetConnectionInfo,
    this.validationOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptedKeyForSecureFields': ?encryptedKeyForSecureFields,
      'selectedDatabases': pulumi.Input.mapInputValue<List<MigrateSqlServerSqlDbDatabaseInput>, List<Map<String, dynamic>>>(selectedDatabases, (value) => pulumi.Input.encodeList<MigrateSqlServerSqlDbDatabaseInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfo, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'startedOn': ?startedOn,
      'targetConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfo, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
      'validationOptions': ?pulumi.Input.mapOptionalInputValue<MigrationValidationOptions, Map<String, dynamic>>(validationOptions, (value) => value.toMap()),
    };
  }

  factory MigrateSqlServerSqlDbTaskInput.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlDbTaskInput(
      encryptedKeyForSecureFields: map['encryptedKeyForSecureFields'] == null ? null : (map['encryptedKeyForSecureFields'] as String).input(),
      selectedDatabases: (pulumi.Input.decodeList<MigrateSqlServerSqlDbDatabaseInput>(map['selectedDatabases'], (value) => MigrateSqlServerSqlDbDatabaseInput.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceConnectionInfo: (SqlConnectionInfo.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>())).input(),
      startedOn: map['startedOn'] == null ? null : (map['startedOn'] as String).input(),
      targetConnectionInfo: (SqlConnectionInfo.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>())).input(),
      validationOptions: map['validationOptions'] == null ? null : (MigrationValidationOptions.fromMap((map['validationOptions'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

