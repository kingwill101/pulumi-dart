// ignore_for_file: unused_element, unnecessary_cast

import 'migrate_ssis_task_input.dart';

/// Properties for task that migrates SSIS packages from SQL Server databases to Azure SQL Database Managed Instance.
class MigrateSsisTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Task input
  final MigrateSsisTaskInput? input;
  /// Task type.
  /// Expected value is 'Migrate.Ssis'.
  final String taskType;

  /// Creates a new [MigrateSsisTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  MigrateSsisTaskProperties({
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

  factory MigrateSsisTaskProperties.fromMap(Map<String, dynamic> map) {
    return MigrateSsisTaskProperties(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      input: map['input'] == null ? null : MigrateSsisTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      taskType: map['taskType'] as String,
    );
  }
}

