/// Target DNS type (would be used for migration)
enum DnsType {
  valueAzureDns("AzureDns"),
  valueDefaultDomainRegistrarDns("DefaultDomainRegistrarDns");

  const DnsType(this.value);
  final String value;

  static DnsType fromValue(String value) {
    for (final item in DnsType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DnsType value: $value');
  }
}

