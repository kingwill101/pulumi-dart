/// mysql version support status.
enum SupportStatus {
  valueOutOfSupport("OutOfSupport"),
  valueExtended("Extended"),
  valueMainstream("Mainstream");

  const SupportStatus(this.wireValue);
  final String wireValue;

  static SupportStatus fromValue(String value) {
    for (final item in SupportStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SupportStatus value: $value');
  }
}

