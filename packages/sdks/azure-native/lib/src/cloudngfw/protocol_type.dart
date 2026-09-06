import 'package:pulumi/pulumi.dart' as pulumi;

/// Protocol Type
enum ProtocolType implements pulumi.PulumiEnum<String> {
  valueTCP("TCP"),
  valueUDP("UDP");

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
