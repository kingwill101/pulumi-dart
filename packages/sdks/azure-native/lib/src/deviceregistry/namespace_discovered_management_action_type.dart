/// The type of the action.
enum NamespaceDiscoveredManagementActionType {
  call("Call"),
  read("Read"),
  write("Write");

  const NamespaceDiscoveredManagementActionType(this.value);
  final String value;

  static NamespaceDiscoveredManagementActionType fromValue(String value) {
    for (final item in NamespaceDiscoveredManagementActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NamespaceDiscoveredManagementActionType value: $value');
  }
}

