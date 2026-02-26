// ignore_for_file: unused_element, unnecessary_cast

class GetTopicSchemaSetting {
  /// The encoding of messages validated against schema. Default value: "ENCODING_UNSPECIFIED" Possible values: ["ENCODING_UNSPECIFIED", "JSON", "BINARY"]
  final String encoding;

  /// The name of the schema that messages published should be
  /// validated against. Format is projects/{project}/schemas/{schema}.
  /// The value of this field will be _deleted-schema_
  /// if the schema has been deleted.
  final String schema;

  GetTopicSchemaSetting({
    required this.encoding,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encoding'] = encoding;
    map['schema'] = schema;
    return map;
  }

  factory GetTopicSchemaSetting.fromMap(Map<String, dynamic> map) {
    return GetTopicSchemaSetting(
      encoding: map['encoding'] as String,
      schema: map['schema'] as String,
    );
  }
}
