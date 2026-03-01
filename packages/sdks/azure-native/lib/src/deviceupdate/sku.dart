/// Device Update Sku
enum SKU {
  valueFree("Free"),
  valueStandard("Standard");

  const SKU(this.value);
  final String value;

  static SKU fromValue(String value) {
    for (final item in SKU.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SKU value: $value');
  }
}

