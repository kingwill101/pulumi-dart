/// CPU architecture supported by an OS disk.
enum Architecture {
  x64("x64"),
  arm64("Arm64");

  const Architecture(this.value);
  final String value;

  static Architecture fromValue(String value) {
    for (final item in Architecture.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Architecture value: $value');
  }
}

