import 'package:pulumi/pulumi.dart' as pulumi;

/// The MQTT QoS setting. Defaults to QoS 1.
enum MqttDestinationQos implements pulumi.PulumiEnum<String> {
  qos0("Qos0"),
  qos1("Qos1");

  const MqttDestinationQos(this.wireValue);
  @override
  final String wireValue;

  static MqttDestinationQos fromValue(String value) {
    for (final item in MqttDestinationQos.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MqttDestinationQos value: $value');
  }
}
