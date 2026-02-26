/// The type of the MetadataSchema. This is a property that identifies which metadata types will use the MetadataSchema.
enum MetadataSchemaSchemaType2 {
  metadataSchemaTypeUnspecified("METADATA_SCHEMA_TYPE_UNSPECIFIED"),
  artifactType("ARTIFACT_TYPE"),
  executionType("EXECUTION_TYPE"),
  contextType("CONTEXT_TYPE");

  const MetadataSchemaSchemaType2(this.value);
  final String value;

  static MetadataSchemaSchemaType2 fromValue(String value) {
    for (final item in MetadataSchemaSchemaType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetadataSchemaSchemaType2 value: $value');
  }
}
