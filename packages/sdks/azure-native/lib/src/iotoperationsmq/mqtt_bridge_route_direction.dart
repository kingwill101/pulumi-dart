/// Direction of the route.
enum MqttBridgeRouteDirection {
  remoteToLocal("remote-to-local"),
  localToRemote("local-to-remote");

  const MqttBridgeRouteDirection(this.value);
  final String value;

  static MqttBridgeRouteDirection fromValue(String value) {
    for (final item in MqttBridgeRouteDirection.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MqttBridgeRouteDirection value: $value');
  }
}

