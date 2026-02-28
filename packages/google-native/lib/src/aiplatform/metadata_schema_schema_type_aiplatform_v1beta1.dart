/// The type of the MetadataSchema. This is a property that identifies which metadata types will use the MetadataSchema.
enum MetadataSchemaSchemaTypeAiplatformV1beta1 {
  metadataSchemaTypeUnspecified("METADATA_SCHEMA_TYPE_UNSPECIFIED"),
  artifactType("ARTIFACT_TYPE"),
  executionType("EXECUTION_TYPE"),
  contextType("CONTEXT_TYPE");

  const MetadataSchemaSchemaTypeAiplatformV1beta1(this.value);
  final String value;

  static MetadataSchemaSchemaTypeAiplatformV1beta1 fromValue(String value) {
    for (final item in MetadataSchemaSchemaTypeAiplatformV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown MetadataSchemaSchemaTypeAiplatformV1beta1 value: $value');
  }
}
