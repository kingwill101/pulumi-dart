/// Azure data catalog SKU.
enum SkuType {
  valueFree("Free"),
  valueStandard("Standard");

  const SkuType(this.wireValue);
  final String wireValue;

  static SkuType fromValue(String value) {
    for (final item in SkuType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuType value: $value');
  }
}

