// ignore_for_file: unused_element, unnecessary_cast

import 'validate_sync_migration_input_sql_server_task_input.dart';

/// Properties for task that validates migration input for SQL to Azure SQL DB sync migrations
class ValidateMigrationInputSqlServerSqlDbSyncTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Task input
  final ValidateSyncMigrationInputSqlServerTaskInput? input;
  /// Task type.
  /// Expected value is 'ValidateMigrationInput.SqlServer.SqlDb.Sync'.
  final String taskType;

  /// Creates a new [ValidateMigrationInputSqlServerSqlDbSyncTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  ValidateMigrationInputSqlServerSqlDbSyncTaskProperties({
    this.clientData,
    this.input,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'input': ?input == null ? null : input!.toMap(),
      'taskType': taskType,
    };
  }

  factory ValidateMigrationInputSqlServerSqlDbSyncTaskProperties.fromMap(Map<String, dynamic> map) {
    return ValidateMigrationInputSqlServerSqlDbSyncTaskProperties(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      input: map['input'] == null ? null : ValidateSyncMigrationInputSqlServerTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      taskType: map['taskType'] as String,
    );
  }
}

