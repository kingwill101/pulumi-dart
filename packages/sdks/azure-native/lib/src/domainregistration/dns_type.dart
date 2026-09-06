import 'package:pulumi/pulumi.dart' as pulumi;

/// Target DNS type (would be used for migration)
enum DnsType implements pulumi.PulumiEnum<String> {
  valueAzureDns("AzureDns"),
  valueDefaultDomainRegistrarDns("DefaultDomainRegistrarDns");

  const DnsType(this.wireValue);
  @override
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
