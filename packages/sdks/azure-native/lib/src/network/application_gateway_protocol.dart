import 'package:pulumi/pulumi.dart' as pulumi;

/// The protocol used for the probe.
enum ApplicationGatewayProtocol implements pulumi.PulumiEnum<String> {
  valueHttp("Http"),
  valueHttps("Https"),
  valueTcp("Tcp"),
  valueTls("Tls");

  const ApplicationGatewayProtocol(this.wireValue);
  @override
  final String wireValue;

  static ApplicationGatewayProtocol fromValue(String value) {
    for (final item in ApplicationGatewayProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewayProtocol value: $value');
  }
}
