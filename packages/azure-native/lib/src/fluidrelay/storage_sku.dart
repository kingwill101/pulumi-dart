/// Sku of the storage associated with the resource
enum StorageSKU {
  valueStandard("standard"),
  valueBasic("basic");

  const StorageSKU(this.value);
  final String value;

  static StorageSKU fromValue(String value) {
    for (final item in StorageSKU.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageSKU value: $value');
  }
}

