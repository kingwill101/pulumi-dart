/// The level at which the content needs to be cached.
enum CacheType {
  all("All");

  const CacheType(this.value);
  final String value;

  static CacheType fromValue(String value) {
    for (final item in CacheType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CacheType value: $value');
  }
}

