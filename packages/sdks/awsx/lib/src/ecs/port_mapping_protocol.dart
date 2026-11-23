import 'package:pulumi/pulumi.dart' as pulumi;

enum PortMappingProtocol implements pulumi.PulumiEnum<String> {
  tCP("tcp"),
  uDP("udp");

  const PortMappingProtocol(this.wireValue);
  @override
  final String wireValue;

  static PortMappingProtocol fromValue(String value) {
    for (final item in PortMappingProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PortMappingProtocol value: $value');
  }
}
