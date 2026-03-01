// ignore_for_file: unused_element, unnecessary_cast


class StreamRuleSetObjectFilterSourceObjectIdentifierSpannerIdentifier {
  /// The schema name.
  final String? schema;
  /// The table name.
  final String table;

  /// Creates a new [StreamRuleSetObjectFilterSourceObjectIdentifierSpannerIdentifier].
  /// [schema] The schema name.
  /// [table] The table name.
  StreamRuleSetObjectFilterSourceObjectIdentifierSpannerIdentifier({
    this.schema,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schema': ?schema,
      'table': table,
    };
  }

  factory StreamRuleSetObjectFilterSourceObjectIdentifierSpannerIdentifier.fromMap(Map<String, dynamic> map) {
    return StreamRuleSetObjectFilterSourceObjectIdentifierSpannerIdentifier(
      schema: map['schema'] == null ? null : map['schema'] as String,
      table: map['table'] as String,
    );
  }
}

