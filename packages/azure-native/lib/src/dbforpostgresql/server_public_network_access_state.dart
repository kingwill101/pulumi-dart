/// Indicates if public network access is enabled or not. This is only supported for servers that are not integrated into a virtual network which is owned and provided by customer when server is deployed.
enum ServerPublicNetworkAccessState {
  enabled("Enabled"),
  disabled("Disabled");

  const ServerPublicNetworkAccessState(this.value);
  final String value;

  static ServerPublicNetworkAccessState fromValue(String value) {
    for (final item in ServerPublicNetworkAccessState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerPublicNetworkAccessState value: $value');
  }
}

