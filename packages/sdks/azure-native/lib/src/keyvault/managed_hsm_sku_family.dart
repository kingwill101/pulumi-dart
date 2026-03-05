/// SKU Family of the managed HSM Pool
enum ManagedHsmSkuFamily {
  valueB("B"),
  valueC("C");

  const ManagedHsmSkuFamily(this.wireValue);
  final String wireValue;

  static ManagedHsmSkuFamily fromValue(String value) {
    for (final item in ManagedHsmSkuFamily.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedHsmSkuFamily value: $value');
  }
}

