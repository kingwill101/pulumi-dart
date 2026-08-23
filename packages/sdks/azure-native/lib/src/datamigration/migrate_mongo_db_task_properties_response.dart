// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_misync_complete_command_properties_response.dart';
import 'mongo_db_collection_progress_response.dart';
import 'mongo_db_migration_settings_response.dart';
import 'odata_error_response.dart';

/// Properties for the task that migrates data between MongoDB data sources
class MigrateMongoDbTaskPropertiesResponse {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>>? clientData;
  /// Array of command properties.
  final pulumi.Input<List<MigrateMISyncCompleteCommandPropertiesResponse>> commands;
  /// Array of errors. This is ignored if submitted.
  final pulumi.Input<List<ODataErrorResponse>> errors;
  /// Describes how a MongoDB data migration should be performed
  final pulumi.Input<MongoDbMigrationSettingsResponse>? input;
  final pulumi.Input<List<MongoDbCollectionProgressResponse>> output;
  /// The state of the task. This is ignored if submitted.
  final pulumi.Input<String> state;
  /// Task type.
  /// Expected value is 'Migrate.MongoDb'.
  final pulumi.Input<String> taskType;

  /// Creates a new [MigrateMongoDbTaskPropertiesResponse].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [commands] Array of command properties.
  /// [errors] Array of errors. This is ignored if submitted.
  /// [input] Describes how a MongoDB data migration should be performed
  /// [output] Required.
  /// [state] The state of the task. This is ignored if submitted.
  /// [taskType] Task type.
  const MigrateMongoDbTaskPropertiesResponse({
    this.clientData,
    required this.commands,
    required this.errors,
    this.input,
    required this.output,
    required this.state,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'commands': pulumi.Input.mapInputValue<List<MigrateMISyncCompleteCommandPropertiesResponse>, List<Map<String, dynamic>>>(commands, (value) => pulumi.Input.encodeList<MigrateMISyncCompleteCommandPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'errors': pulumi.Input.mapInputValue<List<ODataErrorResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ODataErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'input': ?pulumi.Input.mapOptionalInputValue<MongoDbMigrationSettingsResponse, Map<String, dynamic>>(input, (value) => value.toMap()),
      'output': pulumi.Input.mapInputValue<List<MongoDbCollectionProgressResponse>, List<Map<String, dynamic>>>(output, (value) => pulumi.Input.encodeList<MongoDbCollectionProgressResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': state,
      'taskType': taskType,
    };
  }

  factory MigrateMongoDbTaskPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MigrateMongoDbTaskPropertiesResponse(
      clientData: (() { final guardedValue = map['clientData']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      commands: pulumi.Input.fromValue(pulumi.Input.decodeList<MigrateMISyncCompleteCommandPropertiesResponse>(map['commands']!, (value) => MigrateMISyncCompleteCommandPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))),
      errors: pulumi.Input.fromValue(pulumi.Input.decodeList<ODataErrorResponse>(map['errors']!, (value) => ODataErrorResponse.fromMap((value as Map).cast<String, dynamic>()))),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MongoDbMigrationSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      output: pulumi.Input.fromValue(pulumi.Input.decodeList<MongoDbCollectionProgressResponse>(map['output']!, (value) => MongoDbCollectionProgressResponse.fromMap((value as Map).cast<String, dynamic>()))),
      state: pulumi.Input.fromValue(map['state'] as String),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}
