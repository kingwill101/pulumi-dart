/// The host caching of the disk. Valid values are 'None', 'ReadOnly', and 'ReadWrite'
enum HostCaching {
  valueNone("None"),
  valueReadOnly("ReadOnly"),
  valueReadWrite("ReadWrite");

  const HostCaching(this.value);
  final String value;

  static HostCaching fromValue(String value) {
    for (final item in HostCaching.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostCaching value: $value');
  }
}

