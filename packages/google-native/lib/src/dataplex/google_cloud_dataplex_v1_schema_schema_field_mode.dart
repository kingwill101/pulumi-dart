/// Required. Additional field semantics.
enum GoogleCloudDataplexV1SchemaSchemaFieldMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  required("REQUIRED"),
  nullable("NULLABLE"),
  repeated("REPEATED");

  const GoogleCloudDataplexV1SchemaSchemaFieldMode(this.value);
  final String value;

  static GoogleCloudDataplexV1SchemaSchemaFieldMode fromValue(String value) {
    for (final item in GoogleCloudDataplexV1SchemaSchemaFieldMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDataplexV1SchemaSchemaFieldMode value: $value');
  }
}

