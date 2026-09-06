import 'package:pulumi/pulumi.dart' as pulumi;

/// The protocol to use in test evaluation.
enum ConnectionMonitorTestConfigurationProtocol implements pulumi.PulumiEnum<String> {
  valueTcp("Tcp"),
  valueHttp("Http"),
  valueIcmp("Icmp");

  const ConnectionMonitorTestConfigurationProtocol(this.wireValue);
  @override
  final String wireValue;

  static ConnectionMonitorTestConfigurationProtocol fromValue(String value) {
    for (final item in ConnectionMonitorTestConfigurationProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionMonitorTestConfigurationProtocol value: $value');
  }
}
