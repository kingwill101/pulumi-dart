/// Specifies for what type of messages sampling settings should not apply.
enum AlwaysLog {
  valueAllErrors("allErrors");

  const AlwaysLog(this.wireValue);
  final String wireValue;

  static AlwaysLog fromValue(String value) {
    for (final item in AlwaysLog.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlwaysLog value: $value');
  }
}
