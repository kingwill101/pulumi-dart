/// Target DNS type (would be used for migration)
enum DnsType {
  valueAzureDns("AzureDns"),
  valueDefaultDomainRegistrarDns("DefaultDomainRegistrarDns");

  const DnsType(this.wireValue);
  final String wireValue;

  static DnsType fromValue(String value) {
    for (final item in DnsType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DnsType value: $value');
  }
}

