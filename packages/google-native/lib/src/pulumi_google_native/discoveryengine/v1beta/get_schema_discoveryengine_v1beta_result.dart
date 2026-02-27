// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSchema.
class GetSchemaDiscoveryengineV1betaResult {
  /// The JSON representation of the schema.
  final String jsonSchema;

  /// Immutable. The full resource name of the schema, in the format of `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  final String name;

  /// The structured representation of the schema.
  final Map<String, String> structSchema;

  GetSchemaDiscoveryengineV1betaResult({
    required this.jsonSchema,
    required this.name,
    required this.structSchema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jsonSchema'] = jsonSchema;
    map['name'] = name;
    map['structSchema'] = structSchema;
    return map;
  }

  factory GetSchemaDiscoveryengineV1betaResult.fromMap(
      Map<String, dynamic> map) {
    return GetSchemaDiscoveryengineV1betaResult(
      jsonSchema: map['jsonSchema'] as String,
      name: map['name'] as String,
      structSchema: (map['structSchema'] as Map).cast<String, String>(),
    );
  }
}
