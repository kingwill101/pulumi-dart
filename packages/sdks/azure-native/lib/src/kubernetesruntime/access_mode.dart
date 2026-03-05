/// Storage Class Access Mode
enum AccessMode {
  readWriteOnce("ReadWriteOnce"),
  readWriteMany("ReadWriteMany");

  const AccessMode(this.wireValue);
  final String wireValue;

  static AccessMode fromValue(String value) {
    for (final item in AccessMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessMode value: $value');
  }
}

