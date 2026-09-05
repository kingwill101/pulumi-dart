import 'package:pulumi/pulumi.dart' as pulumi;

enum ProtocolType implements pulumi.PulumiEnum<String> {
  all("all"),
  tCP("tcp"),
  uDP("udp"),
  iCMP("icmp");

  const ProtocolType(this.wireValue);
  @override
  final String wireValue;

  static ProtocolType fromValue(String value) {
    for (final item in ProtocolType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProtocolType value: $value');
  }
}
