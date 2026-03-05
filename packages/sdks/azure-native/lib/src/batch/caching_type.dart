/// The type of caching to enable for the disk.
enum CachingType {
  none("None"),
  readOnly("ReadOnly"),
  readWrite("ReadWrite");

  const CachingType(this.wireValue);
  final String wireValue;

  static CachingType fromValue(String value) {
    for (final item in CachingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CachingType value: $value');
  }
}

