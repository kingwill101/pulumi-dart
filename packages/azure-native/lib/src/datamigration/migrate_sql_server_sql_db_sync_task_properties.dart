// ignore_for_file: unused_element, unnecessary_cast

import 'migrate_sql_server_sql_db_sync_task_input.dart';

/// Properties for the task that migrates on-prem SQL Server databases to Azure SQL Database for online migrations
class MigrateSqlServerSqlDbSyncTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Task input
  final MigrateSqlServerSqlDbSyncTaskInput? input;
  /// Task type.
  /// Expected value is 'Migrate.SqlServer.AzureSqlDb.Sync'.
  final String taskType;

  /// Creates a new [MigrateSqlServerSqlDbSyncTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  MigrateSqlServerSqlDbSyncTaskProperties({
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

  factory MigrateSqlServerSqlDbSyncTaskProperties.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlDbSyncTaskProperties(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      input: map['input'] == null ? null : MigrateSqlServerSqlDbSyncTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      taskType: map['taskType'] as String,
    );
  }
}

