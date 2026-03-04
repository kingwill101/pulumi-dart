/// Mode of authentication in SqlServer.
enum Mode {
  valueMixed("Mixed"),
  valueWindows("Windows"),
  valueUndefined("Undefined");

  const Mode(this.wireValue);
  final String wireValue;

  static Mode fromValue(String value) {
    for (final item in Mode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Mode value: $value');
  }
}
