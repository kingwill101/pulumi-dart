/// The status of the account in the organization.
enum Status {
  aCTIVE("ACTIVE"),
  pENDINGCLOSURE("PENDING_CLOSURE"),
  sUSPENDED("SUSPENDED");

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

