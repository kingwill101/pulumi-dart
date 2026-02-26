// ignore_for_file: unused_element, unnecessary_cast

class TopicSchemaSettings {
  /// The encoding of messages validated against schema.
  /// Default value is `ENCODING_UNSPECIFIED`.
  /// Possible values are: `ENCODING_UNSPECIFIED`, `JSON`, `BINARY`.
  final String? encoding;

  /// The name of the schema that messages published should be
  /// validated against. Format is projects/{project}/schemas/{schema}.
  /// The value of this field will be _deleted-schema_
  /// if the schema has been deleted.
  final String schema;

  TopicSchemaSettings({
    this.encoding,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encodingValue = encoding;
    if (encodingValue != null) {
      map['encoding'] = encodingValue;
    }
    map['schema'] = schema;
    return map;
  }

  factory TopicSchemaSettings.fromMap(Map<String, dynamic> map) {
    return TopicSchemaSettings(
      encoding: map['encoding'] == null ? null : map['encoding'] as String,
      schema: map['schema'] as String,
    );
  }
}
