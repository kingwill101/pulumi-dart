/// The name of a managed cluster SKU.
enum ManagedClusterSKUName {
  valueBase("Base"),
  valueAutomatic("Automatic");

  const ManagedClusterSKUName(this.value);
  final String value;

  static ManagedClusterSKUName fromValue(String value) {
    for (final item in ManagedClusterSKUName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedClusterSKUName value: $value');
  }
}

