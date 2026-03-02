// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_ssis_task_input.dart';

/// Properties for task that migrates SSIS packages from SQL Server databases to Azure SQL Database Managed Instance.
class MigrateSsisTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>>? clientData;
  /// Task input
  final pulumi.Input<MigrateSsisTaskInput>? input;
  /// Task type.
  /// Expected value is 'Migrate.Ssis'.
  final pulumi.Input<String> taskType;

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
      'input': ?pulumi.Input.mapOptionalInputValue<MigrateSsisTaskInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'taskType': taskType,
    };
  }

  factory MigrateSsisTaskProperties.fromMap(Map<String, dynamic> map) {
    return MigrateSsisTaskProperties(
      clientData: map['clientData'] == null ? null : ((map['clientData']! as Map).cast<String, String>()).input(),
      input: map['input'] == null ? null : (MigrateSsisTaskInput.fromMap((map['input']! as Map).cast<String, dynamic>())).input(),
      taskType: (map['taskType'] as String).input(),
    );
  }
}

