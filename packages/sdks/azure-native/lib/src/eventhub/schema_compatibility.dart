enum SchemaCompatibility {
  valueNone("None"),
  valueBackward("Backward"),
  valueForward("Forward");

  const SchemaCompatibility(this.wireValue);
  final String wireValue;

  static SchemaCompatibility fromValue(String value) {
    for (final item in SchemaCompatibility.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchemaCompatibility value: $value');
  }
}
