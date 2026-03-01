/// The type of caching to enable for the disk.
enum CachingType {
  none("None"),
  readOnly("ReadOnly"),
  readWrite("ReadWrite");

  const CachingType(this.value);
  final String value;

  static CachingType fromValue(String value) {
    for (final item in CachingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CachingType value: $value');
  }
}

