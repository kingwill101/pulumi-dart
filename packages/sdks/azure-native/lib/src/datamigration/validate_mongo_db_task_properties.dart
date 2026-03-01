// ignore_for_file: unused_element, unnecessary_cast

import 'mongo_db_migration_settings.dart';

/// Properties for the task that validates a migration between MongoDB data sources
class ValidateMongoDbTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Describes how a MongoDB data migration should be performed
  final MongoDbMigrationSettings? input;
  /// Task type.
  /// Expected value is 'Validate.MongoDb'.
  final String taskType;

  /// Creates a new [ValidateMongoDbTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Describes how a MongoDB data migration should be performed
  /// [taskType] Task type.
  ValidateMongoDbTaskProperties({
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

  factory ValidateMongoDbTaskProperties.fromMap(Map<String, dynamic> map) {
    return ValidateMongoDbTaskProperties(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      input: map['input'] == null ? null : MongoDbMigrationSettings.fromMap((map['input'] as Map).cast<String, dynamic>()),
      taskType: map['taskType'] as String,
    );
  }
}

