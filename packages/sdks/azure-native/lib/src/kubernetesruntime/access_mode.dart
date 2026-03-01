/// Storage Class Access Mode
enum AccessMode {
  readWriteOnce("ReadWriteOnce"),
  readWriteMany("ReadWriteMany");

  const AccessMode(this.value);
  final String value;

  static AccessMode fromValue(String value) {
    for (final item in AccessMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessMode value: $value');
  }
}

