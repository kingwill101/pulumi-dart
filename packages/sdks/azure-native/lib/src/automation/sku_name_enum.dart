/// Gets or sets the SKU name of the account.
enum SkuNameEnum {
  valueFree("Free"),
  valueBasic("Basic");

  const SkuNameEnum(this.value);
  final String value;

  static SkuNameEnum fromValue(String value) {
    for (final item in SkuNameEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuNameEnum value: $value');
  }
}

