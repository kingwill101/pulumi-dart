// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_sql_server_sql_db_database_input_response.dart';
import 'migration_validation_options_response.dart';
import 'sql_connection_info_response.dart';

/// Input for the task that migrates on-prem SQL Server databases to Azure SQL Database
class MigrateSqlServerSqlDbTaskInputResponse {
  /// encrypted key for secure fields
  final String? encryptedKeyForSecureFields;
  /// Databases to migrate
  final List<MigrateSqlServerSqlDbDatabaseInputResponse> selectedDatabases;
  /// Information for connecting to source
  final SqlConnectionInfoResponse sourceConnectionInfo;
  /// Date and time relative to UTC when the migration was started on
  final String? startedOn;
  /// Information for connecting to target
  final SqlConnectionInfoResponse targetConnectionInfo;
  /// Options for enabling various post migration validations. Available options,
  /// 1.) Data Integrity Check: Performs a checksum based comparison on source and target tables after the migration to ensure the correctness of the data.
  /// 2.) Schema Validation: Performs a thorough schema comparison between the source and target tables and provides a list of differences between the source and target database, 3.) Query Analysis: Executes a set of queries picked up automatically either from the Query Plan Cache or Query Store and execute them and compares the execution time between the source and target database.
  final MigrationValidationOptionsResponse? validationOptions;

  /// Creates a new [MigrateSqlServerSqlDbTaskInputResponse].
  /// [encryptedKeyForSecureFields] encrypted key for secure fields
  /// [selectedDatabases] Databases to migrate
  /// [sourceConnectionInfo] Information for connecting to source
  /// [startedOn] Date and time relative to UTC when the migration was started on
  /// [targetConnectionInfo] Information for connecting to target
  /// [validationOptions] Options for enabling various post migration validations. Available options,
  MigrateSqlServerSqlDbTaskInputResponse({
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
      'selectedDatabases': pulumi.Input.encodeList<MigrateSqlServerSqlDbDatabaseInputResponse, Map<String, dynamic>>(selectedDatabases, (value) => value.toMap()),
      'sourceConnectionInfo': sourceConnectionInfo.toMap(),
      'startedOn': ?startedOn,
      'targetConnectionInfo': targetConnectionInfo.toMap(),
      'validationOptions': ?validationOptions == null ? null : validationOptions!.toMap(),
    };
  }

  factory MigrateSqlServerSqlDbTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlDbTaskInputResponse(
      encryptedKeyForSecureFields: map['encryptedKeyForSecureFields'] == null ? null : map['encryptedKeyForSecureFields'] as String,
      selectedDatabases: pulumi.Input.decodeList<MigrateSqlServerSqlDbDatabaseInputResponse>(map['selectedDatabases'], (value) => MigrateSqlServerSqlDbDatabaseInputResponse.fromMap((value as Map).cast<String, dynamic>())),
      sourceConnectionInfo: SqlConnectionInfoResponse.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
      startedOn: map['startedOn'] == null ? null : map['startedOn'] as String,
      targetConnectionInfo: SqlConnectionInfoResponse.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
      validationOptions: map['validationOptions'] == null ? null : MigrationValidationOptionsResponse.fromMap((map['validationOptions'] as Map).cast<String, dynamic>()),
    );
  }
}

