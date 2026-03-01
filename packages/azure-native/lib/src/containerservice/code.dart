/// Tells whether the cluster is Running or Stopped
enum Code {
  valueRunning("Running"),
  valueStopped("Stopped");

  const Code(this.value);
  final String value;

  static Code fromValue(String value) {
    for (final item in Code.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Code value: $value');
  }
}

