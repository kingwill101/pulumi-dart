/// The type of the action.
enum ManagementActionType {
  call("Call"),
  read("Read"),
  write("Write");

  const ManagementActionType(this.wireValue);
  final String wireValue;

  static ManagementActionType fromValue(String value) {
    for (final item in ManagementActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagementActionType value: $value');
  }
}
