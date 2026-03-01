// ignore_for_file: unused_element, unnecessary_cast

import 'validate_migration_input_sql_server_sql_misync_task_input.dart';

/// Properties for task that validates migration input for SQL to Azure SQL Database Managed Instance sync scenario
class ValidateMigrationInputSqlServerSqlMISyncTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Task input
  final ValidateMigrationInputSqlServerSqlMISyncTaskInput? input;
  /// Task type.
  /// Expected value is 'ValidateMigrationInput.SqlServer.AzureSqlDbMI.Sync.LRS'.
  final String taskType;

  /// Creates a new [ValidateMigrationInputSqlServerSqlMISyncTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  ValidateMigrationInputSqlServerSqlMISyncTaskProperties({
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

  factory ValidateMigrationInputSqlServerSqlMISyncTaskProperties.fromMap(Map<String, dynamic> map) {
    return ValidateMigrationInputSqlServerSqlMISyncTaskProperties(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      input: map['input'] == null ? null : ValidateMigrationInputSqlServerSqlMISyncTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      taskType: map['taskType'] as String,
    );
  }
}

