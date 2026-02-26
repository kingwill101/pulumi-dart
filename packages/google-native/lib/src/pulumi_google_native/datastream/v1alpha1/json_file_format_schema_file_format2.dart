/// The schema file format along JSON data files.
enum JsonFileFormatSchemaFileFormat2 {
  schemaFileFormatUnspecified("SCHEMA_FILE_FORMAT_UNSPECIFIED"),
  noSchemaFile("NO_SCHEMA_FILE"),
  avroSchemaFile("AVRO_SCHEMA_FILE");

  const JsonFileFormatSchemaFileFormat2(this.value);
  final String value;

  static JsonFileFormatSchemaFileFormat2 fromValue(String value) {
    for (final item in JsonFileFormatSchemaFileFormat2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown JsonFileFormatSchemaFileFormat2 value: $value');
  }
}
