/// The type of Redis cache to deploy. Valid values: (Basic, Standard, Premium)
enum SkuName {
  basic("Basic"),
  standard("Standard"),
  premium("Premium");

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

