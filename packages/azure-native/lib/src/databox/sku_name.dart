/// The sku name.
enum SkuName {
  valueDataBox("DataBox"),
  valueDataBoxDisk("DataBoxDisk"),
  valueDataBoxHeavy("DataBoxHeavy"),
  valueDataBoxCustomerDisk("DataBoxCustomerDisk");

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

