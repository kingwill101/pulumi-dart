/// Whether a VM will get shutdown when it has idled for a period of time.
enum ShutdownOnIdleMode {
  valueNone("None"),
  valueUserAbsence("UserAbsence"),
  valueLowUsage("LowUsage");

  const ShutdownOnIdleMode(this.value);
  final String value;

  static ShutdownOnIdleMode fromValue(String value) {
    for (final item in ShutdownOnIdleMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShutdownOnIdleMode value: $value');
  }
}

