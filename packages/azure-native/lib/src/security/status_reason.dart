/// A description of why the `status` has its value
enum StatusReason {
  valueExpired("Expired"),
  valueUserRequested("UserRequested"),
  valueNewerRequestInitiated("NewerRequestInitiated");

  const StatusReason(this.value);
  final String value;

  static StatusReason fromValue(String value) {
    for (final item in StatusReason.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatusReason value: $value');
  }
}

