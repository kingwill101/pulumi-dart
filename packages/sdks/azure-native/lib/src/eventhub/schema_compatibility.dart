enum SchemaCompatibility {
  valueNone("None"),
  valueBackward("Backward"),
  valueForward("Forward");

  const SchemaCompatibility(this.value);
  final String value;

  static SchemaCompatibility fromValue(String value) {
    for (final item in SchemaCompatibility.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchemaCompatibility value: $value');
  }
}

