/// Caching option for a data disk (i.e. None, ReadOnly, ReadWrite).
enum HostCachingOptions {
  none("None"),
  readOnly("ReadOnly"),
  readWrite("ReadWrite");

  const HostCachingOptions(this.wireValue);
  final String wireValue;

  static HostCachingOptions fromValue(String value) {
    for (final item in HostCachingOptions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostCachingOptions value: $value');
  }
}

