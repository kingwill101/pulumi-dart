// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_sql_server_sql_db_sync_task_input.dart';

/// Properties for the task that migrates on-prem SQL Server databases to Azure SQL Database for online migrations
class MigrateSqlServerSqlDbSyncTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>>? clientData;

  /// Task input
  final pulumi.Input<MigrateSqlServerSqlDbSyncTaskInput>? input;

  /// Task type.
  /// Expected value is 'Migrate.SqlServer.AzureSqlDb.Sync'.
  final pulumi.Input<String> taskType;

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
      'input':
          ?pulumi.Input.mapOptionalInputValue<
            MigrateSqlServerSqlDbSyncTaskInput,
            Map<String, dynamic>
          >(input, (value) => value.toMap()),
      'taskType': taskType,
    };
  }

  factory MigrateSqlServerSqlDbSyncTaskProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return MigrateSqlServerSqlDbSyncTaskProperties(
      clientData: (() {
        final guardedValue = map['clientData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      input: (() {
        final guardedValue = map['input'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MigrateSqlServerSqlDbSyncTaskInput.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}
