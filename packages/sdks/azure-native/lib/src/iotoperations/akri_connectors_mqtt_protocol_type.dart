import 'package:pulumi/pulumi.dart' as pulumi;

/// The protocol to use for the connection. Currently only `mqtt` is supported.
enum AkriConnectorsMqttProtocolType implements pulumi.PulumiEnum<String> {
  mqtt("Mqtt");

  const AkriConnectorsMqttProtocolType(this.wireValue);
  @override
  final String wireValue;

  static AkriConnectorsMqttProtocolType fromValue(String value) {
    for (final item in AkriConnectorsMqttProtocolType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AkriConnectorsMqttProtocolType value: $value');
  }
}
