// ignore_for_file: unused_element, unnecessary_cast

class StreamRuleSetObjectFilterSourceObjectIdentifierSqlServerIdentifier {
  /// The schema name.
  final String schema;

  /// The table name.
  final String table;

  /// Creates a new [StreamRuleSetObjectFilterSourceObjectIdentifierSqlServerIdentifier].
  /// [schema] The schema name.
  /// [table] The table name.
  StreamRuleSetObjectFilterSourceObjectIdentifierSqlServerIdentifier({
    required this.schema,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'schema': schema, 'table': table};
  }

  factory StreamRuleSetObjectFilterSourceObjectIdentifierSqlServerIdentifier.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamRuleSetObjectFilterSourceObjectIdentifierSqlServerIdentifier(
      schema: map['schema'] as String,
      table: map['table'] as String,
    );
  }
}
