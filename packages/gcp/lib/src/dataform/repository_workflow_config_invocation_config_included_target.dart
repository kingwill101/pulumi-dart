// ignore_for_file: unused_element, unnecessary_cast


class RepositoryWorkflowConfigInvocationConfigIncludedTarget {
  /// The action's database (Google Cloud project ID).
  final String? database;
  /// The action's name, within database and schema.
  final String? name;
  /// The action's schema (BigQuery dataset ID), within database.
  final String? schema;

  /// Creates a new [RepositoryWorkflowConfigInvocationConfigIncludedTarget].
  /// [database] The action's database (Google Cloud project ID).
  /// [name] The action's name, within database and schema.
  /// [schema] The action's schema (BigQuery dataset ID), within database.
  RepositoryWorkflowConfigInvocationConfigIncludedTarget({
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

  factory RepositoryWorkflowConfigInvocationConfigIncludedTarget.fromMap(Map<String, dynamic> map) {
    return RepositoryWorkflowConfigInvocationConfigIncludedTarget(
      database: map['database'] == null ? null : map['database'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      schema: map['schema'] == null ? null : map['schema'] as String,
    );
  }
}

