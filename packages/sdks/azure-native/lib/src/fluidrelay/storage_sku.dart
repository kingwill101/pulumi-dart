/// Sku of the storage associated with the resource
enum StorageSKU {
  valueStandard("standard"),
  valueBasic("basic");

  const StorageSKU(this.wireValue);
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
