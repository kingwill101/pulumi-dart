/// Gets or sets the SKU name of the account.
enum SkuNameEnum {
  valueFree("Free"),
  valueBasic("Basic");

  const SkuNameEnum(this.wireValue);
  final String wireValue;

  static SkuNameEnum fromValue(String value) {
    for (final item in SkuNameEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuNameEnum value: $value');
  }
}

