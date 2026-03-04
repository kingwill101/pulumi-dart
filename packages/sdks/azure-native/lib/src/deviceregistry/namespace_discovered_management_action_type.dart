/// The type of the action.
enum NamespaceDiscoveredManagementActionType {
  call("Call"),
  read("Read"),
  write("Write");

  const NamespaceDiscoveredManagementActionType(this.wireValue);
  final String wireValue;

  static NamespaceDiscoveredManagementActionType fromValue(String value) {
    for (final item in NamespaceDiscoveredManagementActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NamespaceDiscoveredManagementActionType value: $value',
    );
  }
}
