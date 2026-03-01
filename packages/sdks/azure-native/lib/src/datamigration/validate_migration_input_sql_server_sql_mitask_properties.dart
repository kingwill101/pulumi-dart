// ignore_for_file: unused_element, unnecessary_cast

import 'validate_migration_input_sql_server_sql_mitask_input.dart';

/// Properties for task that validates migration input for SQL to Azure SQL Database Managed Instance
class ValidateMigrationInputSqlServerSqlMITaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Task input
  final ValidateMigrationInputSqlServerSqlMITaskInput? input;
  /// Task type.
  /// Expected value is 'ValidateMigrationInput.SqlServer.AzureSqlDbMI'.
  final String taskType;

  /// Creates a new [ValidateMigrationInputSqlServerSqlMITaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  ValidateMigrationInputSqlServerSqlMITaskProperties({
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

  factory ValidateMigrationInputSqlServerSqlMITaskProperties.fromMap(Map<String, dynamic> map) {
    return ValidateMigrationInputSqlServerSqlMITaskProperties(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      input: map['input'] == null ? null : ValidateMigrationInputSqlServerSqlMITaskInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      taskType: map['taskType'] as String,
    );
  }
}

