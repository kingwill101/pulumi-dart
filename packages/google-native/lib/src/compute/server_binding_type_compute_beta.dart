enum ServerBindingTypeComputeBeta {
  restartNodeOnAnyServer("RESTART_NODE_ON_ANY_SERVER"),
  restartNodeOnMinimalServers("RESTART_NODE_ON_MINIMAL_SERVERS"),
  serverBindingTypeUnspecified("SERVER_BINDING_TYPE_UNSPECIFIED");

  const ServerBindingTypeComputeBeta(this.value);
  final String value;

  static ServerBindingTypeComputeBeta fromValue(String value) {
    for (final item in ServerBindingTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerBindingTypeComputeBeta value: $value');
  }
}

