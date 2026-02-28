/// Required. The type of field.
enum GoogleCloudDataplexV1SchemaSchemaFieldType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  boolean("BOOLEAN"),
  byte("BYTE"),
  int16("INT16"),
  int32("INT32"),
  int64("INT64"),
  float("FLOAT"),
  double("DOUBLE"),
  decimal("DECIMAL"),
  string("STRING"),
  binary("BINARY"),
  timestamp("TIMESTAMP"),
  date("DATE"),
  time("TIME"),
  record("RECORD"),
  null_("NULL");

  const GoogleCloudDataplexV1SchemaSchemaFieldType(this.value);
  final String value;

  static GoogleCloudDataplexV1SchemaSchemaFieldType fromValue(String value) {
    for (final item in GoogleCloudDataplexV1SchemaSchemaFieldType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDataplexV1SchemaSchemaFieldType value: $value');
  }
}

