/// The name of a managed cluster SKU.
enum ManagedClusterSKUName {
  valueBase("Base"),
  valueAutomatic("Automatic");

  const ManagedClusterSKUName(this.wireValue);
  final String wireValue;

  static ManagedClusterSKUName fromValue(String value) {
    for (final item in ManagedClusterSKUName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedClusterSKUName value: $value');
  }
}

