import 'package:pulumi/pulumi.dart' as pulumi;

/// Protocol for remote connection.
enum MqttBridgeRemoteBrokerProtocol implements pulumi.PulumiEnum<String> {
  mqtt("mqtt"),
  webSocket("webSocket");

  const MqttBridgeRemoteBrokerProtocol(this.wireValue);
  @override
  final String wireValue;

  static MqttBridgeRemoteBrokerProtocol fromValue(String value) {
    for (final item in MqttBridgeRemoteBrokerProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MqttBridgeRemoteBrokerProtocol value: $value');
  }
}
