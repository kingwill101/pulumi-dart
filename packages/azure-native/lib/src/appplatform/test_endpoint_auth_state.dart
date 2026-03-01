/// State of test endpoint auth.
enum TestEndpointAuthState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const TestEndpointAuthState(this.value);
  final String value;

  static TestEndpointAuthState fromValue(String value) {
    for (final item in TestEndpointAuthState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TestEndpointAuthState value: $value');
  }
}

