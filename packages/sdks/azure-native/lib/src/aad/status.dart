/// Status for individual validator after running diagnostics.
enum Status {
  valueNone("None"),
  valueRunning("Running"),
  valueOK("OK"),
  valueFailure("Failure"),
  valueWarning("Warning"),
  valueSkipped("Skipped");

  const Status(this.value);
  final String value;

  static Status fromValue(String value) {
    for (final item in Status.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Status value: $value');
  }
}

