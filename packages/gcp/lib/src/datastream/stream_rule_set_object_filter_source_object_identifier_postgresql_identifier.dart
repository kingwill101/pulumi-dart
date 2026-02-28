// ignore_for_file: unused_element, unnecessary_cast


class StreamRuleSetObjectFilterSourceObjectIdentifierPostgresqlIdentifier {
  /// The schema name.
  final String schema;
  /// The table name.
  final String table;

  /// Creates a new [StreamRuleSetObjectFilterSourceObjectIdentifierPostgresqlIdentifier].
  /// [schema] The schema name.
  /// [table] The table name.
  StreamRuleSetObjectFilterSourceObjectIdentifierPostgresqlIdentifier({
    required this.schema,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schema': schema,
      'table': table,
    };
  }

  factory StreamRuleSetObjectFilterSourceObjectIdentifierPostgresqlIdentifier.fromMap(Map<String, dynamic> map) {
    return StreamRuleSetObjectFilterSourceObjectIdentifierPostgresqlIdentifier(
      schema: map['schema'] as String,
      table: map['table'] as String,
    );
  }
}

