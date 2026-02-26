// ignore_for_file: unused_element, unnecessary_cast

/// Settings for validating messages published against a schema.
class SchemaSettingsResponse {
  /// Optional. The encoding of messages validated against `schema`.
  final String encoding;

  /// Optional. The minimum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against last_revision or any revision created before.
  final String firstRevisionId;

  /// Optional. The maximum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against first_revision or any revision created after.
  final String lastRevisionId;

  /// The name of the schema that messages published should be validated against. Format is `projects/{project}/schemas/{schema}`. The value of this field will be `_deleted-schema_` if the schema has been deleted.
  final String schema;

  SchemaSettingsResponse({
    required this.encoding,
    required this.firstRevisionId,
    required this.lastRevisionId,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encoding'] = encoding;
    map['firstRevisionId'] = firstRevisionId;
    map['lastRevisionId'] = lastRevisionId;
    map['schema'] = schema;
    return map;
  }

  factory SchemaSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SchemaSettingsResponse(
      encoding: map['encoding'] as String,
      firstRevisionId: map['firstRevisionId'] as String,
      lastRevisionId: map['lastRevisionId'] as String,
      schema: map['schema'] as String,
    );
  }
}
