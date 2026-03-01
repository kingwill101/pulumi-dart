/// Property value
enum StatusType {
  active("Active"),
  inactive("Inactive");

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

