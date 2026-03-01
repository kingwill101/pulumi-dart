// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_misync_complete_command_properties_response.dart';
import 'migrate_my_sql_azure_db_for_my_sql_offline_task_input_response.dart';
import 'migrate_my_sql_azure_db_for_my_sql_offline_task_output_database_level_response.dart';
import 'odata_error_response.dart';

/// Properties for the task that migrates MySQL databases to Azure Database for MySQL for offline migrations
class MigrateMySqlAzureDbForMySqlOfflineTaskPropertiesResponse {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Array of command properties.
  final List<MigrateMISyncCompleteCommandPropertiesResponse> commands;
  /// Array of errors. This is ignored if submitted.
  final List<ODataErrorResponse> errors;
  /// Task input
  final MigrateMySqlAzureDbForMySqlOfflineTaskInputResponse? input;
  /// whether the task can be cloned or not
  final bool? isCloneable;
  /// Task output. This is ignored if submitted.
  final List<MigrateMySqlAzureDbForMySqlOfflineTaskOutputDatabaseLevelResponse> output;
  /// The state of the task. This is ignored if submitted.
  final String state;
  /// Task id
  final String? taskId;
  /// Task type.
  /// Expected value is 'Migrate.MySql.AzureDbForMySql'.
  final String taskType;

  /// Creates a new [MigrateMySqlAzureDbForMySqlOfflineTaskPropertiesResponse].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [commands] Array of command properties.
  /// [errors] Array of errors. This is ignored if submitted.
  /// [input] Task input
  /// [isCloneable] whether the task can be cloned or not
  /// [output] Task output. This is ignored if submitted.
  /// [state] The state of the task. This is ignored if submitted.
  /// [taskId] Task id
  /// [taskType] Task type.
  MigrateMySqlAzureDbForMySqlOfflineTaskPropertiesResponse({
    this.clientData,
    required this.commands,
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
      'commands': pulumi.Input.encodeList<MigrateMISyncCompleteCommandPropertiesResponse, Map<String, dynamic>>(commands, (value) => value.toMap()),
      'errors': pulumi.Input.encodeList<ODataErrorResponse, Map<String, dynamic>>(errors, (value) => value.toMap()),
      'input': ?input == null ? null : input!.toMap(),
      'isCloneable': ?isCloneable,
      'output': pulumi.Input.encodeList<MigrateMySqlAzureDbForMySqlOfflineTaskOutputDatabaseLevelResponse, Map<String, dynamic>>(output, (value) => value.toMap()),
      'state': state,
      'taskId': ?taskId,
      'taskType': taskType,
    };
  }

  factory MigrateMySqlAzureDbForMySqlOfflineTaskPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MigrateMySqlAzureDbForMySqlOfflineTaskPropertiesResponse(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      commands: pulumi.Input.decodeList<MigrateMISyncCompleteCommandPropertiesResponse>(map['commands'], (value) => MigrateMISyncCompleteCommandPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      errors: pulumi.Input.decodeList<ODataErrorResponse>(map['errors'], (value) => ODataErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      input: map['input'] == null ? null : MigrateMySqlAzureDbForMySqlOfflineTaskInputResponse.fromMap((map['input'] as Map).cast<String, dynamic>()),
      isCloneable: map['isCloneable'] == null ? null : map['isCloneable'] as bool,
      output: pulumi.Input.decodeList<MigrateMySqlAzureDbForMySqlOfflineTaskOutputDatabaseLevelResponse>(map['output'], (value) => MigrateMySqlAzureDbForMySqlOfflineTaskOutputDatabaseLevelResponse.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      taskId: map['taskId'] == null ? null : map['taskId'] as String,
      taskType: map['taskType'] as String,
    );
  }
}

