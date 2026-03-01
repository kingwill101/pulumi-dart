/// Name of the Sku.
enum SkuType {
  valueDeveloper("Developer"),
  valueStandard("Standard"),
  valuePremium("Premium"),
  valueBasic("Basic"),
  valueConsumption("Consumption"),
  valueIsolated("Isolated");

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

