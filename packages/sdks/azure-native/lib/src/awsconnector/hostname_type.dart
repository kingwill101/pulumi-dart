/// Property value
enum HostnameType {
  ipName("ip-name"),
  resourceName("resource-name");

  const HostnameType(this.wireValue);
  final String wireValue;

  static HostnameType fromValue(String value) {
    for (final item in HostnameType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostnameType value: $value');
  }
}
