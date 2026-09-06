import 'package:pulumi/pulumi.dart' as pulumi;

/// The protocol to use for connecting with Brokers.
enum MqttProtocol implements pulumi.PulumiEnum<String> {
  v3("v3"),
  v5("v5");

  const MqttProtocol(this.wireValue);
  @override
  final String wireValue;

  static MqttProtocol fromValue(String value) {
    for (final item in MqttProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MqttProtocol value: $value');
  }
}
