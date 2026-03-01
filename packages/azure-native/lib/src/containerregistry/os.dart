/// The operating system type required for the run.
enum OS {
  valueWindows("Windows"),
  valueLinux("Linux");

  const OS(this.value);
  final String value;

  static OS fromValue(String value) {
    for (final item in OS.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OS value: $value');
  }
}

