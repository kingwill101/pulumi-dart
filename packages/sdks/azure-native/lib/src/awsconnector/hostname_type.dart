/// Property value
enum HostnameType {
  ipName("ip-name"),
  resourceName("resource-name");

  const HostnameType(this.value);
  final String value;

  static HostnameType fromValue(String value) {
    for (final item in HostnameType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostnameType value: $value');
  }
}

