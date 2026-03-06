// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Connection string for the mongo cluster
class ConnectionStringResponse {
  /// Value of the connection string
  final pulumi.Input<String> connectionString;
  /// Description of the connection string
  final pulumi.Input<String> description;

  /// Creates a new [ConnectionStringResponse].
  /// [connectionString] Value of the connection string
  /// [description] Description of the connection string
  const ConnectionStringResponse({
    required this.connectionString,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': connectionString,
      'description': description,
    };
  }

  factory ConnectionStringResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionStringResponse(
      connectionString: pulumi.Input.fromValue(map['connectionString'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
    );
  }
}

