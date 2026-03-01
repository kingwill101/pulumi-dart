/// mysql version support status.
enum SupportStatus {
  valueOutOfSupport("OutOfSupport"),
  valueExtended("Extended"),
  valueMainstream("Mainstream");

  const SupportStatus(this.value);
  final String value;

  static SupportStatus fromValue(String value) {
    for (final item in SupportStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SupportStatus value: $value');
  }
}

