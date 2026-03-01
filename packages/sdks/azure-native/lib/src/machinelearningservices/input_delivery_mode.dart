/// Input Asset Delivery Mode.
enum InputDeliveryMode {
  valueReadOnlyMount("ReadOnlyMount"),
  valueReadWriteMount("ReadWriteMount"),
  valueDownload("Download"),
  valueDirect("Direct"),
  valueEvalMount("EvalMount"),
  valueEvalDownload("EvalDownload");

  const InputDeliveryMode(this.value);
  final String value;

  static InputDeliveryMode fromValue(String value) {
    for (final item in InputDeliveryMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InputDeliveryMode value: $value');
  }
}

