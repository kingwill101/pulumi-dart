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
      'input':
          ?pulumi.Input.mapOptionalInputValue<
            MigrateMySqlAzureDbForMySqlOfflineTaskInput,
            Map<String, dynamic>
          >(input, (value) => value.toMap()),
      'isCloneable': ?isCloneable,
      'taskId': ?taskId,
      'taskType': taskType,
    };
  }

  factory MigrateMySqlAzureDbForMySqlOfflineTaskProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return MigrateMySqlAzureDbForMySqlOfflineTaskProperties(
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
          MigrateMySqlAzureDbForMySqlOfflineTaskInput.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      isCloneable: (() {
        final guardedValue = map['isCloneable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      taskId: (() {
        final guardedValue = map['taskId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}
