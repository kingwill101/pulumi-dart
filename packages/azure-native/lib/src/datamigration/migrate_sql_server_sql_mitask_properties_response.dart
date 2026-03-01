// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_misync_complete_command_properties_response.dart';
import 'migrate_sql_server_sql_mitask_input_response.dart';
import 'migrate_sql_server_sql_mitask_output_agent_job_level_response.dart';
import 'odata_error_response.dart';

/// Properties for task that migrates SQL Server databases to Azure SQL Database Managed Instance
class MigrateSqlServerSqlMITaskPropertiesResponse {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Array of command properties.
  final List<MigrateMISyncCompleteCommandPropertiesResponse> commands;
  /// DateTime in UTC when the task was created
  final String? createdOn;
  /// Array of errors. This is ignored if submitted.
  final List<ODataErrorResponse> errors;
  /// Task input
  final MigrateSqlServerSqlMITaskInputResponse? input;
  /// whether the task can be cloned or not
  final bool? isCloneable;
  /// Task output. This is ignored if submitted.
  final List<MigrateSqlServerSqlMITaskOutputAgentJobLevelResponse> output;
  /// parent task id
  final String? parentTaskId;
  /// The state of the task. This is ignored if submitted.
  final String state;
  /// task id
  final String? taskId;
  /// Task type.
  /// Expected value is 'Migrate.SqlServer.AzureSqlDbMI'.
  final String taskType;

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
      'commands': pulumi.Input.encodeList<MigrateMISyncCompleteCommandPropertiesResponse, Map<String, dynamic>>(commands, (value) => value.toMap()),
      'createdOn': ?createdOn,
      'errors': pulumi.Input.encodeList<ODataErrorResponse, Map<String, dynamic>>(errors, (value) => value.toMap()),
      'input': ?input == null ? null : input!.toMap(),
      'isCloneable': ?isCloneable,
      'output': pulumi.Input.encodeList<MigrateSqlServerSqlMITaskOutputAgentJobLevelResponse, Map<String, dynamic>>(output, (value) => value.toMap()),
      'parentTaskId': ?parentTaskId,
      'state': state,
      'taskId': ?taskId,
      'taskType': taskType,
    };
  }

  factory MigrateSqlServerSqlMITaskPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlMITaskPropertiesResponse(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      commands: pulumi.Input.decodeList<MigrateMISyncCompleteCommandPropertiesResponse>(map['commands'], (value) => MigrateMISyncCompleteCommandPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      createdOn: map['createdOn'] == null ? null : map['createdOn'] as String,
      errors: pulumi.Input.decodeList<ODataErrorResponse>(map['errors'], (value) => ODataErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      input: map['input'] == null ? null : MigrateSqlServerSqlMITaskInputResponse.fromMap((map['input'] as Map).cast<String, dynamic>()),
      isCloneable: map['isCloneable'] == null ? null : map['isCloneable'] as bool,
      output: pulumi.Input.decodeList<MigrateSqlServerSqlMITaskOutputAgentJobLevelResponse>(map['output'], (value) => MigrateSqlServerSqlMITaskOutputAgentJobLevelResponse.fromMap((value as Map).cast<String, dynamic>())),
      parentTaskId: map['parentTaskId'] == null ? null : map['parentTaskId'] as String,
      state: map['state'] as String,
      taskId: map['taskId'] == null ? null : map['taskId'] as String,
      taskType: map['taskType'] as String,
    );
  }
}

