/// The schema file format along JSON data files.
enum JsonFileFormatSchemaFileFormat {
  schemaFileFormatUnspecified("SCHEMA_FILE_FORMAT_UNSPECIFIED"),
  noSchemaFile("NO_SCHEMA_FILE"),
  avroSchemaFile("AVRO_SCHEMA_FILE");

  const JsonFileFormatSchemaFileFormat(this.value);
  final String value;

  static JsonFileFormatSchemaFileFormat fromValue(String value) {
    for (final item in JsonFileFormatSchemaFileFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JsonFileFormatSchemaFileFormat value: $value');
  }
}
