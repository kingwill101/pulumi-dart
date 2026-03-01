/// The state of monitoring.
enum Status {
  valueInProgress("InProgress"),
  valueActive("Active"),
  valueFailed("Failed"),
  valueDeleting("Deleting");

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

