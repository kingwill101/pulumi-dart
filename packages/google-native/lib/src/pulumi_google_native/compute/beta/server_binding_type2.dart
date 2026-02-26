enum ServerBindingType2 {
  restartNodeOnAnyServer("RESTART_NODE_ON_ANY_SERVER"),
  restartNodeOnMinimalServers("RESTART_NODE_ON_MINIMAL_SERVERS"),
  serverBindingTypeUnspecified("SERVER_BINDING_TYPE_UNSPECIFIED");

  const ServerBindingType2(this.value);
  final String value;

  static ServerBindingType2 fromValue(String value) {
    for (final item in ServerBindingType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerBindingType2 value: $value');
  }
}
