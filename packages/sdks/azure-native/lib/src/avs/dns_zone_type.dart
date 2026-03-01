/// The type of DNS zone to use.
enum DnsZoneType {
  public("Public"),
  private("Private");

  const DnsZoneType(this.value);
  final String value;

  static DnsZoneType fromValue(String value) {
    for (final item in DnsZoneType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DnsZoneType value: $value');
  }
}

