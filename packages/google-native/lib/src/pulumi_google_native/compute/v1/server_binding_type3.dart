enum ServerBindingType3 {
  restartNodeOnAnyServer("RESTART_NODE_ON_ANY_SERVER"),
  restartNodeOnMinimalServers("RESTART_NODE_ON_MINIMAL_SERVERS"),
  serverBindingTypeUnspecified("SERVER_BINDING_TYPE_UNSPECIFIED");

  const ServerBindingType3(this.value);
  final String value;

  static ServerBindingType3 fromValue(String value) {
    for (final item in ServerBindingType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerBindingType3 value: $value');
  }
}
