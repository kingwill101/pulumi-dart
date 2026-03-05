/// Variant of the CPU.
enum Variant {
  valueV6("v6"),
  valueV7("v7"),
  valueV8("v8");

  const Variant(this.wireValue);
  final String wireValue;

  static Variant fromValue(String value) {
    for (final item in Variant.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Variant value: $value');
  }
}

