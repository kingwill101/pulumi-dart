/// The allowed type DNS record types for this profile.
enum AllowedEndpointRecordType {
  domainName("DomainName"),
  iPv4Address("IPv4Address"),
  iPv6Address("IPv6Address"),
  any("Any");

  const AllowedEndpointRecordType(this.value);
  final String value;

  static AllowedEndpointRecordType fromValue(String value) {
    for (final item in AllowedEndpointRecordType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllowedEndpointRecordType value: $value');
  }
}

