/// CPU architecture supported by an OS disk.
enum Architecture {
  x64("x64"),
  arm64("Arm64");

  const Architecture(this.wireValue);
  final String wireValue;

  static Architecture fromValue(String value) {
    for (final item in Architecture.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Architecture value: $value');
  }
}
