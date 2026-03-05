/// Hostname type.
enum HostnameType {
  valueProxy("Proxy"),
  valuePortal("Portal"),
  valueManagement("Management"),
  valueScm("Scm"),
  valueDeveloperPortal("DeveloperPortal");

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

