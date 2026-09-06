// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_db_migration_settings.dart';

/// Properties for the task that migrates data between MongoDB data sources
class MigrateMongoDbTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>?>? clientData;
  /// Describes how a MongoDB data migration should be performed
  final pulumi.Input<MongoDbMigrationSettings?>? input;
  /// Task type.
  /// Expected value is 'Migrate.MongoDb'.
  final pulumi.Input<String> taskType;

  /// Creates a new [MigrateMongoDbTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Describes how a MongoDB data migration should be performed
  /// [taskType] Task type.
  const MigrateMongoDbTaskProperties({
    this.clientData,
    this.input,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'input': ?pulumi.Input.mapOptionalInputValue<MongoDbMigrationSettings, Map<String, dynamic>>(input, (value) => value.toMap()),
      'taskType': taskType,
    };
  }

  factory MigrateMongoDbTaskProperties.fromMap(Map<String, dynamic> map) {
    return MigrateMongoDbTaskProperties(
      clientData: (() { final guardedValue = map['clientData']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MongoDbMigrationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}
