/// The storage discovery sku
enum StorageDiscoverySku {
  standard("Standard"),
  free("Free");

  const StorageDiscoverySku(this.value);
  final String value;

  static StorageDiscoverySku fromValue(String value) {
    for (final item in StorageDiscoverySku.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageDiscoverySku value: $value');
  }
}

