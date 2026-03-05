/// Access mode for storage
enum AccessMode {
  valueReadOnly("ReadOnly"),
  valueReadWrite("ReadWrite");

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

