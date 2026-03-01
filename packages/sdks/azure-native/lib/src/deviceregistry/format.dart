/// Format of the schema.
enum Format {
  jsonSchemaDraft7("JsonSchema/draft-07"),
  delta10("Delta/1.0");

  const Format(this.value);
  final String value;

  static Format fromValue(String value) {
    for (final item in Format.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Format value: $value');
  }
}

