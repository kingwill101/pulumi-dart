/// Access mode for storage
enum AccessMode {
  valueReadOnly("ReadOnly"),
  valueReadWrite("ReadWrite");

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

