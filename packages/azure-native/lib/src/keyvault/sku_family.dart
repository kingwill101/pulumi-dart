/// SKU family name
enum SkuFamily {
  valueA("A");

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

