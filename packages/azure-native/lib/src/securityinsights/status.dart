/// The status of the hunt.
enum Status {
  valueNew("New"),
  valueActive("Active"),
  valueClosed("Closed"),
  valueBacklog("Backlog"),
  valueApproved("Approved");

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

