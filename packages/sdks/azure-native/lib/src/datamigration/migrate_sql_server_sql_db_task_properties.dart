// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_sql_server_sql_db_task_input.dart';

/// Properties for the task that migrates on-prem SQL Server databases to Azure SQL Database
class MigrateSqlServerSqlDbTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>>? clientData;
  /// DateTime in UTC when the task was created
  final pulumi.Input<String>? createdOn;
  /// Task input
  final pulumi.Input<MigrateSqlServerSqlDbTaskInput>? input;
  /// whether the task can be cloned or not
  final pulumi.Input<bool>? isCloneable;
  /// task id
  final pulumi.Input<String>? taskId;
  /// Task type.
  /// Expected value is 'Migrate.SqlServer.SqlDb'.
  final pulumi.Input<String> taskType;

  /// Creates a new [MigrateSqlServerSqlDbTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [createdOn] DateTime in UTC when the task was created
  /// [input] Task input
  /// [isCloneable] whether the task can be cloned or not
  /// [taskId] task id
  /// [taskType] Task type.
  MigrateSqlServerSqlDbTaskProperties({
    this.clientData,
    this.createdOn,
    this.input,
    this.isCloneable,
    this.taskId,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'createdOn': ?createdOn,
      'input': ?pulumi.Input.mapOptionalInputValue<MigrateSqlServerSqlDbTaskInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'isCloneable': ?isCloneable,
      'taskId': ?taskId,
      'taskType': taskType,
    };
  }

  factory MigrateSqlServerSqlDbTaskProperties.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlDbTaskProperties(
      clientData: map['clientData'] == null ? null : ((map['clientData'] as Map).cast<String, String>()).input(),
      createdOn: map['createdOn'] == null ? null : (map['createdOn'] as String).input(),
      input: map['input'] == null ? null : (MigrateSqlServerSqlDbTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>())).input(),
      isCloneable: map['isCloneable'] == null ? null : (map['isCloneable'] as bool).input(),
      taskId: map['taskId'] == null ? null : (map['taskId'] as String).input(),
      taskType: (map['taskType'] as String).input(),
    );
  }
}

