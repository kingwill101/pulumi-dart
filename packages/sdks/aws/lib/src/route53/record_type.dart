import 'package:pulumi/pulumi.dart' as pulumi;

enum RecordType implements pulumi.PulumiEnum<String> {
  valueA("A"),
  valueAAAA("AAAA"),
  valueCNAME("CNAME"),
  valueCAA("CAA"),
  valueMX("MX"),
  valueNAPTR("NAPTR"),
  valueNS("NS"),
  valuePTR("PTR"),
  valueSOA("SOA"),
  valueSPF("SPF"),
  valueSRV("SRV"),
  valueTXT("TXT");

  const RecordType(this.wireValue);
  @override
  final String wireValue;

  static RecordType fromValue(String value) {
    for (final item in RecordType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecordType value: $value');
  }
}
