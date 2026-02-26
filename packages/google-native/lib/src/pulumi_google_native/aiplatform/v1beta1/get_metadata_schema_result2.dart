// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getMetadataSchema.
class GetMetadataSchemaResult2 {
  /// Timestamp when this MetadataSchema was created.
  final String createTime;

  /// Description of the Metadata Schema
  final String description;

  /// The resource name of the MetadataSchema.
  final String name;

  /// The raw YAML string representation of the MetadataSchema. The combination of [MetadataSchema.version] and the schema name given by `title` in [MetadataSchema.schema] must be unique within a MetadataStore. The schema is defined as an OpenAPI 3.0.2 [MetadataSchema Object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.2.md#schemaObject)
  final String schema;

  /// The type of the MetadataSchema. This is a property that identifies which metadata types will use the MetadataSchema.
  final String schemaType;

  /// The version of the MetadataSchema. The version's format must match the following regular expression: `^[0-9]+.+.+$`, which would allow to order/compare different versions. Example: 1.0.0, 1.0.1, etc.
  final String schemaVersion;

  GetMetadataSchemaResult2({
    required this.createTime,
    required this.description,
    required this.name,
    required this.schema,
    required this.schemaType,
    required this.schemaVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['name'] = name;
    map['schema'] = schema;
    map['schemaType'] = schemaType;
    map['schemaVersion'] = schemaVersion;
    return map;
  }

  factory GetMetadataSchemaResult2.fromMap(Map<String, dynamic> map) {
    return GetMetadataSchemaResult2(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      name: map['name'] as String,
      schema: map['schema'] as String,
      schemaType: map['schemaType'] as String,
      schemaVersion: map['schemaVersion'] as String,
    );
  }
}
