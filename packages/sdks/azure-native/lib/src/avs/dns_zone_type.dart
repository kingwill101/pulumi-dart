import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of DNS zone to use.
enum DnsZoneType implements pulumi.PulumiEnum<String> {
  public("Public"),
  private("Private");

  const DnsZoneType(this.wireValue);
  @override
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
