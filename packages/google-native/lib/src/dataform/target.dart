// ignore_for_file: unused_element, unnecessary_cast


/// Represents an action identifier. If the action writes output, the output will be written to the referenced database object.
class Target {
  /// The action's database (Google Cloud project ID) .
  final String? database;
  /// The action's name, within `database` and `schema`.
  final String? name;
  /// The action's schema (BigQuery dataset ID), within `database`.
  final String? schema;

  /// Creates a new [Target].
  /// [database] The action's database (Google Cloud project ID) .
  /// [name] The action's name, within `database` and `schema`.
  /// [schema] The action's schema (BigQuery dataset ID), within `database`.
  Target({
    this.database,
    this.name,
    this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'name': ?name,
      'schema': ?schema,
    };
  }

  factory Target.fromMap(Map<String, dynamic> map) {
    return Target(
      database: map['database'] == null ? null : map['database'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      schema: map['schema'] == null ? null : map['schema'] as String,
    );
  }
}

