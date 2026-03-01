/// The status of firmware scan.
enum Status {
  valuePending("Pending"),
  valueExtracting("Extracting"),
  valueAnalyzing("Analyzing"),
  valueReady("Ready"),
  valueError("Error");

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

