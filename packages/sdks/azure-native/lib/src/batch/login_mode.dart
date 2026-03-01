/// Specifies login mode for the user. The default value is Interactive.
enum LoginMode {
  batch("Batch"),
  interactive("Interactive");

  const LoginMode(this.value);
  final String value;

  static LoginMode fromValue(String value) {
    for (final item in LoginMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoginMode value: $value');
  }
}

