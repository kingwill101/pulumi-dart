/// Operating system of the cache node
enum OsType {
  windows("Windows"),
  linux("Linux"),
  eflow("Eflow");

  const OsType(this.value);
  final String value;

  static OsType fromValue(String value) {
    for (final item in OsType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OsType value: $value');
  }
}

