/// The type of DNS zone to use.
enum DnsZoneType {
  public("Public"),
  private("Private");

  const DnsZoneType(this.wireValue);
  final String wireValue;

  static DnsZoneType fromValue(String value) {
    for (final item in DnsZoneType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DnsZoneType value: $value');
  }
}

