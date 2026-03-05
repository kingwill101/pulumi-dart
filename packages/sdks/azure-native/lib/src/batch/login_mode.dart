/// Specifies login mode for the user. The default value is Interactive.
enum LoginMode {
  batch("Batch"),
  interactive("Interactive");

  const LoginMode(this.wireValue);
  final String wireValue;

  static LoginMode fromValue(String value) {
    for (final item in LoginMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoginMode value: $value');
  }
}

