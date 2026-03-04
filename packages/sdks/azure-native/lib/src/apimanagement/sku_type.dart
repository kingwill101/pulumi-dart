/// Name of the Sku.
enum SkuType {
  valueDeveloper("Developer"),
  valueStandard("Standard"),
  valuePremium("Premium"),
  valueBasic("Basic"),
  valueConsumption("Consumption"),
  valueIsolated("Isolated");

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
