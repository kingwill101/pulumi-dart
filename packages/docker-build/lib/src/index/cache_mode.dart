enum CacheMode {
  valueMin("min"),
  valueMax("max");

  const CacheMode(this.value);
  final String value;

  static CacheMode fromValue(String value) {
    for (final item in CacheMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CacheMode value: $value');
  }
}

