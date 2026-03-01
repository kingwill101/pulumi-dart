/// Hostname type.
enum HostnameType {
  valueProxy("Proxy"),
  valuePortal("Portal"),
  valueManagement("Management"),
  valueScm("Scm"),
  valueDeveloperPortal("DeveloperPortal");

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

