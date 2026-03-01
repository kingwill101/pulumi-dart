// ignore_for_file: unused_element, unnecessary_cast

class StreamRuleSetObjectFilterSourceObjectIdentifierOracleIdentifier {
  /// The schema name.
  final String schema;

  /// The table name.
  final String table;

  /// Creates a new [StreamRuleSetObjectFilterSourceObjectIdentifierOracleIdentifier].
  /// [schema] The schema name.
  /// [table] The table name.
  StreamRuleSetObjectFilterSourceObjectIdentifierOracleIdentifier({
    required this.schema,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'schema': schema, 'table': table};
  }

  factory StreamRuleSetObjectFilterSourceObjectIdentifierOracleIdentifier.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamRuleSetObjectFilterSourceObjectIdentifierOracleIdentifier(
      schema: map['schema'] as String,
      table: map['table'] as String,
    );
  }
}
