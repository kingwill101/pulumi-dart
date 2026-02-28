// ignore_for_file: unused_element, unnecessary_cast

class StreamRuleSetObjectFilterSourceObjectIdentifierMysqlIdentifier {
  /// The database name.
  final String database;

  /// The table name.
  final String table;

  /// Creates a new [StreamRuleSetObjectFilterSourceObjectIdentifierMysqlIdentifier].
  /// [database] The database name.
  /// [table] The table name.
  StreamRuleSetObjectFilterSourceObjectIdentifierMysqlIdentifier({
    required this.database,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['database'] = database;
    map['table'] = table;
    return map;
  }

  factory StreamRuleSetObjectFilterSourceObjectIdentifierMysqlIdentifier.fromMap(
      Map<String, dynamic> map) {
    return StreamRuleSetObjectFilterSourceObjectIdentifierMysqlIdentifier(
      database: map['database'] as String,
      table: map['table'] as String,
    );
  }
}
