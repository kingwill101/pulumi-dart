/// Specifies for what type of messages sampling settings should not apply.
enum AlwaysLog {
  valueAllErrors("allErrors");

  const AlwaysLog(this.value);
  final String value;

  static AlwaysLog fromValue(String value) {
    for (final item in AlwaysLog.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlwaysLog value: $value');
  }
}

