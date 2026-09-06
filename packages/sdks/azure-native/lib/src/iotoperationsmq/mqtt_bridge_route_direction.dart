import 'package:pulumi/pulumi.dart' as pulumi;

/// Direction of the route.
enum MqttBridgeRouteDirection implements pulumi.PulumiEnum<String> {
  remoteToLocal("remote-to-local"),
  localToRemote("local-to-remote");

  const MqttBridgeRouteDirection(this.wireValue);
  @override
  final String wireValue;

  static MqttBridgeRouteDirection fromValue(String value) {
    for (final item in MqttBridgeRouteDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MqttBridgeRouteDirection value: $value');
  }
}
