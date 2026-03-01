/// The SKU name of the container registry. Required for registry creation.
enum SkuName {
  valueClassic("Classic"),
  valueBasic("Basic"),
  valueStandard("Standard"),
  valuePremium("Premium");

  const SkuName(this.value);
  final String value;

  static SkuName fromValue(String value) {
    for (final item in SkuName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuName value: $value');
  }
}

