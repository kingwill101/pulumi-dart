/// Type of encapsulation.
enum Encapsulation {
  valueNone("None"),
  valueGRE("GRE");

  const Encapsulation(this.wireValue);
  final String wireValue;

  static Encapsulation fromValue(String value) {
    for (final item in Encapsulation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Encapsulation value: $value');
  }
}

