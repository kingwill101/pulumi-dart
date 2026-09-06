// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_postgre_sql_azure_db_for_postgre_sql_sync_task_input.dart';

/// Properties for the task that migrates PostgreSQL databases to Azure Database for PostgreSQL for online migrations
class MigratePostgreSqlAzureDbForPostgreSqlSyncTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>?>? clientData;
  /// DateTime in UTC when the task was created
  final pulumi.Input<String?>? createdOn;
  /// Task input
  final pulumi.Input<MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInput?>? input;
  /// whether the task can be cloned or not
  final pulumi.Input<bool?>? isCloneable;
  /// task id
  final pulumi.Input<String?>? taskId;
  /// Task type.
  /// Expected value is 'Migrate.PostgreSql.AzureDbForPostgreSql.SyncV2'.
  final pulumi.Input<String> taskType;

  /// Creates a new [MigratePostgreSqlAzureDbForPostgreSqlSyncTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [createdOn] DateTime in UTC when the task was created
  /// [input] Task input
  /// [isCloneable] whether the task can be cloned or not
  /// [taskId] task id
  /// [taskType] Task type.
  const MigratePostgreSqlAzureDbForPostgreSqlSyncTaskProperties({
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
      'input': ?pulumi.Input.mapOptionalInputValue<MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'isCloneable': ?isCloneable,
      'taskId': ?taskId,
      'taskType': taskType,
    };
  }

  factory MigratePostgreSqlAzureDbForPostgreSqlSyncTaskProperties.fromMap(Map<String, dynamic> map) {
    return MigratePostgreSqlAzureDbForPostgreSqlSyncTaskProperties(
      clientData: (() { final guardedValue = map['clientData']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isCloneable: (() { final guardedValue = map['isCloneable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      taskId: (() { final guardedValue = map['taskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}
