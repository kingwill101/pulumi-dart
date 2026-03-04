/// Property value
enum StatusType {
  active("Active"),
  inactive("Inactive");

  const StatusType(this.wireValue);
  final String wireValue;

  static StatusType fromValue(String value) {
    for (final item in StatusType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatusType value: $value');
  }
}
