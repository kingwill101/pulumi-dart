/// Gets or sets the sku name.
enum AccountSkuName {
  valueStandard("Standard"),
  valueFree("Free");

  const AccountSkuName(this.value);
  final String value;

  static AccountSkuName fromValue(String value) {
    for (final item in AccountSkuName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccountSkuName value: $value');
  }
}

