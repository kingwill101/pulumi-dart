/// The name of the SKU.
enum SqlManagedInstanceSkuName {
  valueVCore("vCore");

  const SqlManagedInstanceSkuName(this.wireValue);
  final String wireValue;

  static SqlManagedInstanceSkuName fromValue(String value) {
    for (final item in SqlManagedInstanceSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlManagedInstanceSkuName value: $value');
  }
}

