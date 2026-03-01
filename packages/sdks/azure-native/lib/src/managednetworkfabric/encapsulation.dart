/// Type of encapsulation.
enum Encapsulation {
  valueNone("None"),
  valueGRE("GRE");

  const Encapsulation(this.value);
  final String value;

  static Encapsulation fromValue(String value) {
    for (final item in Encapsulation.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Encapsulation value: $value');
  }
}

