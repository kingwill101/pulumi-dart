/// The state of monitoring.
enum Status {
  valueInProgress("InProgress"),
  valueActive("Active"),
  valueFailed("Failed"),
  valueDeleting("Deleting");

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
