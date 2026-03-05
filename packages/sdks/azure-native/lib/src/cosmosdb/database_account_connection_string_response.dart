// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Connection string for the Cosmos DB account
class DatabaseAccountConnectionStringResponse {
  /// Value of the connection string
  final pulumi.Input<String> connectionString;
  /// Description of the connection string
  final pulumi.Input<String> description;
  /// Kind of the connection string key
  final pulumi.Input<String> keyKind;
  /// Type of the connection string
  final pulumi.Input<String> type;

  /// Creates a new [DatabaseAccountConnectionStringResponse].
  /// [connectionString] Value of the connection string
  /// [description] Description of the connection string
  /// [keyKind] Kind of the connection string key
  /// [type] Type of the connection string
  DatabaseAccountConnectionStringResponse({
    required this.connectionString,
    required this.description,
    required this.keyKind,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': connectionString,
      'description': description,
      'keyKind': keyKind,
      'type': type,
    };
  }

  factory DatabaseAccountConnectionStringResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseAccountConnectionStringResponse(
      connectionString: pulumi.Input.fromValue(map['connectionString'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      keyKind: pulumi.Input.fromValue(map['keyKind'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

