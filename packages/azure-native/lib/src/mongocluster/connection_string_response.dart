// ignore_for_file: unused_element, unnecessary_cast


/// Connection string for the mongo cluster
class ConnectionStringResponse {
  /// Value of the connection string
  final String connectionString;
  /// Description of the connection string
  final String description;
  /// Name of the connection string.
  final String name;

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
      connectionString: map['connectionString'] as String,
      description: map['description'] as String,
      name: map['name'] as String,
    );
  }
}

