/// Status for individual validator after running diagnostics.
enum Status {
  valueNone("None"),
  valueRunning("Running"),
  valueOK("OK"),
  valueFailure("Failure"),
  valueWarning("Warning"),
  valueSkipped("Skipped");

  const Status(this.wireValue);
  final String wireValue;

  static Status fromValue(String value) {
    for (final item in Status.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Status value: $value');
  }
}
