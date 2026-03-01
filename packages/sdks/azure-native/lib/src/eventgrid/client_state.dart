/// Indicates if the client is enabled or not. Default value is Enabled.
enum ClientState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ClientState(this.value);
  final String value;

  static ClientState fromValue(String value) {
    for (final item in ClientState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClientState value: $value');
  }
}

