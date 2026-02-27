/// The schema file format along JSON data files.
enum JsonFileFormatSchemaFileFormatDatastreamV1alpha1 {
  schemaFileFormatUnspecified("SCHEMA_FILE_FORMAT_UNSPECIFIED"),
  noSchemaFile("NO_SCHEMA_FILE"),
  avroSchemaFile("AVRO_SCHEMA_FILE");

  const JsonFileFormatSchemaFileFormatDatastreamV1alpha1(this.value);
  final String value;

  static JsonFileFormatSchemaFileFormatDatastreamV1alpha1 fromValue(
      String value) {
    for (final item
        in JsonFileFormatSchemaFileFormatDatastreamV1alpha1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown JsonFileFormatSchemaFileFormatDatastreamV1alpha1 value: $value');
  }
}
