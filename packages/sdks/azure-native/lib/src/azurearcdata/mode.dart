/// Mode of authentication in SqlServer.
enum Mode {
  valueMixed("Mixed"),
  valueWindows("Windows"),
  valueUndefined("Undefined");

  const Mode(this.value);
  final String value;

  static Mode fromValue(String value) {
    for (final item in Mode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Mode value: $value');
  }
}

