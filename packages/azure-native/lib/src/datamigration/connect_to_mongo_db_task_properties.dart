// ignore_for_file: unused_element, unnecessary_cast

import 'mongo_db_connection_info.dart';

/// Properties for the task that validates the connection to and provides information about a MongoDB server
class ConnectToMongoDbTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Describes a connection to a MongoDB data source
  final MongoDbConnectionInfo? input;
  /// Task type.
  /// Expected value is 'Connect.MongoDb'.
  final String taskType;

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
      'input': ?input == null ? null : input!.toMap(),
      'taskType': taskType,
    };
  }

  factory ConnectToMongoDbTaskProperties.fromMap(Map<String, dynamic> map) {
    return ConnectToMongoDbTaskProperties(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      input: map['input'] == null ? null : MongoDbConnectionInfo.fromMap((map['input'] as Map).cast<String, dynamic>()),
      taskType: map['taskType'] as String,
    );
  }
}

