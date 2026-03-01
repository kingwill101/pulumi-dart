/// Azure data catalog SKU.
enum SkuType {
  valueFree("Free"),
  valueStandard("Standard");

  const SkuType(this.value);
  final String value;

  static SkuType fromValue(String value) {
    for (final item in SkuType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuType value: $value');
  }
}

