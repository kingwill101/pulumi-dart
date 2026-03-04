/// Indicates if the client is enabled or not. Default value is Enabled.
enum ClientState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ClientState(this.wireValue);
  final String wireValue;

  static ClientState fromValue(String value) {
    for (final item in ClientState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClientState value: $value');
  }
}
