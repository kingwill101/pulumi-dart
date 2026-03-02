// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_misync_complete_command_properties_response.dart';
import 'migrate_sql_server_sql_mitask_input_response.dart';
import 'migrate_sql_server_sql_mitask_output_agent_job_level_response.dart';
import 'odata_error_response.dart';

/// Properties for task that migrates SQL Server databases to Azure SQL Database Managed Instance
class MigrateSqlServerSqlMITaskPropertiesResponse {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>>? clientData;
  /// Array of command properties.
  final pulumi.Input<List<MigrateMISyncCompleteCommandPropertiesResponse>> commands;
  /// DateTime in UTC when the task was created
  final pulumi.Input<String>? createdOn;
  /// Array of errors. This is ignored if submitted.
  final pulumi.Input<List<ODataErrorResponse>> errors;
  /// Task input
  final pulumi.Input<MigrateSqlServerSqlMITaskInputResponse>? input;
  /// whether the task can be cloned or not
  final pulumi.Input<bool>? isCloneable;
  /// Task output. This is ignored if submitted.
  final pulumi.Input<List<MigrateSqlServerSqlMITaskOutputAgentJobLevelResponse>> output;
  /// parent task id
  final pulumi.Input<String>? parentTaskId;
  /// The state of the task. This is ignored if submitted.
  final pulumi.Input<String> state;
  /// task id
  final pulumi.Input<String>? taskId;
  /// Task type.
  /// Expected value is 'Migrate.SqlServer.AzureSqlDbMI'.
  final pulumi.Input<String> taskType;

  /// Creates a new [MigrateSqlServerSqlMITaskPropertiesResponse].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [commands] Array of command properties.
  /// [createdOn] DateTime in UTC when the task was created
  /// [errors] Array of errors. This is ignored if submitted.
  /// [input] Task input
  /// [isCloneable] whether the task can be cloned or not
  /// [output] Task output. This is ignored if submitted.
  /// [parentTaskId] parent task id
  /// [state] The state of the task. This is ignored if submitted.
  /// [taskId] task id
  /// [taskType] Task type.
  MigrateSqlServerSqlMITaskPropertiesResponse({
    this.clientData,
    required this.commands,
    this.createdOn,
    required this.errors,
    this.input,
    this.isCloneable,
    required this.output,
    this.parentTaskId,
    required this.state,
    this.taskId,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'commands': pulumi.Input.mapInputValue<List<MigrateMISyncCompleteCommandPropertiesResponse>, List<Map<String, dynamic>>>(commands, (value) => pulumi.Input.encodeList<MigrateMISyncCompleteCommandPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdOn': ?createdOn,
      'errors': pulumi.Input.mapInputValue<List<ODataErrorResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ODataErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'input': ?pulumi.Input.mapOptionalInputValue<MigrateSqlServerSqlMITaskInputResponse, Map<String, dynamic>>(input, (value) => value.toMap()),
      'isCloneable': ?isCloneable,
      'output': pulumi.Input.mapInputValue<List<MigrateSqlServerSqlMITaskOutputAgentJobLevelResponse>, List<Map<String, dynamic>>>(output, (value) => pulumi.Input.encodeList<MigrateSqlServerSqlMITaskOutputAgentJobLevelResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parentTaskId': ?parentTaskId,
      'state': state,
      'taskId': ?taskId,
      'taskType': taskType,
    };
  }

  factory MigrateSqlServerSqlMITaskPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlMITaskPropertiesResponse(
      clientData: map['clientData'] == null ? null : ((map['clientData'] as Map).cast<String, String>()).input(),
      commands: (pulumi.Input.decodeList<MigrateMISyncCompleteCommandPropertiesResponse>(map['commands'], (value) => MigrateMISyncCompleteCommandPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createdOn: map['createdOn'] == null ? null : (map['createdOn'] as String).input(),
      errors: (pulumi.Input.decodeList<ODataErrorResponse>(map['errors'], (value) => ODataErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      input: map['input'] == null ? null : (MigrateSqlServerSqlMITaskInputResponse.fromMap((map['input'] as Map).cast<String, dynamic>())).input(),
      isCloneable: map['isCloneable'] == null ? null : (map['isCloneable'] as bool).input(),
      output: (pulumi.Input.decodeList<MigrateSqlServerSqlMITaskOutputAgentJobLevelResponse>(map['output'], (value) => MigrateSqlServerSqlMITaskOutputAgentJobLevelResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parentTaskId: map['parentTaskId'] == null ? null : (map['parentTaskId'] as String).input(),
      state: (map['state'] as String).input(),
      taskId: map['taskId'] == null ? null : (map['taskId'] as String).input(),
      taskType: (map['taskType'] as String).input(),
    );
  }
}

