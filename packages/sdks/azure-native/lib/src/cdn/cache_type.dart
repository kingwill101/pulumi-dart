/// The level at which the content needs to be cached.
enum CacheType {
  all("All");

  const CacheType(this.wireValue);
  final String wireValue;

  static CacheType fromValue(String value) {
    for (final item in CacheType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CacheType value: $value');
  }
}
