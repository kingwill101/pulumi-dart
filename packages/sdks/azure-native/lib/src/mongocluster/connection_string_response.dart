// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Connection string for the mongo cluster
class ConnectionStringResponse {
  /// Value of the connection string
  final pulumi.Input<String> connectionString;
  /// Description of the connection string
  final pulumi.Input<String> description;
  /// Name of the connection string.
  final pulumi.Input<String> name;

  /// Creates a new [ConnectionStringResponse].
  /// [connectionString] Value of the connection string
  /// [description] Description of the connection string
  /// [name] Name of the connection string.
  ConnectionStringResponse({
    required this.connectionString,
    required this.description,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': connectionString,
      'description': description,
      'name': name,
    };
  }

  factory ConnectionStringResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionStringResponse(
      connectionString: pulumi.Input.fromValue(map['connectionString'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

