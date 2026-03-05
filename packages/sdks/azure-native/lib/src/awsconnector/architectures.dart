/// Architectures enum
enum Architectures {
  arm64("arm64"),
  x8664("x86_64");

  const Architectures(this.wireValue);
  final String wireValue;

  static Architectures fromValue(String value) {
    for (final item in Architectures.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Architectures value: $value');
  }
}

