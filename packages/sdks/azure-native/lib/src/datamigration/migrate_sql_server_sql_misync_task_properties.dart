// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_sql_server_sql_misync_task_input.dart';

/// Properties for task that migrates SQL Server databases to Azure SQL Database Managed Instance sync scenario
class MigrateSqlServerSqlMISyncTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>?>? clientData;
  /// DateTime in UTC when the task was created
  final pulumi.Input<String?>? createdOn;
  /// Task input
  final pulumi.Input<MigrateSqlServerSqlMISyncTaskInput?>? input;
  /// Task type.
  /// Expected value is 'Migrate.SqlServer.AzureSqlDbMI.Sync.LRS'.
  final pulumi.Input<String> taskType;

  /// Creates a new [MigrateSqlServerSqlMISyncTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [createdOn] DateTime in UTC when the task was created
  /// [input] Task input
  /// [taskType] Task type.
  const MigrateSqlServerSqlMISyncTaskProperties({
    this.clientData,
    this.createdOn,
    this.input,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'createdOn': ?createdOn,
      'input': ?pulumi.Input.mapOptionalInputValue<MigrateSqlServerSqlMISyncTaskInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'taskType': taskType,
    };
  }

  factory MigrateSqlServerSqlMISyncTaskProperties.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlMISyncTaskProperties(
      clientData: (() { final guardedValue = map['clientData']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrateSqlServerSqlMISyncTaskInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}
