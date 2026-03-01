/// The type of the action.
enum ManagementActionType {
  call("Call"),
  read("Read"),
  write("Write");

  const ManagementActionType(this.value);
  final String value;

  static ManagementActionType fromValue(String value) {
    for (final item in ManagementActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagementActionType value: $value');
  }
}

