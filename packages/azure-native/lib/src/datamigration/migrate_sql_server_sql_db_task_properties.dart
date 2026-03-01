// ignore_for_file: unused_element, unnecessary_cast

import 'migrate_sql_server_sql_db_task_input.dart';

/// Properties for the task that migrates on-prem SQL Server databases to Azure SQL Database
class MigrateSqlServerSqlDbTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// DateTime in UTC when the task was created
  final String? createdOn;
  /// Task input
  final MigrateSqlServerSqlDbTaskInput? input;
  /// whether the task can be cloned or not
  final bool? isCloneable;
  /// task id
  final String? taskId;
  /// Task type.
  /// Expected value is 'Migrate.SqlServer.SqlDb'.
  final String taskType;

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
      'input': ?input == null ? null : input!.toMap(),
      'isCloneable': ?isCloneable,
      'taskId': ?taskId,
      'taskType': taskType,
    };
  }

  factory MigrateSqlServerSqlDbTaskProperties.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlDbTaskProperties(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      createdOn: map['createdOn'] == null ? null : map['createdOn'] as String,
      input: map['input'] == null ? null : MigrateSqlServerSqlDbTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      isCloneable: map['isCloneable'] == null ? null : map['isCloneable'] as bool,
      taskId: map['taskId'] == null ? null : map['taskId'] as String,
      taskType: map['taskType'] as String,
    );
  }
}

