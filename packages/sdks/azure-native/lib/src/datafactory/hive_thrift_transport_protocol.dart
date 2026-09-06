import 'package:pulumi/pulumi.dart' as pulumi;

/// The transport protocol to use in the Thrift layer.
enum HiveThriftTransportProtocol implements pulumi.PulumiEnum<String> {
  binary("Binary"),
  sASL("SASL"),
  hTTP("HTTP ");

  const HiveThriftTransportProtocol(this.wireValue);
  @override
  final String wireValue;

  static HiveThriftTransportProtocol fromValue(String value) {
    for (final item in HiveThriftTransportProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HiveThriftTransportProtocol value: $value');
  }
}
