/// The status of the schedule. Whether active or not. If inactive, the report's scheduled execution is paused.
enum StatusType {
  valueActive("Active"),
  valueInactive("Inactive");

  const StatusType(this.value);
  final String value;

  static StatusType fromValue(String value) {
    for (final item in StatusType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatusType value: $value');
  }
}

