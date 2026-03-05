/// Content is a JSON Schema. Allowed: JSON Schema/draft-7.
enum SourceSerializationFormat {
  json("Json");

  const SourceSerializationFormat(this.wireValue);
  final String wireValue;

  static SourceSerializationFormat fromValue(String value) {
    for (final item in SourceSerializationFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceSerializationFormat value: $value');
  }
}

