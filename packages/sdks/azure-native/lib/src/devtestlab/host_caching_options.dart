/// Caching option for a data disk (i.e. None, ReadOnly, ReadWrite).
enum HostCachingOptions {
  none("None"),
  readOnly("ReadOnly"),
  readWrite("ReadWrite");

  const HostCachingOptions(this.value);
  final String value;

  static HostCachingOptions fromValue(String value) {
    for (final item in HostCachingOptions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostCachingOptions value: $value');
  }
}

