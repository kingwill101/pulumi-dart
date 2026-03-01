/// The name of the SKU.
enum AppSku {
  valueST0("ST0"),
  valueST1("ST1"),
  valueST2("ST2");

  const AppSku(this.value);
  final String value;

  static AppSku fromValue(String value) {
    for (final item in AppSku.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppSku value: $value');
  }
}

