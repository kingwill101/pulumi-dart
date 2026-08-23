/// State of test endpoint auth.
enum TestEndpointAuthState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const TestEndpointAuthState(this.wireValue);
  final String wireValue;

  static TestEndpointAuthState fromValue(String value) {
    for (final item in TestEndpointAuthState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TestEndpointAuthState value: $value');
  }
}
