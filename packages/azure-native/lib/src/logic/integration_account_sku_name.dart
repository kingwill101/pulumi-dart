/// The sku name.
enum IntegrationAccountSkuName {
  valueNotSpecified("NotSpecified"),
  valueFree("Free"),
  valueBasic("Basic"),
  valueStandard("Standard");

  const IntegrationAccountSkuName(this.value);
  final String value;

  static IntegrationAccountSkuName fromValue(String value) {
    for (final item in IntegrationAccountSkuName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationAccountSkuName value: $value');
  }
}

