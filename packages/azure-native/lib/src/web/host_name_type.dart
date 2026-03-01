/// Hostname type.
enum HostNameType {
  valueVerified("Verified"),
  valueManaged("Managed");

  const HostNameType(this.value);
  final String value;

  static HostNameType fromValue(String value) {
    for (final item in HostNameType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostNameType value: $value');
  }
}

