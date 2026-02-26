/// Specifies the output schema type. Schema type is required.
enum SchemaConfigSchemaType2 {
  schemaTypeUnspecified("SCHEMA_TYPE_UNSPECIFIED"),
  lossless("LOSSLESS"),
  analytics("ANALYTICS"),
  analyticsV2("ANALYTICS_V2");

  const SchemaConfigSchemaType2(this.value);
  final String value;

  static SchemaConfigSchemaType2 fromValue(String value) {
    for (final item in SchemaConfigSchemaType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchemaConfigSchemaType2 value: $value');
  }
}
