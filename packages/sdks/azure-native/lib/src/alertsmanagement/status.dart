/// The issue status
enum Status {
  new_("New"),
  inProgress("InProgress"),
  mitigated("Mitigated"),
  closed("Closed"),
  canceled("Canceled");

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
