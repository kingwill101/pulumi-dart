// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_my_sql_azure_db_for_my_sql_offline_task_input.dart';

/// Properties for the task that migrates MySQL databases to Azure Database for MySQL for offline migrations
class MigrateMySqlAzureDbForMySqlOfflineTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>>? clientData;
  /// Task input
  final pulumi.Input<MigrateMySqlAzureDbForMySqlOfflineTaskInput>? input;
  /// whether the task can be cloned or not
  final pulumi.Input<bool>? isCloneable;
  /// Task id
  final pulumi.Input<String>? taskId;
  /// Task type.
  /// Expected value is 'Migrate.MySql.AzureDbForMySql'.
  final pulumi.Input<String> taskType;

  /// Creates a new [MigrateMySqlAzureDbForMySqlOfflineTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [isCloneable] whether the task can be cloned or not
  /// [taskId] Task id
  /// [taskType] Task type.
  MigrateMySqlAzureDbForMySqlOfflineTaskProperties({
    this.clientData,
    this.input,
    this.isCloneable,
    this.taskId,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'input': ?pulumi.Input.mapOptionalInputValue<MigrateMySqlAzureDbForMySqlOfflineTaskInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'isCloneable': ?isCloneable,
      'taskId': ?taskId,
      'taskType': taskType,
    };
  }

  factory MigrateMySqlAzureDbForMySqlOfflineTaskProperties.fromMap(Map<String, dynamic> map) {
    return MigrateMySqlAzureDbForMySqlOfflineTaskProperties(
      clientData: map['clientData'] == null ? null : ((map['clientData'] as Map).cast<String, String>()).input(),
      input: map['input'] == null ? null : (MigrateMySqlAzureDbForMySqlOfflineTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>())).input(),
      isCloneable: map['isCloneable'] == null ? null : (map['isCloneable'] as bool).input(),
      taskId: map['taskId'] == null ? null : (map['taskId'] as String).input(),
      taskType: (map['taskType'] as String).input(),
    );
  }
}

