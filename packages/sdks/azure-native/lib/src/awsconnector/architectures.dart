/// Architectures enum
enum Architectures {
  arm64("arm64"),
  x8664("x86_64");

  const Architectures(this.value);
  final String value;

  static Architectures fromValue(String value) {
    for (final item in Architectures.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Architectures value: $value');
  }
}

