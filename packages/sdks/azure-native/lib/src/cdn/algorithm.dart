/// Algorithm to use for URL signing
enum Algorithm {
  sHA256("SHA256");

  const Algorithm(this.value);
  final String value;

  static Algorithm fromValue(String value) {
    for (final item in Algorithm.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Algorithm value: $value');
  }
}

