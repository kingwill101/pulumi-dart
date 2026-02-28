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
    final map = <String, dynamic>{};
    final schemaValue = schema;
    if (schemaValue != null) {
      map['schema'] = schemaValue;
    }
    map['table'] = table;
    return map;
  }

  factory StreamRuleSetObjectFilterSourceObjectIdentifierSpannerIdentifier.fromMap(
      Map<String, dynamic> map) {
    return StreamRuleSetObjectFilterSourceObjectIdentifierSpannerIdentifier(
      schema: map['schema'] == null ? null : map['schema'] as String,
      table: map['table'] as String,
    );
  }
}
