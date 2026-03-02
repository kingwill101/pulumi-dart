// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_my_sql_azure_db_for_my_sql_sync_task_input.dart';

/// Properties for the task that migrates MySQL databases to Azure Database for MySQL for online migrations
class MigrateMySqlAzureDbForMySqlSyncTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>>? clientData;
  /// Task input
  final pulumi.Input<MigrateMySqlAzureDbForMySqlSyncTaskInput>? input;
  /// Task type.
  /// Expected value is 'Migrate.MySql.AzureDbForMySql.Sync'.
  final pulumi.Input<String> taskType;

  /// Creates a new [MigrateMySqlAzureDbForMySqlSyncTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  MigrateMySqlAzureDbForMySqlSyncTaskProperties({
    this.clientData,
    this.input,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'input': ?pulumi.Input.mapOptionalInputValue<MigrateMySqlAzureDbForMySqlSyncTaskInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'taskType': taskType,
    };
  }

  factory MigrateMySqlAzureDbForMySqlSyncTaskProperties.fromMap(Map<String, dynamic> map) {
    return MigrateMySqlAzureDbForMySqlSyncTaskProperties(
      clientData: map['clientData'] == null ? null : ((map['clientData'] as Map).cast<String, String>()).input(),
      input: map['input'] == null ? null : (MigrateMySqlAzureDbForMySqlSyncTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>())).input(),
      taskType: (map['taskType'] as String).input(),
    );
  }
}

