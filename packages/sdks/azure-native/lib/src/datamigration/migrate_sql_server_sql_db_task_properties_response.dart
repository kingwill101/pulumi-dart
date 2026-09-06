// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_sql_server_sql_db_task_input_response.dart';
import 'odata_error_response.dart';

/// Properties for the task that migrates on-prem SQL Server databases to Azure SQL Database
class MigrateSqlServerSqlDbTaskPropertiesResponse {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>?>? clientData;
  /// Array of command properties.
  final pulumi.Input<List<dynamic>> commands;
  /// DateTime in UTC when the task was created
  final pulumi.Input<String?>? createdOn;
  /// Array of errors. This is ignored if submitted.
  final pulumi.Input<List<ODataErrorResponse>> errors;
  /// Task input
  final pulumi.Input<MigrateSqlServerSqlDbTaskInputResponse?>? input;
  /// whether the task can be cloned or not
  final pulumi.Input<bool?>? isCloneable;
  /// Task output. This is ignored if submitted.
  final pulumi.Input<List<dynamic>> output;
  /// The state of the task. This is ignored if submitted.
  final pulumi.Input<String> state;
  /// task id
  final pulumi.Input<String?>? taskId;
  /// Task type.
  /// Expected value is 'Migrate.SqlServer.SqlDb'.
  final pulumi.Input<String> taskType;

  /// Creates a new [MigrateSqlServerSqlDbTaskPropertiesResponse].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [commands] Array of command properties.
  /// [createdOn] DateTime in UTC when the task was created
  /// [errors] Array of errors. This is ignored if submitted.
  /// [input] Task input
  /// [isCloneable] whether the task can be cloned or not
  /// [output] Task output. This is ignored if submitted.
  /// [state] The state of the task. This is ignored if submitted.
  /// [taskId] task id
  /// [taskType] Task type.
  const MigrateSqlServerSqlDbTaskPropertiesResponse({
    this.clientData,
    required this.commands,
    this.createdOn,
    required this.errors,
    this.input,
    this.isCloneable,
    required this.output,
    required this.state,
    this.taskId,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'commands': commands,
      'createdOn': ?createdOn,
      'errors': pulumi.Input.mapInputValue<List<ODataErrorResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ODataErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'input': ?pulumi.Input.mapOptionalInputValue<MigrateSqlServerSqlDbTaskInputResponse, Map<String, dynamic>>(input, (value) => value.toMap()),
      'isCloneable': ?isCloneable,
      'output': output,
      'state': state,
      'taskId': ?taskId,
      'taskType': taskType,
    };
  }

  factory MigrateSqlServerSqlDbTaskPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlDbTaskPropertiesResponse(
      clientData: (() { final guardedValue = map['clientData']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      commands: pulumi.Input.fromValue((map['commands'] as List).cast<dynamic>()),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errors: pulumi.Input.fromValue(pulumi.Input.decodeList<ODataErrorResponse>(map['errors']!, (value) => ODataErrorResponse.fromMap((value as Map).cast<String, dynamic>()))),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrateSqlServerSqlDbTaskInputResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isCloneable: (() { final guardedValue = map['isCloneable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      output: pulumi.Input.fromValue((map['output'] as List).cast<dynamic>()),
      state: pulumi.Input.fromValue(map['state'] as String),
      taskId: (() { final guardedValue = map['taskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}
