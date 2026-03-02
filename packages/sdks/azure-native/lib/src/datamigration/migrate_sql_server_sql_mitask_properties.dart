// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_sql_server_sql_mitask_input.dart';

/// Properties for task that migrates SQL Server databases to Azure SQL Database Managed Instance
class MigrateSqlServerSqlMITaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>>? clientData;
  /// DateTime in UTC when the task was created
  final pulumi.Input<String>? createdOn;
  /// Task input
  final pulumi.Input<MigrateSqlServerSqlMITaskInput>? input;
  /// whether the task can be cloned or not
  final pulumi.Input<bool>? isCloneable;
  /// parent task id
  final pulumi.Input<String>? parentTaskId;
  /// task id
  final pulumi.Input<String>? taskId;
  /// Task type.
  /// Expected value is 'Migrate.SqlServer.AzureSqlDbMI'.
  final pulumi.Input<String> taskType;

  /// Creates a new [MigrateSqlServerSqlMITaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [createdOn] DateTime in UTC when the task was created
  /// [input] Task input
  /// [isCloneable] whether the task can be cloned or not
  /// [parentTaskId] parent task id
  /// [taskId] task id
  /// [taskType] Task type.
  MigrateSqlServerSqlMITaskProperties({
    this.clientData,
    this.createdOn,
    this.input,
    this.isCloneable,
    this.parentTaskId,
    this.taskId,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'createdOn': ?createdOn,
      'input': ?pulumi.Input.mapOptionalInputValue<MigrateSqlServerSqlMITaskInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'isCloneable': ?isCloneable,
      'parentTaskId': ?parentTaskId,
      'taskId': ?taskId,
      'taskType': taskType,
    };
  }

  factory MigrateSqlServerSqlMITaskProperties.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlMITaskProperties(
      clientData: map['clientData'] == null ? null : ((map['clientData'] as Map).cast<String, String>()).input(),
      createdOn: map['createdOn'] == null ? null : (map['createdOn'] as String).input(),
      input: map['input'] == null ? null : (MigrateSqlServerSqlMITaskInput.fromMap((map['input'] as Map).cast<String, dynamic>())).input(),
      isCloneable: map['isCloneable'] == null ? null : (map['isCloneable'] as bool).input(),
      parentTaskId: map['parentTaskId'] == null ? null : (map['parentTaskId'] as String).input(),
      taskId: map['taskId'] == null ? null : (map['taskId'] as String).input(),
      taskType: (map['taskType'] as String).input(),
    );
  }
}

