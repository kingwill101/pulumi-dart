/// The name of the sku of this Bastion Host.
enum BastionHostSkuName {
  valueBasic("Basic"),
  valueStandard("Standard"),
  valueDeveloper("Developer"),
  valuePremium("Premium");

  const BastionHostSkuName(this.wireValue);
  final String wireValue;

  static BastionHostSkuName fromValue(String value) {
    for (final item in BastionHostSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BastionHostSkuName value: $value');
  }
}

