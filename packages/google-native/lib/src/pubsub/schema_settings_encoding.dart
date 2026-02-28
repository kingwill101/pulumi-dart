/// Optional. The encoding of messages validated against `schema`.
enum SchemaSettingsEncoding {
  encodingUnspecified("ENCODING_UNSPECIFIED"),
  json("JSON"),
  binary("BINARY");

  const SchemaSettingsEncoding(this.value);
  final String value;

  static SchemaSettingsEncoding fromValue(String value) {
    for (final item in SchemaSettingsEncoding.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchemaSettingsEncoding value: $value');
  }
}

