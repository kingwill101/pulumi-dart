// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_misync_complete_command_properties_response.dart';
import 'migrate_postgre_sql_azure_db_for_postgre_sql_sync_task_input_response.dart';
import 'migrate_postgre_sql_azure_db_for_postgre_sql_sync_task_output_database_error_response.dart';
import 'odata_error_response.dart';

/// Properties for the task that migrates PostgreSQL databases to Azure Database for PostgreSQL for online migrations
class MigratePostgreSqlAzureDbForPostgreSqlSyncTaskPropertiesResponse {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>>? clientData;
  /// Array of command properties.
  final pulumi.Input<List<MigrateMISyncCompleteCommandPropertiesResponse>> commands;
  /// DateTime in UTC when the task was created
  final pulumi.Input<String>? createdOn;
  /// Array of errors. This is ignored if submitted.
  final pulumi.Input<List<ODataErrorResponse>> errors;
  /// Task input
  final pulumi.Input<MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInputResponse>? input;
  /// whether the task can be cloned or not
  final pulumi.Input<bool>? isCloneable;
  /// Task output. This is ignored if submitted.
  final pulumi.Input<List<MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputDatabaseErrorResponse>> output;
  /// The state of the task. This is ignored if submitted.
  final pulumi.Input<String> state;
  /// task id
  final pulumi.Input<String>? taskId;
  /// Task type.
  /// Expected value is 'Migrate.PostgreSql.AzureDbForPostgreSql.SyncV2'.
  final pulumi.Input<String> taskType;

  /// Creates a new [MigratePostgreSqlAzureDbForPostgreSqlSyncTaskPropertiesResponse].
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
  MigratePostgreSqlAzureDbForPostgreSqlSyncTaskPropertiesResponse({
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
      'commands': pulumi.Input.mapInputValue<List<MigrateMISyncCompleteCommandPropertiesResponse>, List<Map<String, dynamic>>>(commands, (value) => pulumi.Input.encodeList<MigrateMISyncCompleteCommandPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdOn': ?createdOn,
      'errors': pulumi.Input.mapInputValue<List<ODataErrorResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ODataErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'input': ?pulumi.Input.mapOptionalInputValue<MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInputResponse, Map<String, dynamic>>(input, (value) => value.toMap()),
      'isCloneable': ?isCloneable,
      'output': pulumi.Input.mapInputValue<List<MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputDatabaseErrorResponse>, List<Map<String, dynamic>>>(output, (value) => pulumi.Input.encodeList<MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputDatabaseErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': state,
      'taskId': ?taskId,
      'taskType': taskType,
    };
  }

  factory MigratePostgreSqlAzureDbForPostgreSqlSyncTaskPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MigratePostgreSqlAzureDbForPostgreSqlSyncTaskPropertiesResponse(
      clientData: map['clientData'] == null ? null : ((map['clientData']! as Map).cast<String, String>()).input(),
      commands: (pulumi.Input.decodeList<MigrateMISyncCompleteCommandPropertiesResponse>(map['commands'], (value) => MigrateMISyncCompleteCommandPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createdOn: map['createdOn'] == null ? null : (map['createdOn']! as String).input(),
      errors: (pulumi.Input.decodeList<ODataErrorResponse>(map['errors'], (value) => ODataErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      input: map['input'] == null ? null : (MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInputResponse.fromMap((map['input']! as Map).cast<String, dynamic>())).input(),
      isCloneable: map['isCloneable'] == null ? null : (map['isCloneable']! as bool).input(),
      output: (pulumi.Input.decodeList<MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputDatabaseErrorResponse>(map['output'], (value) => MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputDatabaseErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      state: (map['state'] as String).input(),
      taskId: map['taskId'] == null ? null : (map['taskId']! as String).input(),
      taskType: (map['taskType'] as String).input(),
    );
  }
}

