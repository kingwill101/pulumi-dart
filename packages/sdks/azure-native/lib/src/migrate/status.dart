/// Private link connection state.
enum Status {
  valueApproved("Approved"),
  valuePending("Pending"),
  valueRejected("Rejected"),
  valueDisconnected("Disconnected");

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

