enum StorageType {
  standard("standard"),
  gP2("gp2"),
  gP3("gp3"),
  iO1("io1");

  const StorageType(this.wireValue);
  final String wireValue;

  static StorageType fromValue(String value) {
    for (final item in StorageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageType value: $value');
  }
}
