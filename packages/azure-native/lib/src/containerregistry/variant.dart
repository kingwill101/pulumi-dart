/// Variant of the CPU.
enum Variant {
  valueV6("v6"),
  valueV7("v7"),
  valueV8("v8");

  const Variant(this.value);
  final String value;

  static Variant fromValue(String value) {
    for (final item in Variant.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Variant value: $value');
  }
}

