enum ServerBindingType {
  restartNodeOnAnyServer("RESTART_NODE_ON_ANY_SERVER"),
  restartNodeOnMinimalServers("RESTART_NODE_ON_MINIMAL_SERVERS"),
  serverBindingTypeUnspecified("SERVER_BINDING_TYPE_UNSPECIFIED");

  const ServerBindingType(this.value);
  final String value;

  static ServerBindingType fromValue(String value) {
    for (final item in ServerBindingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerBindingType value: $value');
  }
}
