// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSchema.
class GetSchemaResult {
  /// The definition of the schema. This should contain a string representing the full definition of the schema that is a valid schema definition of the type specified in `type`.
  final String definition;

  /// Name of the schema. Format is `projects/{project}/schemas/{schema}`.
  final String name;

  /// The timestamp that the revision was created.
  final String revisionCreateTime;

  /// Immutable. The revision ID of the schema.
  final String revisionId;

  /// The type of the schema definition.
  final String type;

  /// Creates a new [GetSchemaResult].
  /// [definition] The definition of the schema. This should contain a string representing the full definition of the schema that is a valid schema definition of the type specified in `type`.
  /// [name] Name of the schema. Format is `projects/{project}/schemas/{schema}`.
  /// [revisionCreateTime] The timestamp that the revision was created.
  /// [revisionId] Immutable. The revision ID of the schema.
  /// [type] The type of the schema definition.
  GetSchemaResult({
    required this.definition,
    required this.name,
    required this.revisionCreateTime,
    required this.revisionId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['definition'] = definition;
    map['name'] = name;
    map['revisionCreateTime'] = revisionCreateTime;
    map['revisionId'] = revisionId;
    map['type'] = type;
    return map;
  }

  factory GetSchemaResult.fromMap(Map<String, dynamic> map) {
    return GetSchemaResult(
      definition: map['definition'] as String,
      name: map['name'] as String,
      revisionCreateTime: map['revisionCreateTime'] as String,
      revisionId: map['revisionId'] as String,
      type: map['type'] as String,
    );
  }
}
