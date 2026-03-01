/// The SKU family to use. Valid values: (C, P). (C = Basic/Standard, P = Premium).
enum SkuFamily {
  c("C"),
  p("P");

  const SkuFamily(this.value);
  final String value;

  static SkuFamily fromValue(String value) {
    for (final item in SkuFamily.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuFamily value: $value');
  }
}

