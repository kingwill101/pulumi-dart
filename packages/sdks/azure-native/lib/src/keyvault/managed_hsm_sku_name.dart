/// SKU of the managed HSM Pool
enum ManagedHsmSkuName {
  valueStandardB1("Standard_B1"),
  valueCustomB32("Custom_B32"),
  valueCustomB6("Custom_B6"),
  valueCustomC42("Custom_C42"),
  valueCustomC10("Custom_C10");

  const ManagedHsmSkuName(this.wireValue);
  final String wireValue;

  static ManagedHsmSkuName fromValue(String value) {
    for (final item in ManagedHsmSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedHsmSkuName value: $value');
  }
}

