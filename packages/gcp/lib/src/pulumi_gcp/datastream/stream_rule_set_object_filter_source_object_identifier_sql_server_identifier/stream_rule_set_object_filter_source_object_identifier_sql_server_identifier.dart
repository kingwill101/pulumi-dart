// ignore_for_file: unused_element, unnecessary_cast

class StreamRuleSetObjectFilterSourceObjectIdentifierSqlServerIdentifier {
  /// The schema name.
  final String schema;

  /// The table name.
  final String table;

  StreamRuleSetObjectFilterSourceObjectIdentifierSqlServerIdentifier({
    required this.schema,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schema'] = schema;
    map['table'] = table;
    return map;
  }

  factory StreamRuleSetObjectFilterSourceObjectIdentifierSqlServerIdentifier.fromMap(
      Map<String, dynamic> map) {
    return StreamRuleSetObjectFilterSourceObjectIdentifierSqlServerIdentifier(
      schema: map['schema'] as String,
      table: map['table'] as String,
    );
  }
}
