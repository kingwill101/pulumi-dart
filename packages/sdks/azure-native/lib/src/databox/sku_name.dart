import 'package:pulumi/pulumi.dart' as pulumi;

/// The sku name.
enum SkuName implements pulumi.PulumiEnum<String> {
  valueDataBox("DataBox"),
  valueDataBoxDisk("DataBoxDisk"),
  valueDataBoxHeavy("DataBoxHeavy"),
  valueDataBoxCustomerDisk("DataBoxCustomerDisk");

  const SkuName(this.wireValue);
  @override
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
