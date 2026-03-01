/// Get or Set Kind property.
enum Kind {
  valueGen2("Gen2");

  const Kind(this.value);
  final String value;

  static Kind fromValue(String value) {
    for (final item in Kind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Kind value: $value');
  }
}

