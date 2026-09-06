import 'package:pulumi/pulumi.dart' as pulumi;

/// Sku of the storage associated with the resource
enum StorageSKU implements pulumi.PulumiEnum<String> {
  valueStandard("standard"),
  valueBasic("basic");

  const StorageSKU(this.wireValue);
  @override
  final String wireValue;

  static StorageSKU fromValue(String value) {
    for (final item in StorageSKU.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageSKU value: $value');
  }
}
