/// The sku name.
enum SkuName {
  valueDataBox("DataBox"),
  valueDataBoxDisk("DataBoxDisk"),
  valueDataBoxHeavy("DataBoxHeavy"),
  valueDataBoxCustomerDisk("DataBoxCustomerDisk");

  const SkuName(this.wireValue);
  final String wireValue;

  static SkuName fromValue(String value) {
    for (final item in SkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuName value: $value');
  }
}
