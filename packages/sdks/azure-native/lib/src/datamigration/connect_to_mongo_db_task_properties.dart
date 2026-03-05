// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_db_connection_info.dart';

/// Properties for the task that validates the connection to and provides information about a MongoDB server
class ConnectToMongoDbTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>>? clientData;
  /// Describes a connection to a MongoDB data source
  final pulumi.Input<MongoDbConnectionInfo>? input;
  /// Task type.
  /// Expected value is 'Connect.MongoDb'.
  final pulumi.Input<String> taskType;

  /// Creates a new [ConnectToMongoDbTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Describes a connection to a MongoDB data source
  /// [taskType] Task type.
  ConnectToMongoDbTaskProperties({
    this.clientData,
    this.input,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'input': ?pulumi.Input.mapOptionalInputValue<MongoDbConnectionInfo, Map<String, dynamic>>(input, (value) => value.toMap()),
      'taskType': taskType,
    };
  }

  factory ConnectToMongoDbTaskProperties.fromMap(Map<String, dynamic> map) {
    return ConnectToMongoDbTaskProperties(
      clientData: (() { final guardedValue = map['clientData']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MongoDbConnectionInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}

