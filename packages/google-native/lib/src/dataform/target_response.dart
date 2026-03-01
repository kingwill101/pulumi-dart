// ignore_for_file: unused_element, unnecessary_cast

/// Represents an action identifier. If the action writes output, the output will be written to the referenced database object.
class TargetResponse {
  /// The action's database (Google Cloud project ID) .
  final String database;

  /// The action's name, within `database` and `schema`.
  final String name;

  /// The action's schema (BigQuery dataset ID), within `database`.
  final String schema;

  /// Creates a new [TargetResponse].
  /// [database] The action's database (Google Cloud project ID) .
  /// [name] The action's name, within `database` and `schema`.
  /// [schema] The action's schema (BigQuery dataset ID), within `database`.
  TargetResponse({
    required this.database,
    required this.name,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'name': name,
      'schema': schema,
    };
  }

  factory TargetResponse.fromMap(Map<String, dynamic> map) {
    return TargetResponse(
      database: map['database'] as String,
      name: map['name'] as String,
      schema: map['schema'] as String,
    );
  }
}
