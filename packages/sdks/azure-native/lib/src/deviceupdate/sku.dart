/// Device Update Sku
enum SKU {
  valueFree("Free"),
  valueStandard("Standard");

  const SKU(this.wireValue);
  final String wireValue;

  static SKU fromValue(String value) {
    for (final item in SKU.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SKU value: $value');
  }
}
