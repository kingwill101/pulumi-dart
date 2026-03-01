/// The issue status
enum Status {
  new_("New"),
  inProgress("InProgress"),
  mitigated("Mitigated"),
  closed("Closed"),
  canceled("Canceled");

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

