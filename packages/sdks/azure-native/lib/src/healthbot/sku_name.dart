/// The name of the Azure Health Bot SKU
enum SkuName {
  valueF0("F0"),
  valueS1("S1"),
  valueC0("C0"),
  valuePES("PES"),
  valueC1("C1");

  const SkuName(this.wireValue);
  final String wireValue;

  static SkuName fromValue(String value) {
    for (final item in SkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuName value: $value');
  }
}
