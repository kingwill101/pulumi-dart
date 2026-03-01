/// The name of the SKU.
enum SqlManagedInstanceSkuName {
  valueVCore("vCore");

  const SqlManagedInstanceSkuName(this.value);
  final String value;

  static SqlManagedInstanceSkuName fromValue(String value) {
    for (final item in SqlManagedInstanceSkuName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlManagedInstanceSkuName value: $value');
  }
}

