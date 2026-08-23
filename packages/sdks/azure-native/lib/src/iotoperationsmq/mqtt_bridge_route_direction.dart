/// Direction of the route.
enum MqttBridgeRouteDirection {
  remoteToLocal("remote-to-local"),
  localToRemote("local-to-remote");

  const MqttBridgeRouteDirection(this.wireValue);
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
