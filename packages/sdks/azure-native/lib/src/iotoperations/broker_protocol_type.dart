import 'package:pulumi/pulumi.dart' as pulumi;

/// Enable or disable websockets.
enum BrokerProtocolType implements pulumi.PulumiEnum<String> {
  mqtt("Mqtt"),
  webSockets("WebSockets");

  const BrokerProtocolType(this.wireValue);
  @override
  final String wireValue;

  static BrokerProtocolType fromValue(String value) {
    for (final item in BrokerProtocolType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BrokerProtocolType value: $value');
  }
}
