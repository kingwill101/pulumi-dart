/// SKU family name
enum SkuFamily {
  valueA("A");

  const SkuFamily(this.wireValue);
  final String wireValue;

  static SkuFamily fromValue(String value) {
    for (final item in SkuFamily.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuFamily value: $value');
  }
}

