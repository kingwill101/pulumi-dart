/// SKU Family of the managed HSM Pool
enum ManagedHsmSkuFamily {
  valueB("B"),
  valueC("C");

  const ManagedHsmSkuFamily(this.value);
  final String value;

  static ManagedHsmSkuFamily fromValue(String value) {
    for (final item in ManagedHsmSkuFamily.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedHsmSkuFamily value: $value');
  }
}

