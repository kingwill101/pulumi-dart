// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'validate_sync_migration_input_sql_server_task_input.dart';

/// Properties for task that validates migration input for SQL to Azure SQL DB sync migrations
class ValidateMigrationInputSqlServerSqlDbSyncTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>?>? clientData;
  /// Task input
  final pulumi.Input<ValidateSyncMigrationInputSqlServerTaskInput?>? input;
  /// Task type.
  /// Expected value is 'ValidateMigrationInput.SqlServer.SqlDb.Sync'.
  final pulumi.Input<String> taskType;

  /// Creates a new [ValidateMigrationInputSqlServerSqlDbSyncTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  const ValidateMigrationInputSqlServerSqlDbSyncTaskProperties({
    this.clientData,
    this.input,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'input': ?pulumi.Input.mapOptionalInputValue<ValidateSyncMigrationInputSqlServerTaskInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'taskType': taskType,
    };
  }

  factory ValidateMigrationInputSqlServerSqlDbSyncTaskProperties.fromMap(Map<String, dynamic> map) {
    return ValidateMigrationInputSqlServerSqlDbSyncTaskProperties(
      clientData: (() { final guardedValue = map['clientData']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ValidateSyncMigrationInputSqlServerTaskInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}
