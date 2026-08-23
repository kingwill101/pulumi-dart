/// The sku name.
enum IntegrationAccountSkuName {
  valueNotSpecified("NotSpecified"),
  valueFree("Free"),
  valueBasic("Basic"),
  valueStandard("Standard");

  const IntegrationAccountSkuName(this.wireValue);
  final String wireValue;

  static IntegrationAccountSkuName fromValue(String value) {
    for (final item in IntegrationAccountSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationAccountSkuName value: $value');
  }
}
