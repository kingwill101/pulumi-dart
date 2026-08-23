/// Tells whether the cluster is Running or Stopped
enum Code {
  valueRunning("Running"),
  valueStopped("Stopped");

  const Code(this.wireValue);
  final String wireValue;

  static Code fromValue(String value) {
    for (final item in Code.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Code value: $value');
  }
}
