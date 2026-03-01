// ignore_for_file: unused_element, unnecessary_cast


/// Connection string for the mongo cluster
class ConnectionStringResponse {
  /// Value of the connection string
  final String connectionString;
  /// Description of the connection string
  final String description;

  /// Creates a new [ConnectionStringResponse].
  /// [connectionString] Value of the connection string
  /// [description] Description of the connection string
  ConnectionStringResponse({
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
      connectionString: map['connectionString'] as String,
      description: map['description'] as String,
    );
  }
}

